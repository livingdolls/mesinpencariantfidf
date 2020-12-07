<!DOCTYPE html>
<html>
<head>
	<meta name="referrer" content="strict-origin" />
	<title>Dokumen Korpus</title>
	<link rel="stylesheet" type="text/css" href="assets/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/fontawesome/css/all.min.css">
	<style>
	    *{
      font-family: awesome;
    }
	</style>
</head>

<body>
	<div class="container">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="index.php">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Tambah Dokumen</li>
			</ol>
		</nav>

				<h2 class="text-center">Daftar Dokumen</h2>
					<div class="add float-right">
				<div class="bg-info">
						<button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus"></i>Tambah Artikel</button>
					</div>
				</div>
				<table class="table table-striped">
				  <thead class="bg-primary text-white">
				    <tr>
				      <th scope="col">No</th>
				      <th scope="col">Judul</th>
				      <th scope="col">Isi</th>
				      <th scope="col">Aksi</th>
				    </tr>
				  </thead>
				  <tbody>
				    <?php
				    	include 'koneksi.php';
						$result = mysqli_query($konek,"SELECT * FROM tbdokumen ORDER BY Id");
						$no = 1;
							while($row = mysqli_fetch_array($result)) {
								echo '<tr>';
						    	echo '<td>'.$no.'</td>';
							    echo '<td>'.$row['Judul'].'</td>';
							    echo '<td>'.substr_replace($row['dokumen'],"...",100).'</td>';
							    ?>
							    <td><a class="btn btn-danger btn-sm" onclick="return confirm('Yakin Ingin Hapus?')" href="hapus.php?idDock=<?= $row['Id'] ?>"><i class="fa fa-trash"></i></a>
							    <?php
								echo '</tr>';
								$no++;
							}
							
						?>
				  </tbody>
				</table>

		<!-- Modal Add Artikel-->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Tambah Dokumen</h5>
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<form action="_addDok.php" method="POST">
					<div class="form-group">
						<label for="judul">Judul Dokumen</label>
						<input type="text" class="form-control" name="judul" id="judul" aria-describedby="emailHelp">
					</div>
					<div class="form-group">
						<label for="isi">Isi Dokumen</label>
						<textarea class="form-control" id="isi" name="isi" rows="3"></textarea>
					</div>
					<div class="form-group">
						<label for="kode">Kode Dokumen</label>
						<input type="text" class="form-control" id="kode" name="kode" aria-describedby="emailHelp">
					</div>
					<button type="submit" class="btn btn-primary btn-sm">Simpan</button>
					<button type="button" class="btn btn-danger btn-sm" data-dismiss="modal">Batal</button>
				</form>
			</div>

			</div>
		</div>
		</div>
		</div>
	</div>

<script type="text/javascript" src="assets/jquery/dist/jquery.min.js"></script>
<script type="text/javascript" src="assets/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>