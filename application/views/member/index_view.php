<!-- Begin content -->
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">ข้อมูลส่วนตัว</h3>
		</div>
		<div class="panel-body">
			<dl class="dl-horizontal">
				<dt>ชื่อผู้ใช้</dt>
				<dd><?=$this->session->userdata('username')?></dd>
				<dt>ชื่อในเกม</dt>
				<dd><?=$this->session->userdata('playername')?></dd>
				<dt>อีเมล์</dt>
				<dd><?=$this->session->userdata('email')?></dd>
				<dt>CDKEY/Serial</dt>
				<dd><?=$this->session->userdata('cdkey')?></dd>
				<dt>วันที่ลงทะเบียน</dt>
				<dd><?=$this->session->userdata('joindate')?></dd>
			</dl>
		</div>
		<div class="panel-footer text-right">
			<a class="btn btn-primary disabled" >แก้ไข</a>
		</div>
	</div>

</div>
<!-- End content -->