	<!-- Begin navbar -->
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<?php echo anchor('member', ' ', 'class="navbar-brand"'); ?>
			</div>
			<div class="navbar-collapse collapse navbar-responsive-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><?php echo anchor('member/play', 'เริ่มเล่น'); ?></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php 
						echo $this->session->userdata('playername'); ?> <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><?php echo anchor('member', 'ข้อมูลส่วนตัว'); ?></li>
							<?php 
								if (!$this->misc->YuriNetAgent()) {?>
							<li class="divider"></li>
							<li><?php echo anchor('auth/logout', 'ออกจากระบบ'); ?></li>
							<?php } ?>
						</ul>
					</li>
				</ul>				
			</div>
		</div>
	</div>
	<!-- End navbar -->