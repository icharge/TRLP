<div class="col-sm-3 col-md-2 sidebar">
	<ul class="nav nav-sidebar">
		<li<?php echo $this->misc->listCActive("admin"); ?>><?php echo anchor('admin', '<span class="glyphicon glyphicon-dashboard"></span> Dashboard');?></li>
		<li<?php echo $this->misc->listCActive("examreport"); ?>><?php echo anchor('admin/report', '<span class="glyphicon glyphicon-dashboard"></span> Report');?></li>
		<li<?php echo $this->misc->listCActive("log"); ?>><?php echo anchor('admin/log', '<span class="glyphicon glyphicon-list-alt"></span> Log');?></li>
	</ul>
	<ul class="nav nav-sidebar">
		<li<?php echo $this->misc->listCActive("users"); ?>><?php echo anchor('admin/users', '<span class="glyphicon glyphicon-user"></span> Users');?></li>
		<li<?php echo $this->misc->listCActive("ban"); ?>><?php echo anchor('admin/ban', '<div class="glyphicon glyphicon-book"></div> Ban');?></li>
		<li<?php echo $this->misc->listCActive("clan"); ?>><?php echo anchor('admin/clan', '<div class="glyphicon glyphicon-list-alt"></div> Clans');?></li>
		<li<?php echo $this->misc->listCActive("maps"); ?>><?php echo anchor('admin/maps', '<div class="glyphicon glyphicon-list-alt"></div> Maps');?></li>
	</ul>
</div>