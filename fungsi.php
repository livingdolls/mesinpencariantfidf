<?php


function preproses($teks) {

	include "koneksi.php";	
	
	// include composer autoloader
	require_once __DIR__ . '/vendor/autoload.php';

	// create stemmer Sastrawi

	$stemmerFactory = new \Sastrawi\Stemmer\StemmerFactory();
	$stemmer  = $stemmerFactory->createStemmer();

	$get_stopword = file_get_contents("stopword.json");
	$stopword = json_decode($get_stopword,true);
	
	$data = explode(" ", $stemmer->stem($teks));
	$result = array_diff($data,$stopword);
	$hasil = implode(" ",$result);

	//Proses Stemming
	$teks = $hasil;
	return $teks;
}

function hitungBobotKeyword(){
	include "koneksi.php";
	$resn = mysqli_query($konek,"SELECT DISTINCT DocId FROM tbindex");
	$n = mysqli_num_rows($resn);

	$keyword = mysqli_query($konek,"SELECT * FROM tbkeyword ORDER BY Id"); 
	while ($row  = mysqli_fetch_array($keyword)) {
		$termNow = $row['Term'];
		$tf = $row['jumlah'];
		$id = $row['Id'];

		$rescount = mysqli_query($konek,"SELECT Count(*) as total_term FROM tbindex WHERE Term = '$termNow'");
		$num_rows = mysqli_fetch_array($rescount);
		$jumlah_total_dokumen = $n + 1;
		$total_semua_term = $num_rows['total_term']+1;
		$w = $tf * log($jumlah_total_dokumen/$total_semua_term);

		$resUpdateBobot = mysqli_query($konek,"UPDATE tbkeyword SET Bobot = $w WHERE Id = $id ");
		if(!$resUpdateBobot){
			echo "ada kesalahan";
		}
	}	
}


function WdWdi(){
	include "koneksi.php";

	mysqli_query($konek,"DELETE FROM tbwdwdi");
	mysqli_query($konek,"TRUNCATE TABLE tbwdwdi");
	$get_bobot_keyword = mysqli_query($konek,"SELECT * FROM tbkeyword ORDER BY Id");

	while ($row = mysqli_fetch_array($get_bobot_keyword)) {
		$termNow = $row['Term'];

	
		$bobotKeyword = $row['Bobot'];
		$rescount = mysqli_query($konek,"SELECT * FROM tbindex WHERE Term = '$termNow'");

		$bobotKeywordXXbobotDoc = 0;
		while ($aww = mysqli_fetch_array($rescount)) {

			$bobotKeywordXXbobotDoc =  $bobotKeyword * $aww['Bobot'];
			$awwi = $aww['DocId'];
			$ins = $konek->query("INSERT INTO tbwdwdi(Id_Doc,Hasil_p_Bobot) VALUES('$awwi','$bobotKeywordXXbobotDoc')");
			if(!$ins)
			{
				echo "<script>alert('er')</script>";
			}
		}

	}
}

function perangkinganDokumen()
{
	include "koneksi.php";
	mysqli_query($konek,"DELETE FROM simpan_hasil");
	mysqli_query($konek,"TRUNCATE TABLE simpan_hasil");
	$query_vector_keyword = mysqli_query($konek,"SELECT SUM(Bobot) AS total_bobot FROM tbkeyword");
	$fetch_vector_keyword = mysqli_fetch_array($query_vector_keyword);
	$panjangvektorKeyword = sqrt($fetch_vector_keyword['total_bobot']);

	$get_total_WDI = mysqli_query($konek,"SELECT Id_Doc,SUM(Hasil_p_Bobot) as total_WDI FROM `tbwdwdi` GROUP BY Id_Doc");
	$arr = array();
	while ($row = mysqli_fetch_array($get_total_WDI)) {
		$total_WDI = $row['total_WDI'];
		$quer_get_vector_dokumen = mysqli_query($konek, "SELECT * FROM tbvektor WHERE DocId = ".$row['Id_Doc']);
		
		while ($fetch_vector_dokumen = mysqli_fetch_array($quer_get_vector_dokumen)) {
			
			$rumus = $total_WDI/($panjangvektorKeyword*$fetch_vector_dokumen['Panjang']);

			$id_dokumen = $fetch_vector_dokumen['DocId']; 
			
			$save_to_result = mysqli_query($konek,"INSERT INTO simpan_hasil(DocId,Hasil_Bobot_Akhir) VALUES($id_dokumen,$rumus) ");

			array_push($arr,$rumus);
		}
	}
}

