<?php 
include "database.php";
$ID_penyakit=$_GET['ID_penyakit'];
$akses=new Database();
$akses->connect();
?>

 <!DOCTYPE html>
 <html>
 <head>
 	<title></title>
 </head>
 <body>
 	<table border="1">
 		<tr>
 			<th>Penyakit</th>
 			<th>Gejala</th>
 		</tr>
 		<?php 
 			foreach ($akses->getgejala($ID_penyakit) as $key) {?>
 		<tr>
 			<td> <?php echo $key['nama_penyakit']; ?></td>
 			<td> <?php echo $key['nama_gejala']; ?></td>
 		</tr>
 		<?php  }?>
 	</table>
 </body>
 </html>