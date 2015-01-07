<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('Users_model','Users');
		$this->load->model('misc_model', 'misc');
	}

	public function index()
	{
		redirect('main');
	}

	public function login()
	{
		$this->load->view('frontend/t_header_view');
		$this->load->view('frontend/t_nav_view');
		$this->load->view('frontend/t_beginbody_view');

		$this->load->view('frontend/login_view');

		$this->load->view('frontend/t_footer_view');
	}
	
	public function loginyn($username, $password, $hdserial)
	{
		$check = $this->Users->checkuser($username, $password,false);
		if ($check != "notfound") {
			$userinfo = $this->Users->getUserInfo($username);
			$data = array(
				'uid' => $userinfo['uid'],
				'name' => $userinfo['username'],
				'email' => $userinfo['email'],
				'playername' => $userinfo['playername'],
				'prefix' => $userinfo['prefix'],
				'hdserial' => $userinfo['hdserial'],
				'prefer_country' => $userinfo['prefer_country'],
				'cdkey' => $userinfo['cdkey'],
				'status' => $userinfo['status'],
				'specialname' => "false",
				'role' => $userinfo['role'],
				'joindate' => $userinfo['joindate'],
				'logged' => true
			);
			$data['token'] = $this->Users->updateToken($data['uid']);
			$data['result'] = "success";
			echo json_encode($data);
		}
		else
		{
			echo json_encode(array('result'=>'Login Failed'));
		}
	}
	
	public function logintoken($token)
	{
		$userinfo = $this->Users->getUserInfoToken($token);

		if ($userinfo) {
			$data = array(
				'uid' => $userinfo['uid'],
				'username' => $userinfo['username'],
				'email' => $userinfo['email'],
				'playername' => $userinfo['playername'],
				'prefix' => $userinfo['prefix'],
				'hdserial' => $userinfo['hdserial'],
				'prefer_country' => $userinfo['prefer_country'],
				'cdkey' => $userinfo['cdkey'],
				'status' => $userinfo['status'],
				'role' => $userinfo['role'],
				'joindate' => $userinfo['joindate'],
				'logged' => true
			);

			// Log data
			$this->session->set_userdata($data);
			$this->misc->doLog('Logged In');

			redirect('member');
		}
		else
		{
			
		}
	}

	public function dologin()
	{
		# Load View
		$this->load->view('frontend/t_header_view');
		$this->load->view('frontend/t_nav_view');
		$this->load->view('frontend/t_beginbody_view');

		# Login Process
		$this->form_validation->set_rules('username', 'ชื่อผู้ใช้', 'required');
		$this->form_validation->set_rules('password', 'รหัสผ่าน', 'required');
		$this->form_validation->set_message('required', 'คุณต้องกรอก %s');
		// $this->form_validation->set_message('min_length', '%s จำเป็นต้องมีอักขระ 8 ตัว');
		// $this->form_validation->set_message('max_length', '%s จำเป็นต้องมีอักขระ 8 ตัว');
		// $this->form_validation->set_error_delimiters('<span style="color: red">', '</span>');
		if ($this->input->post('submit'))
		{
			$username = $this->input->post('username');
			$password = $this->input->post('password');
			if ($this->form_validation->run())
			{
				$check = $this->Users->checkuser($username, $password);
				switch ($check)
				{
					case 'admin':
						// Admin table ??
						$userinfo = $this->Users->getUserInfo($username);
						$data = array(
							'uid' => $userinfo['uid'],
							'username' => $userinfo['username'],
							'email' => $userinfo['email'],
							'playername' => $userinfo['playername'],
							'prefix' => $userinfo['prefix'],
							'hdserial' => $userinfo['hdserial'],
							'prefer_country' => $userinfo['prefer_country'],
							'cdkey' => $userinfo['cdkey'],
							'status' => $userinfo['status'],
							'role' => $userinfo['role'],
							'joindate' => $userinfo['joindate'],
							'logged' => true
						);

						// Log data
						$this->session->set_userdata($data);
						$this->misc->doLog('Logged In');

						redirect('admin');
						break;

					case 'player':
						$userinfo = $this->Users->getUserInfo($username);
						$data = array(
							'uid' => $userinfo['uid'],
							'username' => $userinfo['username'],
							'email' => $userinfo['email'],
							'playername' => $userinfo['playername'],
							'prefix' => $userinfo['prefix'],
							'hdserial' => $userinfo['hdserial'],
							'prefer_country' => $userinfo['prefer_country'],
							'cdkey' => $userinfo['cdkey'],
							'status' => $userinfo['status'],
							'role' => $userinfo['role'],
							'joindate' => $userinfo['joindate'],
							'logged' => true
						);

						// Log data
						$this->session->set_userdata($data);
						$this->misc->doLog('Logged In');

						redirect('member');
						break;

					case 'notfound':
						$this->misc->doLog('Trying to logging in to '.$username.' (wrong U/P)');
						$data['msg_error'] = 'ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง';
						// $this->session->set_flashdata('msg_error', 'ชื่อผู้ใช้หรือรหัสผ่านไม่ถูกต้อง');
						$this->load->view('frontend/login_view', $data);
						break;

					default:
						$this->misc->doLog('Logging in error ('.$check.')');
						$data['msg_error'] = 'Error';
						$this->load->view('frontend/login_view', $data);
				}
			} else {
				$data['msg_error'] = 'กรุณากรอกข้อมูลให้ครบ';
				$this->load->view('frontend/login_view', $data);
			}
		} else {
			redirect('auth/login');
		}
		$this->load->view('frontend/t_footer_view');
	}

	public function logout()
	{
		$this->misc->doLog('Logged Out');

		$this->session->sess_destroy();
		redirect('auth/login');
	}

	public function register()
	{
		# Load View
		$this->load->view('frontend/t_header_view');
		$this->load->view('frontend/t_nav_view');
		$this->load->view('frontend/t_beginbody_view');

		if ($this->input->post('submit'))
		{

			$this->form_validation->set_rules('username', 'ชื่อผู้ใช้', 'trim|required');
			$this->form_validation->set_rules('password', 'รหัสผ่าน', 'required|min_length[8]|max_length[8]');
			$this->form_validation->set_rules('passwordconfirm', 'ยืนยันรหัสผ่าน', 'required|min_length[8]|max_length[8]');
			//$this->form_validation->set_rules('prefix', 'ชื่อ', 'trim|max_length[4]');
			$this->form_validation->set_rules('playername', 'ชื่อผู้เล่น', 'trim|required');
			$this->form_validation->set_rules('prefer_country', 'ประเทศที่ชอบ', 'trim|required');
			$this->form_validation->set_message('required', 'คุณต้องกรอก %s');
			$this->form_validation->set_message('min_length', '%s จำเป็นต้องมีอักขระ 8 ตัว');
			$this->form_validation->set_message('max_length', '%s จำเป็นต้องมีอักขระ 8 ตัว');
			//$this->form_validation->set_error_delimiters('<span style="color: red">', '</span>');
			if ($this->form_validation->run())
			{
				# Form check completed
				$userData['username'] = $this->input->post('username');
				$userData['password'] = $this->Users->wol_apgar($this->input->post('password'));
				//$userData['prefix'] = $this->input->post('prefix');
				$userData['playername'] = $this->input->post('playername');
				$userData['prefer_country'] = $this->input->post('prefer_country');
				$userData['status'] = $this->input->post('status');
				$userData['role'] = "player";
				$userData['status'] = "validating";
				$userData['email'] = $this->input->post('email');
				$userData['joindate'] = date("Y-m-d");

				if ($this->input->post('password') != $this->input->post('passwordconfirm'))
				{
					$data['msg_error'] = 'รหัสผ่านไม่ตรงกัน';
					$this->load->view('frontend/register_view', $data);
				}
				else
				{
					$result = $this->Users->addUser($userData);
					if ($result==0)
					{
						# Added success
						$this->session->set_flashdata('msg_info',
							$userData['username'].' has been added.');
						$this->misc->doLog('Auth>Register:Added '.$userData['username'].' success');
						//$this->users();
						redirect('auth/login');
					} else {
						# Failed
						$this->session->set_flashdata('msg_error',
							'มีบางอย่างผิดพลาด ไม่สามารถเพิ่ม '.$userData['username'].' ได้<br>'.$this->misc->getErrorDesc($result,'user'));
						//$this->users();
						$this->misc->doLog('Auth>Register:Added '.$userData['username'].' failed:'.$result);
						redirect('auth/login');
					}
				}
			}
			else
			{

				$data['msg_error'] = 'กรุณากรอกข้อมูลให้ครบ';
				$this->load->view('frontend/register_view', $data);
			}
		}
		else
		{
			$this->load->view('frontend/register_view');
		}
		$this->load->view('frontend/t_footer_view');
	}

}

/* End of file auth.php */
/* Location: ./application/controllers/auth.php */