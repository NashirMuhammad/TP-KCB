<?php 
include "database.php";
$akses=new Database();
$akses->connect();
?>

<!DOCTYPE html>
<html>
<head>
	<title>HAYO</title>
</head>
<body>
	<table>
		<tr>
			<th>PENYAKIT</th>
		</tr>
		<tr>
			<td>
			<?php 
		$ar=array();
		$no=0;
		if(isset($_POST['sbmt'])){
			foreach ($_POST['ID_gejala'] as $key) {
				$ar[$no]=$key;
				//echo $ar[$no];
				$no++;
			}
			$data=implode("",$ar);
			//echo $data;
			if($data=="G001G002G003G005G006G008G009G010G021G023G025G027G029G030"){
				foreach ($akses->penyakit1() as $key) { ?>
					<tr>
						<td><?php echo $key['ID_penyakit']; ?></td>
						<td><?php echo $key['nama_penyakit']; ?></td>
					</tr>
				<?php }
				}
			elseif ($data=="G002G003G009G014G022G026G028") {
				foreach ($akses->penyakit2() as $key) { ?>
					<tr>
						<td><?php echo $key['ID_penyakit']; ?></td>
						<td><?php echo $key['nama_penyakit']; ?></td>
					</tr>
				<?php }
			}
			elseif ($data=="G003G007G008G010G015G016G017G018G026") {
				foreach ($akses->penyakit3() as $key) { ?>
					<tr>
						<td><?php echo $key['ID_penyakit']; ?></td>
						<td><?php echo $key['nama_penyakit']; ?></td>
					</tr>
				<?php }
			}
			elseif ($data=="G002G011G016G017G018G020G024G028G030") {
				foreach ($akses->penyakit4() as $key) { ?>
					<tr>
						<td><?php echo $key['ID_penyakit']; ?></td>
						<td><?php echo $key['nama_penyakit']; ?></td>
					</tr>
				<?php }
			}
			elseif ($data=="G002G003G008G010G012G013G014G017G019") {
				foreach ($akses->penyakit5() as $key) { ?>
					<tr>
						<td><?php echo $key['ID_penyakit']; ?></td>
						<td><?php echo $key['nama_penyakit']; ?></td>
					</tr>
				<?php }
			}
			elseif ($data=="G002G003G004G016") {
				foreach ($akses->penyakit6() as $key) { ?>
					<tr>
						<td><?php echo $key['ID_penyakit']; ?></td>
						<td><?php echo $key['nama_penyakit']; ?></td>
					</tr>
				<?php }
			}
			elseif ($data=="G002G008G009G015G018G028G030") {
				foreach ($akses->penyakit7() as $key) { ?>
					<tr>
						<td><?php echo $key['ID_penyakit']; ?></td>
						<td><?php echo $key['nama_penyakit']; ?></td>
					</tr>
				<?php }
			}
			elseif ($data=="G001G002"){
				echo "jbsjbsj";
			}
		}
		 ?>
			</td>
		</tr>
		
	</table>
	</form>
</body>
</html>