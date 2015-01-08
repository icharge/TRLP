<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Misc_model extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();
	}

	function getClassName()
	{
		return $this->router->class;
	}

	function getMethodName()
	{
		return $this->router->method;
	}

	function listActive($page='')
	{
		if ($page == $this->getMethodName())
		{
			return ' class="active"';
		} else {
			return "";
		}
	}

	function listCActive($page='')
	{
		if ($page == $this->getClassName())
		{
			return ' class="active"';
		} else {
			return "";
		}
	}

	function btnActive($compare1,$compare2,$classAttr='btn btn-default')
	{
		if ($compare1 == $compare2)
		{
			return $classAttr . " active";
		} else {
			return $classAttr;
		}
	}

	function getRoleText($strRole)
	{
		switch ($strRole) {
			case 'admin':
				return "Administrator";
				break;

			case 'player':
				return "Player";
				break;

			default:
				return "Player";
				break;
		}
	}

	function getRoleTextTh($strRole)
	{
		switch ($strRole) {
			case 'admin':
				return "ผู้ดูแลระบบ";
				break;
				
			case 'player':
				return "ผู้เล่น";
				break;

			default:
				return "ผู้เล่น";
				break;
		}
	}

	function getShortText($str,$len=100)
	{
		if (strlen($str) > $len)
		{
			return mb_substr($str, 0, $len, 'UTF-8').' ...';
		}
		else
		{
			return $str;
		}
	}


	function getHref($uri = '')
	{
		if ( ! is_array($uri))
		{
			$site_url = ( ! preg_match('!^\w+://! i', $uri)) ? site_url($uri) : $uri;
		}
		else
		{
			$site_url = site_url($uri);
		}
		return $site_url;
	}

	function getErrorDesc($errno,$mode='')
	{
		switch ($errno) {
			case 1062:
				if ($mode=="user")
					return "ชื่อผู้ใช้มีอยู่แล้ว ไม่สามารถซ้ำได้";
				else
					return "ข้อมูลซ้ำ";
				break;
			
			default:
				return "";
				break;
		}
	}


	function doLog($action,$uid='')
	{
		$logData = array(
			'uid' => ($uid!='')?$uid:($this->session->userdata('uid')!="")?$this->session->userdata('uid'):'-1',
			'action' => $action,
			'ipaddress' => $_SERVER['REMOTE_ADDR'],
			'iphostname' => GetHostByName($_SERVER['REMOTE_ADDR']),
			'iplocal' => isset($_SERVER['HTTP_X_FORWARDED_FOR'])?$_SERVER['HTTP_X_FORWARDED_FOR']:'',
			'useragent' => $this->input->user_agent()
		);
		$this->db->insert('log_usage', $logData);
	}

	function startsWith($haystack, $needle) {
		// search backwards starting from haystack length characters from the end
		return $needle === "" || strrpos($haystack, $needle, -strlen($haystack)) !== FALSE;
	}
	function endsWith($haystack, $needle) {
		// search forward starting from end minus needle length characters
		return $needle === "" || strpos($haystack, $needle, strlen($haystack) - strlen($needle)) !== FALSE;
	}

	function YuriNetAgent()
	{
		return $this->startsWith(strtolower($this->input->user_agent()), 'yurinet');
	}

}

/* End of file misc.php */
/* Location: ./application/models/misc.php */