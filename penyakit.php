<?php 
include "database.php";
$akses=new Database();
$akses->connect();
?>
<table border="1px">
	<tr>
		<th>ID Penyakit</th>
		<th>Nama Penyakit</th>
		<th>Aksi</th>
	</tr>
	<?php foreach ($akses->penyakitall() as $key) { ?>
	<tr>
		<td><?php echo $key['ID_penyakit']; ?></td>
		<td><?php echo $key['nama_penyakit']; ?></td>
		<td><a <?php echo"href=lihat_gejala.php?ID_penyakit=$key[ID_penyakit]>Lihat</a></td>"?>
	</tr>
	<?php  }?>
</table>

 