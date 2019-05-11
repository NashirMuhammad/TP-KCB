<?php 
include "database.php";
$akses=new Database();
$akses->connect();
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<form action="tampil_penyakit.php" method="post">
	<table>
		<tr>
			<th>ID</th>
			<th>Aksi</th>
			<th>Gejala</th>
		</tr>
		<?php 
		foreach ($akses->getgejalaID() as $key):
			?>
			<tr>
				<td>
				<?php  echo $key['ID_gejala']; ?>
				</td>
				<td>
				<input type='checkbox' name='ID_gejala[]' value = '<?php echo $key['ID_gejala'] ?>'>
				</td>
				<td>	
				<?php echo $key['nama_gejala']; ?>
				</td>
			</tr>
		
		<?php endforeach
		 ?>
			 <tr>
			<td></td>
			<td></td>
			<td><button type="submit" name="sbmt" class="btn btn-primary">Submit</button></td>
			</tr>
	</table>
	</form>
</body>
</html>