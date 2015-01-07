<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Users extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('users_model', 'Users');
		$this->load->model('misc_model', 'misc');

		// Permissions List for this Class
		$perm = array('admin');
		// Check
		if ($this->Users->_checkLogin())
		{
			if ( ! $this->Users->_checkRole($perm)) 
			{
				$this->misc->doLog('Insufficient permission : Users management');
				redirect('main');
			}
		} else {
			$this->misc->doLog('Not logged in : Users management');
			redirect('auth/login');
		}
	}

	public function index()
	{
		$this->viewgroup();

	}

	function viewgroup($group='')
	{
		$this->load->view('admin/t_header_view');
		$this->load->view('admin/t_nav_view');
		$this->load->view('admin/t_beginbody_view');
		$this->load->view('admin/t_sidebar_view');

		$this->session->set_flashdata('noAnim', true);
		if ($group=='') $group="all";
		$data['group'] = $group;
		if ($group=='all' || $group=='admin')
			$data['adminlist'] = $this->Users->getUsersByGroup('admin',$this->input->get('q'));
		if ($group=='all' || $group=='player')
			$data['playerlist'] = $this->Users->getUsersByGroup('player',$this->input->get('q'));
		if ($group=='all' || $group=='validate')
			$data['validatelist'] = $this->Users->getUsersByGroup('validate',$this->input->get('q'));
		if ($group=='all' || $group=='banned')
			$data['bannedlist'] = $this->Users->getUsersByGroup('banned',$this->input->get('q'));
		$this->load->view('admin/users_view',$data);

		$this->load->view('admin/t_footer_view');
		if($this->input->get('q')=="") $this->misc->doLog('Admin>Users>View:Group='.$group);
		else
			$this->misc->doLog('Admin>Users>Search:keyword='.$this->input->get('q').' And Group='.$group);
	}

	function adduser($group='')
	{
		$this->load->view('admin/t_header_view');
		$this->load->view('admin/t_nav_view');
		$this->load->view('admin/t_beginbody_view');
		$this->load->view('admin/t_sidebar_view');

		if ($this->input->post('submit'))
		{
			# on Submit
			switch ($group) {
				case 'admin':
					$data['ptitle'] = "Administrator";
					break;

				case 'player':
					$data['ptitle'] = "Player";
					break;

				default:
					# code...
					break;
			}
			$this->form_validation->set_rules('username', 'ชื่อผู้ใช้', 'trim|required');
			$this->form_validation->set_rules('password', 'รหัสผ่าน', 'required|min_length[8]|max_length[8]');
			$this->form_validation->set_rules('passwordconfirm', 'ยืนยันรหัสผ่าน', 'required|min_length[8]|max_length[8]');
			$this->form_validation->set_rules('prefix', 'ชื่อ', 'trim|max_length[4]');
			$this->form_validation->set_rules('playername', 'ชื่อผู้เล่น', 'trim|required');
			$this->form_validation->set_rules('prefer_country', 'ประเทศที่ชอบ', 'trim|required');
			$this->form_validation->set_rules('status', 'สถานะ', 'trim|required');
			$this->form_validation->set_rules('role', 'fieldlabel', 'trim|required|min_length[5]|max_length[12]|xss_clean');
			$this->form_validation->set_message('required', 'คุณต้องกรอก %s');
			$this->form_validation->set_message('min_length', '%s จำเป็นต้องมีอักขระ 8 ตัว');
			$this->form_validation->set_message('max_length', '%s จำเป็นต้องมีอักขระ 8 ตัว');
			//$this->form_validation->set_error_delimiters('<span style="color: red">', '</span>');
			if ($this->form_validation->run())
			{
				# Form check completed
				$userData['username'] = $this->input->post('username');
				$userData['password'] = $this->Users->wol_apgar($this->input->post('password'));
				$userData['prefix'] = $this->input->post('prefix');
				$userData['playername'] = $this->input->post('playername');
				$userData['prefer_country'] = $this->input->post('prefer_country');
				$userData['status'] = $this->input->post('status');
				$userData['role'] = $group;
				$userData['email'] = $this->input->post('email');
				$userData['joindate'] = date("Y-m-d");
				
				if ($this->input->post('password') != $this->input->post('passwordconfirm'))
				{
					$data['msg_error'] = 'รหัสผ่านไม่ตรงกัน';
					$this->load->view('admin/adduser_view', $data);
				}
				else
				{
					$result = $this->Users->addUser($userData);
					if ($result==0)
					{
						# Added success
						$this->session->set_flashdata('msg_info', 
							$userData['username'].' has been added.');
						$this->misc->doLog('Admin>Users:Added '.$userData['username'].' success');
						//$this->users();
						redirect('admin/users');
					} else {
						# Failed
						$this->session->set_flashdata('msg_error', 
							'มีบางอย่างผิดพลาด ไม่สามารถเพิ่ม '.$userData['username'].' ได้<br>'.$this->misc->getErrorDesc($result,'user'));
						//$this->users();
						$this->misc->doLog('Admin>Users:Added '.$userData['username'].' failed:'.$result);
						redirect('admin/users');
					}
				}
			}
			else
			{
				
				$data['msg_error'] = 'กรุณากรอกข้อมูลให้ครบ';
				$this->load->view('admin/adduser_view', $data);
			}

		} else {
			# Add data
			switch ($group) {
				case 'admin':
					$data['ptitle'] = "Administrator";
					$this->load->view('admin/adduser_view', $data);
					break;

				case 'player':
					$data['ptitle'] = "Player";
					$this->load->view('admin/adduser_view', $data);
					break;

				default:
					# code...
					break;
			}
			$this->misc->doLog('Admin>Users>Add:'.$group);
		}
		$this->load->view('admin/t_footer_view');
	}

	function view($uid)
	{
		$this->load->view('admin/t_header_view');
		$this->load->view('admin/t_nav_view');
		$this->load->view('admin/t_beginbody_view');
		$this->load->view('admin/t_sidebar_view');
		
		if ($this->input->post('submit'))
		{
			# on Submit
			$this->form_validation->set_rules('username', 'ชื่อผู้ใช้', 'trim|required');
			$this->form_validation->set_rules('password', 'รหัสผ่าน', 'trim|min_length[8]|max_length[8]');
			$this->form_validation->set_rules('passwordconfirm', 'ยืนยันรหัสผ่าน', 'trim|min_length[8]|max_length[8]');
			$this->form_validation->set_rules('prefix', 'ชื่อ', 'trim|max_length[4]');
			$this->form_validation->set_rules('playername', 'ชื่อผู้เล่น', 'trim|required');
			$this->form_validation->set_rules('prefer_country', 'ประเทศที่ชอบ', 'trim|required');
			$this->form_validation->set_rules('status', 'สถานะ', 'trim|required');
			$this->form_validation->set_rules('role', 'fieldlabel', 'trim|required|xss_clean');
			$this->form_validation->set_message('required', 'คุณต้องกรอก %s');
			$this->form_validation->set_message('min_length', '%s จำเป็นต้องมีอักขระ 8 ตัว');
			$this->form_validation->set_message('max_length', '%s จำเป็นต้องมีอักขระ 8 ตัว');
			//$this->form_validation->set_error_delimiters('<span style="color: red">', '</span>');
			$userData = $this->Users->getUserInfoById($uid);
			$userData['username'] = $this->input->post('username');
			if($this->input->post('password') != "") $userData['password'] = $this->Users->wol_apgar($this->input->post('password'));
			$userData['prefix'] = $this->input->post('prefix');
			$userData['playername'] = $this->input->post('playername');
			$userData['prefer_country'] = $this->input->post('prefer_country');
			$userData['status'] = $this->input->post('status');
			$userData['role'] = $this->input->post('role');
			$userData['email'] = $this->input->post('email');
			$userData['joindate'] = date("Y-m-d");
			$data['userData'] = $userData;

			if ($this->form_validation->run())
			{
				# Form check completed
				
				if (($this->input->post('password') != "" and $this->input->post('passwordconfirm') != "") and
						$this->input->post('password') != $this->input->post('passwordconfirm'))
				{
					$data['msg_error'] = 'รหัสผ่านไม่ตรงกัน';
					$this->load->view('admin/edituser_view', $data);
				}
				else
				{
					$result = $this->Users->updateUser($userData, $uid);
					if ($result==0)
					{
						# Added success
						$this->session->set_flashdata('msg_info', 
							'Updated '.$userData['username'].' .');
						$this->misc->doLog('Admin>Users>Edit:'.$uid.' '.$userData['username'].' success');
						//$this->users();
						redirect('admin/users');
					} else {
						# Failed
						$this->session->set_flashdata('msg_error', 
							'มีบางอย่างผิดพลาด ไม่สามารถเพิ่ม '.$userData['username'].' ได้<br>'.$this->misc->getErrorDesc($result,'user'));
						//$this->users();
						$this->misc->doLog('Admin>Users>Edit:'.$uid.' '.$userData['username'].' failed:'.$result);
						redirect('admin/users');
					}
				}
			}
			else
			{
				
				$data['msg_error'] = 'กรุณากรอกข้อมูลให้ครบ';
				$this->load->view('admin/edituser_view', $data);
			}
		} else {

			$data['userData'] = $this->Users->getUserInfoById($uid);
			//die(var_dump($data));
			$this->load->view('admin/edituser_view', $data);
			$this->misc->doLog('Admin>Users>View:'.$uid.' '.$data['userData']['username']);
			$this->load->view('admin/t_footer_view');
		}
	}
}

/* End of file users.php */
/* Location: ./application/controllers/users.php */