function buatindex() {
		
		include "koneksi.php";
		//hapus index sebelumnya
		$hapus = $konek->query("TRUNCATE TABLE tbindex");
		

		//ambil semua berita (teks)
		$resBerita = $konek->query("SELECT * FROM tbdokumen ORDER BY Id");
		$num_rows = mysqli_num_rows($resBerita);

		while($row = mysqli_fetch_array($resBerita)) {
			$docId = $row['Id'];
			$berita = $row['Judul']." ".$row['dokumen'];

  			$berita = preproses($berita);

  			//simpan ke inverted index (tbindex)
  			$aberita = explode(" ", trim($berita));

  			foreach ($aberita as $j => $value) {
				//hanya jika Term tidak null atau nil, tidak kosong
				if ($aberita[$j] != "") {

					$rescount = $konek->query("SELECT jumlah FROM tbindex WHERE Term = '$aberita[$j]' AND DocId = $docId");
					if(!$rescount)
					{
						echo mysqli_error($konek);
					}
					$num_rows = mysqli_num_rows($rescount);

					//jika 	sudah ada DocId dan Term tersebut	, naikkan Count (+1)
					if ($num_rows > 0) {
						$rowcount = mysqli_fetch_array($rescount);
						$count = $rowcount['jumlah'];
						$count++;

						$konek->query("UPDATE tbindex SET jumlah = $count WHERE Term = '$aberita[$j]' AND DocId = $docId");
					}
					//jika belum ada, langsung simpan ke tbindex
					else {
						$tm = $konek->query("INSERT INTO `tbindex`(`Term`, `DocId`, `jumlah`,`Bobot`)  VALUES ('$aberita[$j]', '$docId', 1,0)");
						// echo $aberita[$j];
						if(!$tm)
						{
							echo mysqli_error($konek);
						}
					}
				} 
			} 
  		} 
}

//fungsi hitungbobot, menggunakan pendekatan tf.idf
function hitungbobot() {
	include "koneksi.php";
	//berapa jumlah DocId total?
	$resn = mysqli_query($konek,"SELECT DISTINCT DocId FROM tbindex");
	$n = mysqli_num_rows($resn);

	//ambil setiap record dalam tabel tbindex
	//hitung bobot untuk setiap Term dalam setiap DocId
	$resBobot = mysqli_query($konek,"SELECT * FROM tbindex ORDER BY Id");
	$num_rows = mysqli_num_rows($resBobot);

	while($rowbobot = mysqli_fetch_array($resBobot)) {
		$term = $rowbobot['Term'];
		$tf = $rowbobot['jumlah'];
		$id = $rowbobot['Id'];

		//berapa jumlah dokumen yang mengandung term tersebut
		$resNTerm = mysqli_query($konek,"SELECT Count(*) as N FROM tbindex WHERE Term = '$term'");
		$rowNTerm = mysqli_fetch_array($resNTerm);

		// menambah NTerm dari keyword
		$get_term_from_keyword = mysqli_query($konek,"SELECT * FROM tbkeyword WHERE Term = '$term'");
		$result_term_from_keyword = mysqli_fetch_array($get_term_from_keyword);
		$cek_term_from_keyword = mysqli_num_rows($get_term_from_keyword);
		if ($cek_term_from_keyword > 0) {

			$NTerm = $rowNTerm['N']+$result_term_from_keyword['jumlah'];
		}else{
			$NTerm = $rowNTerm['N'];
		}
		
		$jumlah_total_dokumen = $n + 1;
		$w = $tf * log($jumlah_total_dokumen/$NTerm);

		//update bobot dari term tersebut
		$resUpdateBobot = $konek->query("UPDATE tbindex SET Bobot = $w WHERE Id = $id");
  	} //end while $rowbobot
} //end function hitungbobot

//fungsi panjangvektor, jarak euclidean akar(penjumlahan kuadrat dari bobot setiap Term)
function panjangvektor() {
	
	include "koneksi.php";
	//hapus isi tabel tbvektor
	mysqli_query($konek,"TRUNCATE TABLE tbvektor");

	//ambil setiap DocId dalam tbindex
	//hitung panjang vektor untuk setiap DocId tersebut
	//simpan ke dalam tabel tbvektor
	$resDocId = mysqli_query($konek,"SELECT DISTINCT DocId FROM tbindex");

	$num_rows = mysqli_num_rows($resDocId);

	while($rowDocId = mysqli_fetch_array($resDocId)) {
		$docId = $rowDocId['DocId'];

		$resVektor = mysqli_query($konek,"SELECT Bobot FROM tbindex WHERE DocId = $docId");

		//jumlahkan semua bobot kuadrat
		$panjangVektor = 0;
		while($rowVektor = mysqli_fetch_array($resVektor)) {
			$panjangVektor = $panjangVektor + $rowVektor['Bobot']  *  $rowVektor['Bobot'];

		}


		//hitung akarnya
		$panjangVektor = sqrt($panjangVektor);

		//masukkan ke dalam tbvektor
		$resInsertVektor = mysqli_query($konek,"INSERT INTO tbvektor (DocId, Panjang) VALUES ($docId, $panjangVektor)");
	} //end while $rowDocId
} //end function panjangvektor

