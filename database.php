<?php 
class Database{
	private $host,$user, $pass,$database,$con,$result;
	function __construct()
	{
		$this->host="localhost";
		$this->user="root";
		$this->pass="";
		$this->database="dbginjal";
	}
	public function connect(){
		$this->conn=mysqli_connect($this->host,$this->user,$this->pass);
		mysqli_select_db($this->conn,$this->database);
		if(!$this->conn){
			return die('Maaf, koneksi belum tersambung: '.mysqli_connect_error());
		}
	}
	public function eksekusi($query){
		$this->result=mysqli_query($this->conn,$query);
	}
	public function getpenyakit(){
		$query="SELECT ID_penyakit,nama_penyakit from penyakit";
		$this->eksekusi($query);
		return $this->result;
	}
	public function getgejala($ID_penyakit){
		$query="SELECT penyakit.nama_penyakit,gejala.nama_gejala FROM gejala JOIN aturan ON gejala.ID_gejala=aturan.ID_gejala JOIN penyakit ON aturan.ID_penyakit=penyakit.ID_penyakit WHERE penyakit.ID_penyakit='$ID_penyakit'";
		$this->eksekusi($query);
		return $this->result;
	}
	public function getgejalaID(){
		$query="SELECT ID_gejala,nama_gejala from gejala";
		$this->eksekusi($query);
		return $this->result;
	}
	public function penyakit1(){
		$query="SELECT * from penyakit WHERE ID_penyakit='P001'";
		$this->eksekusi($query);
		return $this->result;
	}
	public function penyakit2(){
		$query="SELECT * from penyakit WHERE ID_penyakit='P002'";
		$this->eksekusi($query);
		return $this->result;
	}
	public function penyakit3(){
		$query="SELECT * from penyakit WHERE ID_penyakit='P003'";
		$this->eksekusi($query);
		return $this->result;
	}
	public function penyakit4(){
		$query="SELECT * from penyakit WHERE ID_penyakit='P004'";
		$this->eksekusi($query);
		return $this->result;
	}
	public function penyakit5(){
		$query="SELECT * from penyakit WHERE ID_penyakit='P005'";
		$this->eksekusi($query);
		return $this->result;
	}
	public function penyakit6(){
		$query="SELECT * from penyakit WHERE ID_penyakit='P006'";
		$this->eksekusi($query);
		return $this->result;
	}
	public function penyakit7(){
		$query="SELECT * from penyakit WHERE ID_penyakit='P007'";
		$this->eksekusi($query);
		return $this->result;
	}
	public function penyakit8(){
		$query="SELECT * from penyakit WHERE ID_penyakit='P008'";
		$this->eksekusi($query);
		return $this->result;
	}
	public function penyakit9(){
		$query="SELECT * from penyakit WHERE ID_penyakit='P009'";
		$this->eksekusi($query);
		return $this->result;
	}
	public function penyakit10(){
		$query="SELECT * from penyakit WHERE ID_penyakit='P010'";
		$this->eksekusi($query);
		return $this->result;
	}

}

 ?>