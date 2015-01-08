<?php
	$attrLabel = array(
		'class' => 'col-sm-3 control-label'
	);

?>
<!-- Begin register -->
<div class="row animate-fade-up">
	<div class="col-md-12">
		<h1><span class="glyphicon glyphicon-dashboard"></span> Register <small>ลงทะเบียนร่วมเล่น</small></h1>
<?php
	if (isset($msg_error)) {
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
	echo form_open('auth/register', $attr);
		?>
		<div class="row">
			<div class="col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2 ">

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
									'maxlength'=>'32',
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
									'maxlength'=>'32',
									'placeholder'=>'Confirm Password'));
								echo form_error('passwordconfirm', '<span class="label label-danger">', '</span>');
								?>
								<span class="help-block">รหัสผ่านต้องมี 4-32 อักขระ</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End LoginInfo -->

		<!-- Begin UserInfo -->
		<div class="row">
			<div class="col-xs-10 col-xs-offset-1 col-sm-10 col-sm-offset-1 col-md-8 col-md-offset-2">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							<span class="glyphicon glyphicon-th-list"></span>
							&nbsp;&nbsp;Profile
						</h3>
					</div>
					<div class="panel-body">
						<?php /*
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
								<span class="help-block">คำนำหน้า 4 ตัวอักษร (clan)</span>
							</div>
						</div>
						*/ ?>
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
								echo form_error('playername', '<span class="label label-danger">', '</span>');
								?>
							</div>
						</div>
						<div class="form-group<?php if(form_error('prefer_country')) echo ' has-error';?>">
							<?php
							echo form_label('Country', 'prefer_country', $attrLabel);
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
									'id="prefer_country" class="form-control"'
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
								<span class="help-block">CD KEY เกม เพื่อไม่ให้ซ้ำกับใคร (ไม่จำเป็นต้องกรอก)</span>
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
					echo form_submit('submit', 'Register', 'class="btn btn-primary"');
					?>
				</div>
			</div>
		</div>
		<?php form_close(); ?>


	</div>
</div>





<!-- End login -->