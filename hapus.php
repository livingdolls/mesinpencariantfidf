<?php
include 'koneksi.php';
$idDock = $_GET['idDock'];

$hapus = mysqli_query($konek, "DELETE FROM tbdokumen WHERE Id = $idDock");
if($hapus){
	header('location:add_dokumen.php');
}else{
	echo 'error';
}

?>