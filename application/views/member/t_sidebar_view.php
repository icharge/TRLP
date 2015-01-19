<div class="col-sm-3 col-md-2 sidebar">
	<ul class="nav nav-sidebar">
		<li<?php echo $this->misc->listCActive("play"); ?>><?php echo anchor('member/play', '<i class="glyphicon glyphicon-tower"></i> START GAME');?></li>
	</ul>
	<ul class="nav nav-sidebar">
		<!-- <li class="label label-default"></li> -->
		<li<?php echo $this->misc->listCActive("member"); ?>><?php echo anchor('member', '<i class="glyphicon glyphicon-user"></i> โปรไฟล์');?></li>
		<li<?php echo $this->misc->listCActive("settings"); ?>><?php echo anchor('member/settings', '<i class="glyphicon glyphicon-wrench"></i> ตั้งค่า');?></li>
<!-- 		<li<?php echo $this->misc->listCActive("chat"); ?>><?php echo anchor('member/chat', 'พูดคุย');?></li> -->
<!-- 		<li<?php echo $this->misc->listCActive("report"); ?>><?php echo anchor('member/report', 'สถิติ');?></li> -->
	</ul>
	<ul class="nav nav-sidebar">
		<!-- <li class="label label-default"></li> -->
		<!-- <li<?php echo $this->misc->listCActive("help"); ?>><?php echo anchor('member/help', 'How to');?></li>
		<li<?php echo $this->misc->listCActive("maps"); ?>><?php echo anchor('member/maps', 'Maps');?></li>
		<li<?php echo $this->misc->listCActive("download"); ?>><?php echo anchor('member/download', 'Download');?></li> -->
		<li class="disabled"><a>How to</a></li>
		<li class="disabled"><a>Maps</a></li>
	</ul>
</div>