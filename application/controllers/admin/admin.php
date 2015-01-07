<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Admin extends CI_Controller {

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
				$this->misc->doLog('Insufficient permission : Admin Dashboard');
				redirect('main');
			}
		} else {
			$this->misc->doLog('Not logged in : Admin Dashboard');
			redirect('auth/login');
		}
		
	}

	public function index()
	{
		$this->load->view('admin/t_header_view');
		$this->load->view('admin/t_nav_view');
		$this->load->view('admin/t_beginbody_view');
		$this->load->view('admin/t_sidebar_view');
		$this->load->view('admin/dashboard_view');
		$this->load->view('admin/t_footer_view');
		$this->misc->doLog('Admin:Dashboard');
	}

}

/* End of file admin.php */
/* Location: ./application/controllers/admin.php */