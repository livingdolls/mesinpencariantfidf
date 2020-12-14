<?php
include 'koneksi.php';

$data_korpus = $konek->query("SELECT * FROM tbdokumen");
$konek->query("TRUNCATE TABLE tbtokenisasi");

    foreach($data_korpus as $row)
    {

        $word_chill = strtolower($row['dokumen']);
        
        $hilangkan = preg_replace("/[^a-zA-Z]/", ' ', $word_chill);
        $hilangkan2 = preg_replace ("/ +/", " ", $hilangkan); # convert all multispaces to space        
        $hilangkan3 = preg_replace ("/^ /", "", $hilangkan2);  # remove space from start
        $hilangkan4 = preg_replace ("/ $/", "", $hilangkan3);  # and end

        $kata = explode(" ",$hilangkan4);

        $dokumen = $row['nm_dk'];
        foreach($kata as $isi)
        {
            $sql = "INSERT INTO `tbtokenisasi`(`nm_dk`,`term`) VALUES ('$dokumen','$isi')";
            $cek = $konek->query($sql);
            if(!$cek)
            {
                echo mysqli_error($konek);
            }

        }
    }

    $token = $konek->query("SELECT * FROM tbtokenisasi");
    $total = mysqli_num_rows($token);
?>
<!DOCTYPE html>
<html>
<head>
	<meta name="referrer" content="strict-origin" />
	<title>Sistem Temu Kembali Informasi</title>
	<link rel="stylesheet" type="text/css" href="assets/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/fontawesome/css/all.min.css">
</head>
<body>
<!-- Image and text -->
    <nav class="navbar navbar-dark bg-primary">
    <a class="navbar-brand" href="index.php">
        <img src="assets/img/logo.png" width="30" height="30" class="d-inline-block align-top" alt="" loading="lazy">
        STKI
    </a>
    </nav>
    <br />
    <div class="container">
    <div class="alert alert-primary" role="alert">
    Menampilkan <?= $total; ?> term
    </div>
    <div class="buton">
    <a class="btn btn-primary btn-sm" href="_filtering.php">Filtering</a>
    </div>
        <table class="table table-sm table-bordered">
            <tr class="bg-primary">
                <td scope="col">Kode Dokumen</td>
                <td scope="col">Term</td>
            </tr>
            <?php foreach($token as $row) : ?>

                <tr>
                    <td><?= $row['nm_dk']; ?></td>
                    <td><?= $row['term']; ?></td>
                </tr>

            <?php endforeach; ?>
        </table>
    </div>
<script type="text/javascript" src="assets/jquery/dist/jquery.min.js"></script>
</body>
</html>