<!DOCTYPE html>
<html>
<head>
	<title><?php echo $title ?></title>
	<style type="text/css">
		body{
			font-family: Arial;
			color: black;
		}
	</style>
</head>
<body>

	<center>
		<h1>PT. INDONESIA BANGKIT</h1>
		<h2>Laporan Kehadiran Pegawai</h2>
	</center>

	<?php 
	if((isset($_GET['bulan']) && $_GET['bulan']!='') && (isset($_GET['tahun']) && $_GET['tahun']!='')){
		$bulan = $_GET['bulan'];
		$tahun = $_GET['tahun'];
		$bulantahun = $bulan.$tahun;
	}else{
		$bulan = date('m');
		$tahun = date('Y');
		$bulantahun = $bulan.$tahun;
	}
	 ?>

	<table style="margin-bottom: 20px; margin-top: 15px; margin-left: 15px;">
			 	<tr>
			 		<td>Bulan</td>
			 		<td> : </td>
			 		<td><?php echo $bulan ?></td>
			 	</tr>
			 	<tr>
			 		<td>Tahun</td>
			 		<td> : </td>
			 		<td><?php echo $tahun ?></td>
			 	</tr>
			 </table>

			 <table class="table table-bordered table-striped">
			 	<tr>
			 		<th>No</th>
			 		<th>Nama Pegawai</th>
			 		<th>NIK</th>
			 		<th>Jabatan</th>
			 		<th>Hadir</th>
			 		<th>Sakit</th>
			 		<th>Alpha</th>
			 	</tr>
			 	<?php $no=1; foreach($lap_kehadiran as $l) : ?>
			 	<tr>
			 		<td><?php echo $no++ ?></td>
			 		<td><?php echo $l->nama_pegawai ?></td>
			 		<td><?php echo $l->nik ?></td>
			 		<td><?php echo $l->nama_jabatan ?></td>
			 		<td><?php echo $l->hadir ?></td>
			 		<td><?php echo $l->sakit ?></td>
			 		<td><?php echo $l->alpha ?></td>
			 	</tr>
			 <?php endforeach; ?>
			 </table>

			 <table width="95%">
    		<tr>
    			<td></td>
    			<td width="180px">
    				<p>Jakarta, <?php echo date("d M Y") ?><br>Finance</p>
    				<br>
    				<br>
    				<br>
    				<p>(___________________)</p>
    			</td>
    		</tr>
    	</table>

</body>
</html>

<script type="text/javascript">
	window.print();
</script>