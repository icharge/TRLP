<!-- Begin content -->
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	<h2><i class="glyphicon glyphicon-wrench"></i> ปรับให้เข้าที่</h2>
	<div class="row">
		<div class="col-md-8 col-lg-7">
			<div class="list-group">
				<a href="<?php echo $this->misc->YuriNetLink('ynnet://settings/');?>" class="list-group-item">
					<h4 class="list-group-item-heading"><i class="glyphicon glyphicon-wrench"></i> ตั้งค่า YuriNET</h4>
					<p class="list-group-item-text">ปรับแต่งค่าการทำงานสำหรับตัวเกม Red Alert 2 และ Yuri's Revenge ให้เหมาะสมกับคอมพิวเตอร์ของคุณ  รวมถึงบอกตำแหน่งที่ตั้งของเกมด้วย</p>
				</a>
				<a href="<?php echo $this->misc->YuriNetLink('ynnet://fixserial?serial='.$this->session->userdata('cdkey'));?>" class="list-group-item">
					<h4 class="list-group-item-heading"><i class="glyphicon glyphicon-barcode"></i> สร้าง Serial ใหม่</h4>
					<p class="list-group-item-text">กรณีที่เกิดปัญหา Serial ซ้ำ ให้แก้ปัญหาได้โดย คลิกที่นี่</p>
				</a>
				<a href="<?php echo $this->misc->YuriNetLink('ynnet://fixbs/');?>" class="list-group-item">
					<h4 class="list-group-item-heading"><i class="glyphicon glyphicon-picture"></i> แก้ไขหน้าจอดำ</h4>
					<p class="list-group-item-text">ในบางเครื่องที่เล่นเกมนี้ อาจมีปัญหาหน้าจอไม่แสดงภาพ อาจมีแค่เสียง หากคุณมีปัญหาดังกล่าว (ปุ่มนี้อาจช่วยได้)</p>
				</a>
				<a href="<?php echo $this->misc->YuriNetLink('ynnet://fixfatal/');?>" class="list-group-item">
					<h4 class="list-group-item-heading"><i class="glyphicon glyphicon-remove-circle"></i> ***FATAL*** String Manager failed to initialized...</h4>
					<p class="list-group-item-text"><img src="imgs/fatalerror.jpg" alt="Fatal Error" style="width: 100%"><br>ใครเป็นแบบนี้  คลิกด่วน</p>
				</a>
			</div>
		</div>
	</div>
	
</div>
<!-- End content -->