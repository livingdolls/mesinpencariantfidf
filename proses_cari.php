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
} //end function preproses

$konek = mysqli_connect("localhost","root","","stki");
$keyword_user = $_GET['search'];

$konek->query("DELETE FROM tbkeyword");
//hapus index sebelumnya
$konek->query("TRUNCATE TABLE tbindex");
//$berita = //ini didapat dari value keyword yang dimasukan user!
$berita = $keyword_user;
$berita = preproses($berita);
//simpan ke inverted index (tbindex)
	$aberita = explode(" ", trim($berita));

$words = str_word_count($berita, 1);
$words = array_count_values($words);
$count_keyword = count($words);
if($count_keyword > 0){
	foreach ($words as $xxx => $val) {
		$g = $konek->query("INSERT INTO tbkeyword (Term, jumlah,Bobot) VALUES ('$xxx', '$val',0)");
		if(!$g)
		{
			echo "<script>alert('a)</script>";
		}
	}
	header('location:result.php?search='.$keyword_user);
}
 ?>