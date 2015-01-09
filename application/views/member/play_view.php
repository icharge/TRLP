<!-- Begin content -->
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	<h2>เลือก Channel สำหรับเล่น</h2>
<?php
	foreach ($ChList as $row) {
		$link['btn'] = $this->misc->YuriNetLink('ynnet://play?mode=p2p&gamemode=normal&ch='.$row['ch_id']);
		$countra2 = $this->Users->countOnline($row['ch_id'],"ra2");
		$countyr = $this->Users->countOnline($row['ch_id'],"yuri");
		echo <<<html
		<div class="row" style="padding-bottom: 10px">
			<div class="col-xs-3"><a class="btn btn-default btn-block" href="$link[btn]">$row[ch_name]</a></div>
			<div class="col-xs-9">
				<div style="line-height: 3.6rem">
					<span class="badge" id="ra2count">$countra2</span> RA2 | <span class="badge" id="yrcount">$countyr</span> YURI
				</div>
			</div>
		</div>
html;
	}
?>
</div>
<!-- End content --> 