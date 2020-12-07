<?php

include 'koneksi.php';

    $result = mysqli_query($konek," SELECT * FROM `tbindex` JOIN `tbdokumen` on tbindex.DocId = tbdokumen.Id ");

?>
<!DOCTYPE html>
<html>
<head>
	<meta name="referrer" content="strict-origin" />
	<title>Bobot Dokumen</title>
	<link rel="stylesheet" type="text/css" href="assets/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/fontawesome/css/all.min.css">
    <style>
        *{
      font-family: awesome;
    }
    </style>
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
    <table class="table table-sm table-bordered">
        <tr class="bg-primary">
            <td scope="col">Term</td>
            <td scope="col">Dokumen</td>
            <td scope="col">Jumlah</td>
            <td scope="col">Bobot</td>
        </tr>
        <?php foreach($result as $row) : ?>

            <tr>
                <td><?= $row['Term'] ?></td>
                <td><?= $row['nm_dk'] ?></td>
                <td><?= $row['jumlah'] ?></td>
                <td><?= $row['Bobot'] ?></td>
            </tr>

        <?php endforeach; ?>
    </table>
</div>

<script type="text/javascript" src="assets/jquery/dist/jquery.min.js"></script>
</body>
</html>