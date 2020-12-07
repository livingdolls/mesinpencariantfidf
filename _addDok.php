<?php

    include 'koneksi.php';

    $judul = $_POST['judul'];
    $isi = $_POST['isi'];
    $kode = $_POST['kode'];

    if(empty($judul AND $isi AND $kode)){
        die("Form tidak boleh kosong");
    }
    else
    {
        $add = $konek->query("INSERT INTO `tbdokumen`(`Judul`, `dokumen`, `nm_dk`) VALUES ('$judul','$isi','$kode')");
        if(!$add)
        {
            echo mysqli_error($konek);
        }
        else
        {
            header("Location:add_dokumen.php");
        }
    }

?>