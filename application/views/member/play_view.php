<!-- Begin content -->
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	<h2>เลือก Channel สำหรับเล่น</h2>
<?php
	echo '<h3>Host Server</h3>';
	// 112.121.146.128
	$link['btn'] = $this->misc->YuriNetLink('ynnet://play?mode=host&gamemode=normal&ip=thaira2.ddns.net&port=191&ch=');

	echo <<<html
	<div class="row" style="padding-bottom: 10px">
			<div class="col-xs-5"><a class="btn btn-default btn-block" href="$link[btn]">NetCafé Hosting</a></div>
			<div class="col-xs-7">
				<div style="padding: 18px 0;">
					<span class="label bg-danger" style="font-size: 100%">NetCafé Hosting (P2P เล่นไม่ได้ มาที่นี่)</span> <span class="badge">Sponsored</span>
				</div>
			</div>
		</div>
html;

	echo '<h3>P2P</h3>';
	foreach ($ChList as $row) {
		$link['btn'] = $this->misc->YuriNetLink('ynnet://play?mode=p2p&gamemode=normal&ch='.$row['ch_id'].'&ip=0.0.0.0&port=0');
		$countra2 = $this->Users->countOnline($row['ch_id'],"ra2");
		$countyr = $this->Users->countOnline($row['ch_id'],"yuri");
		echo <<<html
		<div class="row" style="padding-bottom: 10px">
			<div class="col-xs-4"><a class="btn btn-default btn-block" href="$link[btn]">$row[ch_name]</a></div>
			<div class="col-xs-8">
				<div style="padding: 9px 0;">
					<span class="badge" id="ra2count">$countra2</span> <span class="label" style="font-size: 100%;background-color: #CF3103;">RA2</span> | <span class="badge" id="yrcount">$countyr</span> <span class="label" style="font-size: 100%;background-color: #4310A9;">YURI</span>
				</div>
			</div>
		</div>
html;
	}

?>
</div>
<!-- End content --> 