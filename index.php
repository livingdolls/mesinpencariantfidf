<!DOCTYPE html>
<html>
<head>
	<meta name="referrer" content="strict-origin" />
	<title>Sistem Temu Kembali Informasi</title>
	<link rel="stylesheet" type="text/css" href="assets/bootstrap/dist/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/fontawesome/css/all.min.css">
</head>
<style type="text/css">
		*{
			font-family: awesome;
		}
	  .col-example {
	      padding: 1rem;
	      background-color: #33b5e5;
	      border: 2px solid #fff;
	      color: #fff;
	      text-align: center;
	    }
	    .search_form input{
	    	padding: 25px;
	    	border-top-left-radius: 2em;
	    	border-bottom-left-radius: 2em;
	    	border: 1px solid #eaeaea !important;
	    }
	    .search_form input:focus{
	    	border:0px !important;
	    	outline: none !important;
	    	box-shadow: none !important;
	    	border: 1px solid #eaeaea !important;
	    }
	    .search_form button{
	    	padding: 0 30px !important;
	    	border-bottom-right-radius: 2em;
	    	border-top-right-radius: 2em;
	    	border: 1px solid #eaeaea !important;
	    }
</style>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container">
    <a class="navbar-brand text-primary text-weight-bold" href="#">STKI</a>
	<a class="float-left btn btn-primary btn-sm" href="add_dokumen.php"><i class="fa fa-book"></i> Dokumen</a>
  </div>
</nav>
	<div class="container">
		<div class="d-flex align-items-center justify-content-center" style="height: 500px">
			<div class="col-6">
				<form method="GET" action="proses_cari.php">
					<div class="text-center" style="margin-bottom: 50px">
						<h1 class="text-primary">Pencarian Dokumen</h1>
					</div>
					<div class="input-group mb-3 search_form">
					  <input type="text" class="form-control" placeholder="Masukkan Keyword" name="search" autocomplete="off">
					  <div class="input-group-append">
					    <button class="btn btn-outline-secondary" type="submit"><i class="fas fa-search"></i></button>
					  </div>
					</div>
				</form>
			</div>
		</div>
	</div>

<script type="text/javascript" src="assets/jquery/dist/jquery.min.js"></script>
</body>
</html>