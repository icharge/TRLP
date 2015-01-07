<!-- Begin content -->
<script>
	$('body').on('mousedown', 'tr[href]', function(e){
		var click = e.which;
		var url = $(this).attr('href');
		if(url){
			if(click == 1){
				window.location.href = url;
			}
			else if(click == 2){
				window.open(url, '_blank');
				window.focus();
			}
			return true;
		}
	});
</script>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	<ol class="breadcrumb">
		<li><?php echo anchor('admin', 'Home');?></li>
		<li class="active">Users management</li>
	</ol>
</div>
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main <?php if(!$this->session->flashdata('noAnim')) echo "animate-fade-up";?>">
	<div class="page-header">
		<h1><span class="glyphicon glyphicon-user"></span> Users management <small></small></h1>
		<div class="well well-sm">
			<span>คุณสามารถจัดการผู้ใช้ทุกกลุ่มได้</span>
		</div>
	</div>
	<?php
	if ($this->session->flashdata('msg_info')) {
		// echo '
		// <div class="alert alert-success alert-dismissable">
		// <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
		// <strong>เรียบร้อย!</strong> '.$this->session->flashdata('msg_info').'</div>';
		echo "
		<script>
		Messenger.options = {
			extraClasses: 'messenger-fixed messenger-on-top',
			theme: 'bootstrap'
		}
		Messenger().post({
			message: '".$this->session->flashdata('msg_info')."',
			type: 'info',
			hideAfter: 7,
			showCloseButton: true
		});
</script>";

}
if ($this->session->flashdata('msg_error')) {
	echo '
	<div class="alert alert-danger alert-dismissable">
	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
	<strong>ผิดพลาด!</strong> '.$this->session->flashdata('msg_error').'</div>';
	echo "
	<script>
	Messenger.options = {
		extraClasses: 'messenger-fixed messenger-on-top',
		theme: 'bootstrap'
	}
	Messenger().post({
		message: '".$this->session->flashdata('msg_error')."',
		type: 'danger',
		hideAfter: 7,
		showCloseButton: true
	});
	</script>";
}

?>
<script>
	$('body').on('mousedown', 'tr[href]', function(e){
		var click = e.which;
		var url = $(this).attr('href');
		if(url){
			if(click == 1){
				window.location.href = url;
			}
			else if(click == 2){
				window.open(url, '_blank');
				window.focus();
			}
			return true;
		}
	});

</script>

<div class="well well-sm">
	<label>Show by </label>
	<div class="btn-group">
		<?php
		echo anchor('admin/users/viewgroup/all', 'All', 'class="'.$this->misc->btnActive($group,'all').'"').
		anchor('admin/users/viewgroup/admin', 'Admin', 'class="'.$this->misc->btnActive($group,'admin').'"').
		anchor('admin/users/viewgroup/player', 'Player', 'class="'.$this->misc->btnActive($group,'player').'"').
		anchor('admin/users/viewgroup/validate', 'Validate', 'class="'.$this->misc->btnActive($group,'validate').'"').
		anchor('admin/users/viewgroup/banned', 'Banned', 'class="'.$this->misc->btnActive($group,'banned').'"');
		?>
	</div>
