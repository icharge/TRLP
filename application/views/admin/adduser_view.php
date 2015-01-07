<?php
$attrLabel = array(
	'class' => 'col-sm-3 control-label'
	);

	?>
	<!-- Begin content -->
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
		<ol class="breadcrumb">
			<li><?php echo anchor('admin', 'Home');?></li>
			<li><?php echo anchor('admin/users', 'Users management');?></li>
			<li class="active">add user</li>
		</ol>
	</div>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main animate-fade-up">
		<div class="page-header">
			<h1>Add user <small><?php echo $ptitle; ?></small></h1>
		</div>
		<div class="row row-centered">
			<div class="col-md-6 col-centered alert alert-info">
				* จำเป็นต้องกรอก
			</div>
		</div>
		<?php
		if (isset($msg_error)) {
			// echo '
			// <div class="alert alert-danger alert-dismissable">
			// <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			// <strong>ผิดพลาด!</strong> '.$msg_error.'</div>';
			echo "
			<script>
			Messenger.options = {
				extraClasses: 'messenger-fixed messenger-on-top',
				theme: 'bootstrap'
			}
			Messenger().post({
				message: '".$msg_error."',
				type: 'danger',
				hideAfter: 7,
				showCloseButton: true
			});
			</script>";
		}
		$attr = array(
			'class' => 'form-horizontal',
			'role' => 'form',
			'method' => 'post'
			);
		echo form_open('admin/users/adduser/admin', $attr);
		?>
		<div class="row row-centered">
			<div class="col-md-8 col-centered">
				
				<!-- Begin LoginInfo -->
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							<span class="glyphicon glyphicon-th-list"></span>
							&nbsp;&nbsp;Authenticate
						</h3>
					</div>
					<div class="panel-body">
						<div class="form-group<?php if(form_error('username')) echo ' has-error';?>">
							<?php
							echo form_label('Username <span class="text-danger">*</span>', 'username', $attrLabel);
							?>
							<div class="col-sm-8">
								<?php
								echo form_input(array(
									'id'=>'username',
									'name'=>'username',
									'value'=>set_value('username'),
									'type'=>'text',
									'class'=>'form-control',
									'placeholder'=>'Username'));
								echo form_error('username', '<span class="label label-danger">', '</span>');
								?>
							</div>
						</div>
						<div class="form-group<?php if(form_error('password')) echo ' has-error';?>">
							<?php 
							echo form_label('Password <span class="text-danger">*</span>', 'password', $attrLabel);
							?>
							<div class="col-sm-8">
								<?php
								echo form_input(array(
									'id'=>'password',
									'name'=>'password',
									'type'=>'password',
									'class'=>'form-control',
									'maxlength'=>'8',
									'placeholder'=>'Password'));
								echo form_error('password', '<span class="label label-danger">', '</span>');
								?>
							</div>
						</div>
						<div class="form-group<?php if(form_error('passwordconfirm')) echo ' has-error';?>">
							<?php 
							echo form_label('PW Confirm <span class="text-danger">*</span>', 'passwordconfirm', $attrLabel);
							?>
							<div class="col-sm-8">
								<?php
								echo form_input(array(
									'id'=>'passwordconfirm',
									'name'=>'passwordconfirm',
									'type'=>'password',
									'class'=>'form-control',
									'maxlength'=>'8',
									'placeholder'=>'Confirm Password'));
								echo form_error('passwordconfirm', '<span class="label label-danger">', '</span>');
								?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End LoginInfo -->

		<!-- Begin UserInfo -->
		<div class="row row-centered">
			<div class="col-md-8 col-centered">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							<span class="glyphicon glyphicon-th-list"></span>
							&nbsp;&nbsp;Profile
						</h3>
					</div>
					<div class="panel-body">
						<div class="form-group<?php if(form_error('prefix')) echo ' has-error';?>">
							<?php 
							echo form_label('Prefix', 'prefix', $attrLabel);
							?>
							<div class="col-sm-8">
								<?php
								echo form_input(array(
									'id'=>'prefix',
									'name'=>'prefix',
									'value'=>set_value('prefix'),
									'maxlength'=>'4',
									'type'=>'text',
									'class'=>'form-control',
									'placeholder'=>'Prefix'));
								echo form_error('prefix', '<span class="label label-danger">', '</span>');
								?>
							</div>
						</div>
						<div class="form-group<?php if(form_error('playername')) echo ' has-error';?>">
							<?php
							echo form_label('Player Name <span class="text-danger">*</span>', 'playername', $attrLabel);
							?>
							<div class="col-sm-8">
								<?php
								echo form_input(array(
									'id'=>'playername',
									'name'=>'playername',
									'value'=>set_value('playername'),
									'type'=>'text',
									'class'=>'form-control',
									'placeholder'=>'Player Name'));
								?>
							</div>
						</div>
						<div class="form-group<?php if(form_error('prefer_country')) echo ' has-error';?>">
							<?php 
							echo form_label('Country <span class="text-danger">*</span>', 'prefer_country', $attrLabel);
							?>
							<div class="col-sm-8">
								<?php
								$options = array(
									'random' => 'Random ???',
									'Allies' => array(
										'america' => 'America',
										'english' => 'Great Britain',
										'france' => 'France',
										'germany' => 'Germany',
										'korea' => 'Korea'
									),
									'Soviet' => array(
										'russia' => 'Russia',
										'cuba' => 'Cuba',
										'lybia' => 'Lybia',
										'iraq' => 'Iraq'
									),
									'yuri' => 'Yuri'
								);
								echo form_dropdown('prefer_country', 
									$options, 
									set_value('prefer_country'),
									'class="form-control"'
								);
								echo form_error('prefer_country', '<span class="label label-danger">', '</span>');
								?>
							</div>
						</div>
						<div class="form-group<?php if(form_error('email')) echo ' has-error';?>">
							<?php 
							echo form_label('Email', 'email', $attrLabel);
							?>
							<div class="col-sm-8">
								<?php
								echo form_input(array(
									'id'=>'email',
									'name'=>'email',
									'value'=>set_value('email'),
									'type'=>'text',
									'class'=>'form-control',
									'placeholder'=>'Email'));
								echo form_error('email', '<span class="label label-danger">', '</span>');
								?>
							</div>
						</div>
						<div class="form-group<?php if(form_error('cdkey')) echo ' has-error';?>">
							<?php 
							echo form_label('CD KEY', 'cdkey', $attrLabel);
							?>
							<div class="col-sm-8">
								<?php
								echo form_input(array(
									'id'=>'cdkey',
									'name'=>'cdkey',
									'value'=>set_value('cdkey'),
									'type'=>'text',
									'class'=>'form-control',
									'placeholder'=>'1234567890123456789012'));
								echo form_error('cdkey', '<span class="label label-danger">', '</span>');
								?>
							</div>
						</div>
						<div class="form-group<?php if(form_error('status')) echo ' has-error';?>">
							<?php 
							echo form_label('Status <span class="text-danger">*</span>', 'status', $attrLabel);
							?>
							<div class="col-sm-8">
								<?php
								$options = array(
									'active' => 'Active',
									'inactive' => 'Inactive',
									'validating' => 'Validating',
									'banned' => 'Banned'
								);
								echo form_dropdown('status', 
									$options, 
									set_value('status'),
									'class="form-control"'
								);
								echo form_error('status', '<span class="label label-danger">', '</span>');
								?>
							</div>
						</div>
						<div class="form-group<?php if(form_error('role')) echo ' has-error';?>">
							<?php 
							echo form_label('Role <span class="text-danger">*</span>', 'role', $attrLabel);
							?>
							<div class="col-sm-8">
								<?php
								$options = array(
									'player' => 'Player',
									'admin' => 'Admin'
								);
								echo form_dropdown('role', 
									$options, 
									set_value('role'),
									'class="form-control"'
								);
								echo form_error('role', '<span class="label label-danger">', '</span>');
								?>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		<div class="form-group">
			<div class="row row-centered">
				<div class="col-sm-12">
					<?php
					echo form_submit('submit', 'เพิ่มผู้ใช้', 'class="btn btn-primary"');
					?>
				</div>
			</div>
		</div>
		<?php form_close(); ?>
<!-- End content -->