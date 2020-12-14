<?php


    include 'koneksi.php';
    $tb_tokenisasi = $konek->query("SELECT * FROM `tbtokenisasi`");
    $get_stopword = file_get_contents("stopword.json");
    $stopword = json_decode($get_stopword,true);


?>
<!DOCTYPE html>
<html>
<head>
	<meta name="referrer" content="strict-origin" />
	<title>Sistem Temu Kembali Informasi</title>
	<link rel="stylesheet" type="text/css" href="assets/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/fontawesome/css/all.min.css">
</head>
<!-- Image and text -->
<body>
    <nav class="navbar navbar-dark bg-primary">
    <a class="navbar-brand" href="index.php">
        <img src="assets/img/logo.png" width="30" height="30" class="d-inline-block align-top" alt="" loading="lazy">
        STKI
    </a>
    </nav>
    <br />
    <div class="container">
    <div class="buton">
    <a class="btn btn-primary btn-sm" href="_stemming.php">Stemming</a>
    </div>
        <table class="table table-sm table-bordered">
            <tr class="bg-primary">
                <td scope="col">Kode Dokumen</td>
                <td scope="col">Term</td>
            </tr>
     <?php       foreach($tb_tokenisasi as $row)
    {
        $hilang = explode(" ",$row['term']);

        $stop = array_diff($hilang, $stopword);
        $nm_dk = $row['nm_dk'];
        foreach($stop as $res)
        {
            echo "<tr>";
            echo "<td>$nm_dk</td>";
            echo "<td>$res</td>";
            echo "</tr>";

        }
    }
    ?>
        </table>
    </div>
<script type="text/javascript" src="assets/jquery/dist/jquery.min.js"></script>
</body>
</html>