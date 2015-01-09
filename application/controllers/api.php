<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Api extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->model('users_model', 'Users');
        $this->load->model('misc_model', 'misc');
    }

    public function index()
    {
        echo "This is API for Thai RA2 Lovers";
    }

    public function getServerIp()
    {
        echo "27.254.84.111";
    }

    public function getchcount($ch,$game) {
        if ($game == "all") $game = NULL;
        echo $this->Users->countOnline($ch,$game);
    }

}

/* End of file api.php */
/* Location: ./application/controllers/api.php */