//fungsi hitungsim - kemiripan antara query setiap dokumen dalam database (berdasarkan bobot di tbindex)
function perhitunganKemiripan($query) {
	
	include "koneksi.php";
	//ambil jumlah total dokumen yang telah diindex (tbindex atau tbvektor)
	$resn = $konek->query("SELECT Count(*) as n FROM tbvektor");
	if(!$resn)
	{
		echo mysqli_error($konek);
	}

	$rown = mysqli_fetch_array($resn);
	$n = $rown['n'];

	//terapkan preprocessing terhadap $query
	$aquery = explode(" ", $query);

	//hitung panjang vektor query
	$panjangQuery = 0;
	$aBobotQuery = array();

	for ($i=0; $i<count($aquery); $i++) {
		//hitung bobot untuk term ke-i pada query, log(n/N);
		//hitung jumlah dokumen yang mengandung term tersebut
		$resNTerm = $konek->query("SELECT Count(*) as N from tbindex WHERE Term = '$aquery[$i]'");
		$rowNTerm = mysqli_fetch_array($resNTerm);
		$NTerm = $rowNTerm['N'] ;
    //$idf = 0;
    $idf = 0;
    if($NTerm > 0)
		$idf = log($n/$NTerm);

		//simpan di array
		$aBobotQuery[] = $idf;

		$panjangQuery = $panjangQuery + $idf * $idf;
	}

	$panjangQuery = sqrt($panjangQuery);

	$jumlahmirip = 0;

	//ambil setiap term dari DocId, bandingkan dengan Query
	$resDocId = $konek->query("SELECT * FROM tbvektor ORDER BY DocId");
	while ($rowDocId = mysqli_fetch_array($resDocId)) {

		$dotproduct = 0;

		$docId = $rowDocId['DocId'];
		$panjangDocId = $rowDocId['Panjang'];

		$resTerm = $konek->query("SELECT * FROM tbindex WHERE DocId = $docId");
		while ($rowTerm = mysqli_fetch_array($resTerm)) {
			for ($i=0; $i<count($aquery); $i++) {
				//jika term sama
				if ($rowTerm['Term'] == $aquery[$i]) {
					$dotproduct = $dotproduct + $rowTerm['Bobot'] * $aBobotQuery[$i];
				}
			}
		} 

		if ($dotproduct > 0) {
			$sim = $dotproduct / ($panjangQuery * $panjangDocId);

			//simpan kemiripan > 0  ke dalam tbcache
			$resInsertCache = $konek->query("INSERT INTO tbcache (Query, DocId, nilai) VALUES ('$query', $docId, $sim)");
			if(!$resInsertCache)
			{
				echo "<script>alert('af)</script>";
			}
			$jumlahmirip++;
			
		}


	} 

	if ($jumlahmirip == 0) {
		$resInsertCache = $konek->query("INSERT INTO tbcache (Query, DocId, nilai) VALUES ('$query', 0, 0)");
		if(!$resInsertCache)
			{
				echo "<script>alert('af)</script>";
			}
	}

}

function ambilcache($keyword) {
	include "koneksi.php";
	$resCache = mysqli_query($konek,"SELECT *  FROM tbcache WHERE Query = '$keyword' ORDER BY Value DESC");
	$num_rows = mysqli_num_rows($resCache);

	if ($num_rows >0) {
		//tampilkan semua berita yang telah terurut
		while ($rowCache = mysqli_fetch_array($resCache)) {
			$docId = $rowCache['DocId'];
			$sim = $rowCache['nilai'];

			if ($docId != 0) {
				$resBerita = mysqli_query($konek,"SELECT * FROM tbdokumen WHERE Id = $docId");
				$rowBerita = mysqli_fetch_array($resBerita);

				$judul = $rowBerita['Judul'];
				$berita = $rowBerita['Berita'];
				$beritaa = $docId . ". (" . $sim . ") <font color=blue><b>" . $judul . "</b></font><br />";
				print ($beritaa);
				print($berita . "<hr />");
			} else {
				print("<b>Tidak ada... </b><hr />");
			}
		}//end while (rowCache = mysqli_fetch_array($resCache))
	}//end if $num_rows>0
	else {
		perhitunganKemiripan($keyword);

		//pasti telah ada dalam tbcache
		$resCache = mysqli_query($konek,"SELECT *  FROM tbcache WHERE Query = '$keyword' ORDER BY Value DESC");
		$num_rows = mysqli_num_rows($resCache);

		while ($rowCache = mysqli_fetch_array($resCache)) {
			$docId = $rowCache['DocId'];
			$sim = $rowCache['nilai'];

			if ($docId != 0) {
				//ambil berita dari tabel tbberita, tampilkan
				$resBerita = mysqli_query($konek,"SELECT * FROM tbdokumen WHERE Id = $docId");
				$rowBerita = mysqli_fetch_array($resBerita);

				$judul = $rowBerita['Judul'];
				$berita = $rowBerita['dokumen'];

				print($docId . ". (" . $sim . ") <font color=blue><b>" . $judul . "</b></font><br />");
				print($berita . "<hr />");
			} else {
				print("<b>Tidak ada... </b><hr />");
			}
		} 
	}
}

?>
