<div class="col-sm-3 col-md-2 sidebar">
	<ul class="nav nav-sidebar">
		<li<?php echo $this->misc->listCActive("play"); ?>><?php echo anchor('member/play', 'START GAME');?></li>
	</ul>
	<ul class="nav nav-sidebar">
		<!-- <li class="label label-default"></li> -->
		<li<?php echo $this->misc->listCActive("member"); ?>><?php echo anchor('member', 'Profile');?></li>
		<li<?php echo $this->misc->listCActive("chat"); ?>><?php echo anchor('member/chat', 'Chat Room');?></li>
		<li<?php echo $this->misc->listCActive("report"); ?>><?php echo anchor('member/report', 'Report');?></li>
	</ul>
	<ul class="nav nav-sidebar">
		<!-- <li class="label label-default"></li> -->
		<li<?php echo $this->misc->listCActive("help"); ?>><?php echo anchor('member/help', 'How to');?></li>
		<li<?php echo $this->misc->listCActive("maps"); ?>><?php echo anchor('member/maps', 'Maps');?></li>
		<li<?php echo $this->misc->listCActive("download"); ?>><?php echo anchor('member/download', 'Download');?></li>
	</ul>
</div>