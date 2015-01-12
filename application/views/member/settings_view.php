<!-- Begin content -->
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	<h2>ตั้งค่าสำหรับเกม</h2>
	<div class="row">
		<div class="col-sm-4">
			<a class="btn btn-default" href="<?php echo $this->misc->YuriNetLink('ynnet://settings/');?>">ตั้งค่า</a>
		</div>
		<div class="col-sm-4">
			<?php
			if ($this->session->userdata('cdkey') != '') {
				echo '<a href="'.$this->misc->YuriNetLink('ynnet://serial?serial='.$this->session->userdata('cdkey')).'" class="btn btn-default">Regen serial</a>';
			}
			?>
		</div>
	</div>
	
</div>
<!-- End content -->