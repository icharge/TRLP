<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Users_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();

	}

	function checkUser($username, $password)
	{
		$cause = array(
			'username' => $username,
			'password' => $this->Md5Pwd($password)
			);
		$query = $this->db
			->limit(1)
			->select('role')
			->get_where('users', $cause);
		if ($query->num_rows() > 0) {
			$ret = $query->row_array()['role'];
			return $ret;
		} else {
			return "notfound";
		}
	}

	function checkUserName($username)
	{
		$cause['username'] = $username;
		$query = $this->db
			->limit(1)
			->select('username')
			->get_where('users', $cause);
		return $query->num_rows() > 0;
	}

	function checkPlayerName($playername)
	{
		$cause['playername'] = $playername;
		$query = $this->db
			->limit(1)
			->select('playername')
			->get_where('users', $cause);
		return $query->num_rows() > 0;
	}

	function checkPvpgnName($pvpgnname)
	{
		$cause['pvpgnname'] = $pvpgnname;
		$query = $this->db
			->limit(1)
			->select('pvpgnname')
			->get_where('users', $cause);
		return $query->num_rows() > 0;
	}

	function checkEmail($email)
	{
		$cause['email'] = $email;
		$query = $this->db
			->limit(1)
			->select('email')
			->get_where('users', $cause);
		return $query->num_rows() > 0;
	}

	function wol_apgar($in)
	{
		$in = str_split($in);
		$lookup = str_split("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789./");
		$ilen = sizeof($in);

		for ($i = 0; $i < $ilen; $i++)//<8
		{
			$left = ord($in[$i]);
			$right = (!isset($in[$ilen - $i]) ? 0 : ($i < $ilen ? ord($in[$ilen - $i]) : 0));
			$out[$i] = $lookup[(($left & 1) > 0 ? ($left << 1) & $right : $left ^ $right) & 63];
		}
		return implode($out);
	}

	function Md5Pwd($value)
	{
		$pass = $this->config->item('salt').$value;
		return md5($pass);
	}

	function getUserInfo($username)
	{
		$cause = array('username' => $username);
		$query = $this->db
			->limit(1)
			->get_where('users', $cause)
			->row_array();
		//die($this->db->last_query());
		return $query;
	}
	
	function getUserInfoToken($token)
	{
		$cause = array('token' => $token);
		$query = $this->db
			->limit(1)
			->get_where('users', $cause)
			->row_array();
		//die($this->db->last_query());
		return $query;
	}


	function getUserInfoById($id)
	{
		$cause = array('uid' => $id);
		$query = $this->db
			->limit(1)
			->get_where('users', $cause)
			->row_array();
		//die($this->db->last_query());
		return $query;
	}

	function getUserRoleById($UID)
	{
		$cause = array('uid'=>$UID);
		$result = $this->db->select('role')->get_where('users',$cause)->row_array();
		return $result['role'];
	}

	function UpdateTimeStamp($uid)
	{
		$userData['lastaccess'] = date("Y-m-d H:i:s");
		$query = $this->db->update('users', $userData, array('uid'=>$uid));
	}

	function _checkRole($allowedRole)
	{
		return (in_array($this->session->userdata('role'), $allowedRole)) ? true : false;
	}

	function _checkLogin()
	{
		return $this->session->userdata('logged') == true ? true : false;
	}

	function getUsersByGroup($group, $keyword='') //MUST CHANGE
	{
		switch ($group) {
			case 'admin':
				$cause = array('role' => 'admin');
				$query = $this->db
					->like("CONCAT_WS(username,email,playername,hdserial,ipaddress,status)",$keyword,'both')
					->get_where('users',$cause)
					->result_array();
				//die($this->db->last_query());
				return $query;
				break;

			case 'player':
				$cause = array('role' => 'player');
				$query = $this->db
					->like("CONCAT_WS(username,email,playername,hdserial,ipaddress,status)",$keyword,'both')
					->get_where('users',$cause)
					->result_array();
				//die($this->db->last_query());
				return $query;
				break;

			case 'validating':

				break;

			case 'banned':

				break;

			default:
				# code...
				break;
		}
	}

	function addUser($userData)
	{
		# Prepare data
		# Insert Users
		$query_user = $this->db->insert('users', $userData);
		$errno = $this->db->_error_number();
		// die(var_dump($errno));
		return $errno;
	}

	function updateUser($userData, $uid)
	{
		$query = $this->db->update('users', $userData, array('uid'=>$uid));
	}
	
	function updateToken($uid)
	{
		$token = md5(md5($uid.now()).now()).md5(date('Y-m-d'));
		$data['token'] = $token;
		$this->updateUser($data, $uid);
		return $token;
	}

	function countOnline($ch, $game = NULL) {
		/*select * from p2p_clients 
		 where  ch_id= '$ch_id' and time_out >= '$time_now' and member_game='$game' 
		 ORDER BY `ticket` ASC 
		 */

		$where = array(
			'ch_id' => $ch,
			'time_out >=' => time(),
		);
		if ($game !== NULL) $where['member_game'] = $game;
		$query = $this->db
			->select('member_user')
			->get_where('p2p_clients', $where);
		return $query->num_rows();
	}

	function P2PChannelList() {
		$query = $this->db
			->get('p2p_channel')
			->result_array();
		return $query;
	}

}

/* End of file users_model.php */
/* Location: ./application/models/users_model.php */