</div>
<div class="row <?php if($this->session->flashdata('noAnim')) echo "animate-fade-up";?>">
	<div class="col-md-12">
		<!-- Admin List -->
		<?php
		if (isset($adminlist)) {
			?>
			<div class="panel panel-primary">
				<div class="panel-heading">
					<span><span class="glyphicon glyphicon-th"></span>&nbsp;&nbsp;Admin</span>
					<div class="panel-btn btn-group pull-right">
						<?php echo anchor('admin/users/adduser/admin', 'Add', 'class="btn btn-sm btn-info"');?>

					</div>
				</div>
				<div class="panel-body search">
					<div class="row">
			<?php
				$attr = array(
				'name' => 'searchadmin',
				'class' => '',
				'role' => 'search',
				'method' => 'get'
				);
			echo form_open('admin/users/viewgroup/admin', $attr);
			?>
						<div class="col-xs-6">
							<div class="recperpage">
								<label>Show per page
							<?php
								$attr_pp = array(
									'10' => '10',
									'25' => '25',
									'50' => '50',
									'100' => '100'
								);
								if ($this->input->get('perpage')) $perpage = $this->input->get('perpage');
								else $perpage = '25';
								//echo $perpage;
								echo form_dropdown('perpage',
									$attr_pp,
									$perpage,
									'onchange="submitFrm(document.forms.searchadmin)"');

							?>
								</label>
							</div>
						</div>
						<div class="col-xs-6 text-right">
							<div class="dataTables_filter" id="example1_filter">
								<label>search:
									<!-- <input type="text" name="q"> -->
						<?php
							echo form_input(array(
								'id'=>'searchtxt',
								'name'=>'q',
								'type'=>'text',
								'class'=>'',
								'value'=>$this->input->get('q'),
								'placeholder'=>''
							));
						?>
								</label>
							</div>
						</div>
						<?php echo form_close(); ?>
					</div>
				</div>
				<table class="table table-striped table-hover table-bordered rowclick">
					<thead>
						<tr>
							<th>fb</th>
							<th style="width: 23%;">Username</th>
							<th style="width: 20%;">Player Name</th>
							<th style="width: 30%;">Email</th>
							<th style="width: 110px;">Status</th>
						</tr>
					</thead>
					<tbody>
						<?php
						foreach ($adminlist as $item) {
							echo "
							<tr href=\"".$this->misc->getHref('admin/users/view/'.$item['uid'])."\">
							<td><a href='http://fb.com/$item[facebookid]'>fb</a></td>
							<td>$item[username]</td>
							<td>$item[playername]</td>
							<td>$item[email]</td>
							<td>$item[status]</td>
							</tr>
							";
						}
						?>
					</tbody>
				</table>
			</div>
			<?php } ?>
			<!-- END Admin list -->
			<!-- Player list -->
			<?php
			if (isset($playerlist)) {
				?>
				<div class="panel panel-primary">
					<div class="panel-heading">
						<span><span class="glyphicon glyphicon-th"></span>&nbsp;&nbsp;Players</span>
						<div class="panel-btn btn-group pull-right">
							<?php echo anchor('admin/users/adduser/admin', 'Add', 'class="btn btn-sm btn-info"');?>

						</div>
					</div>
					<div class="panel-body search">
						<div class="row">
				<?php
					$attr = array(
					'name' => 'searchadmin',
					'class' => '',
					'role' => 'search',
					'method' => 'get'
					);
				echo form_open('admin/users/viewgroup/player', $attr);
				?>
							<div class="col-xs-6">
								<div class="recperpage">
									<label>Show per page
								<?php
									$attr_pp = array(
										'10' => '10',
										'25' => '25',
										'50' => '50',
										'100' => '100'
									);
									if ($this->input->get('perpage')) $perpage = $this->input->get('perpage');
									else $perpage = '25';
									//echo $perpage;
									echo form_dropdown('perpage',
										$attr_pp,
										$perpage,
										'onchange="submitFrm(document.forms.searchplayer)"');

								?>
									</label>
								</div>
							</div>
							<div class="col-xs-6 text-right">
								<div class="dataTables_filter" id="example1_filter">
									<label>search:
										<!-- <input type="text" name="q"> -->
							<?php
								echo form_input(array(
									'id'=>'searchtxt',
									'name'=>'q',
									'type'=>'text',
									'class'=>'',
									'value'=>$this->input->get('q'),
									'placeholder'=>''
								));
							?>
									</label>
								</div>
							</div>
							<?php echo form_close(); ?>
						</div>
					</div>
					<table class="table table-striped table-hover table-bordered rowclick">
						<thead>
							<tr>
								<th>fb</th>
								<th style="width: 23%;">Username</th>
								<th style="width: 20%;">Player Name</th>
								<th style="width: 30%;">Email</th>
								<th style="width: 110px;">Status</th>
							</tr>
						</thead>
						<tbody>
							<?php
							foreach ($playerlist as $item) {
								echo "
								<tr href=\"".$this->misc->getHref('admin/users/view/'.$item['uid'])."\">
								<td><a href='http://fb.com/$item[facebookid]'>fb</a></td>
								<td>$item[username]</td>
								<td>$item[playername]</td>
								<td>$item[email]</td>
								<td>$item[status]</td>
								</tr>
								";
							}
							?>
						</tbody>
					</table>
				</div>
				<?php } ?>
				<!-- End Player list -->

		</div>
	</div>
</div>
<script>
function submitFrm(frm) {
	frm.submit();
}</script>
<!-- End content