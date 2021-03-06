<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Play extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('users_model', 'Users');
		$this->load->model('misc_model', 'misc');

		// Permissions List for this Class
		$perm = array('admin', 'player');
		// Check
		if ($this->Users->_checkLogin())
		{
			if ( ! $this->Users->_checkRole($perm))
			{
				$this->misc->doLog('Insufficient permission');
				redirect('main');
			}
		} else {
			$this->misc->doLog('Not logged in : Member area');
			redirect('auth/login');
		}
	}

	public function index()
	{
		$this->load->view('member/t_header_view');
		$this->load->view('member/t_nav_view');
		$this->load->view('member/t_beginbody_view');
		$this->load->view('member/t_sidebar_view');

		$data['ChList'] = $this->Users->P2PChannelList();

		$this->load->view('member/play_view', $data);


		$this->load->view('member/t_footer_view');
		$this->misc->doLog('Member:Play');
	}

}

/* End of file play.php */
/* Location: ./application/controllers/play.php */