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
				echo "joss";
			}
			elseif ($data=="G002G003G009G014G022G026G028") {
				echo "mantap";
			}
			elseif ($data=="G003G007G008G010G015G016G017G018G026") {
				# code...
			}
			elseif ($data=="G002G011G016G017G018G020G024G028G030") {
				# code...
			}
		}
		 ?>
			 <tr>
			<td></td>
			<td></td>
			</tr>
	</table>
	</form>
</body>
</html>