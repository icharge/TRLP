	<!-- Begin navbar -->
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<?php echo anchor('admin', ' ', 'class="navbar-brand"'); ?>
			</div>
			<div class="navbar-collapse collapse navbar-responsive-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="#">Dashboard</a></li>
					<li><a href="#">Settings</a></li>
					<!-- <p class="navbar-text ">sss</p> -->
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php 
						echo $this->misc->getRoleText($this->session->userdata('role')).
						'&nbsp;&nbsp;'.(($this->session->userdata('prefix')!='')?'['.$this->session->userdata('prefix').'] ':'').$this->session->userdata('playername'); ?> <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><?php echo anchor('main/viewprofile', 'ข้อมูลส่วนตัว');?></li>
							<li class="divider"></li>
							<li><?php echo anchor('auth/logout', 'ออกจากระบบ'); ?></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- End navbar -->