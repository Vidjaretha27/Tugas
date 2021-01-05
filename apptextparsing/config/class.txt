<?php
require_once 'init.php';
class Kelaskata{
	private $conn;
	function __construct($conn){
		$this->conn = $conn;
	}
	function getSpecificLeksikon($id_kata){
		$queryGetSpecificLeksikon = "SELECT * FROM kelaskata WHERE id_kata = '$id_kata'";
		$runqueryGetSpecificLeksikon = $this->conn->query($queryGetSpecificLeksikon);
		$leksikon = array();
		while ($data = $runqueryGetSpecificLeksikon->fetch_assoc()) {
			array_push($leksikon, $data);
		}
		return $leksikon;
	}
	function getAllKelasKata(){
		$queryGetAllKelasKata = "SELECT * FROM kelaskata";
		$runqueryGetAllKelasKata = $this->conn->query($queryGetAllKelasKata);
		$data_kelaskata = array();
		while ($data = $runqueryGetAllKelasKata->fetch_assoc()) {
			array_push($data_kelaskata, $data);
		}
		return $data_kelaskata;
	}
	function getDaftarKelasKata(){
		$queryGetDaftarKelasKata = "SELECT * FROM daftarkelaskata";
		$runqueryGetDaftarKelasKata = $this->conn->query($queryGetDaftarKelasKata);
		$data_kelaskata = array();
		while ($data = $runqueryGetDaftarKelasKata->fetch_assoc()) {
			array_push($data_kelaskata, $data);
		}
		return $data_kelaskata;
	}
	function insertNewKelasKata($data_input){
		$nomor_kata = $data_input['nomor_kata'];
		$kata_bali =  $data_input['kata_bali'] ;
		$kata_indonesia = $data_input['kata_indonesia'];
		$kelas_kata = $data_input['kelas_kata'];
		$queryInsertNewKelasKata = "INSERT INTO kelaskata (nomor_kata,kata_bali,kata_indonesia,kelas_kata) VALUES ('$nomor_kata','$kata_bali','$kata_indonesia','$kelas_kata')";
		$runQueryInsertNewKelasKata = $this->conn->query($queryInsertNewKelasKata);
		return $runQueryInsertNewKelasKata;
	}
	function updateSpecificKelasKata($data){
		$id_kata = $data['id_kata'];
		$nomor_kata = $data['nomor_kata'];
		$kata_bali = $data['kata_bali'];
		$kata_indonesia = $data['kata_indonesia'];
		$kelas_kata = $data['kelas_kata'];
		$queryUpdateSpecificKelasKata = "UPDATE  kelaskata SET nomor_kata = '$nomor_kata', kata_bali = '$kata_bali', kata_indonesia = '$kata_indonesia', kelas_kata = '$kelas_kata' WHERE id_kata = '$id_kata'";
		$runqueryUpdateSpecificKelasKata = $this->conn->query($queryUpdateSpecificKelasKata);
		return $runqueryUpdateSpecificKelasKata;
	}
	function deleteSpecificKelasKata($id_kata){
		$queryDeleteSpecificKelasKata = "DELETE FROM kelaskata WHERE id_kata='$id_kata'";
		$runqueryDeleteSpecificKelasKata = $this->conn->query($queryDeleteSpecificKelasKata);
		return $runqueryDeleteSpecificKelasKata;
	}
	function getAmountKelasKata(){
		$queryGetAmountKelasKata = "SELECT COUNT(*) AS rows FROM kelaskata";
		$runqueryGetAmountKelasKata = $this->conn->query($queryGetAmountKelasKata);
		$rows=0;
		while ($data = $runqueryGetAmountKelasKata->fetch_assoc()) {
			$rows = $data['rows'];
		}
		return $rows;
	}
}
class Kalimat{
	private $conn;
	function __construct($conn){
		$this->conn = $conn;
	}
	function getAllKalimat(){
		$queryGetAllKalimat = "SELECT * FROM kalimat";
		$runqueryGetAllKalimat = $this->conn->query($queryGetAllKalimat);
		$data_kalimat = array();
		while ($data = $runqueryGetAllKalimat->fetch_assoc()) {
			array_push($data_kalimat, $data);
		}
		return $data_kalimat;
	}
	function getSpecificKalimat($id_kalimat){
		$queryGetSpecificKalimat = "SELECT * FROM kalimat WHERE id_kalimat = '$id_kalimat'";
		$runqueryGetSpecificKalimat = $this->conn->query($queryGetSpecificKalimat);
		$kalimat = array();
		while ($data = $runqueryGetSpecificKalimat->fetch_assoc()) {
			array_push($kalimat, $data);
		}
		return $kalimat;
	}
	function updateSpecificKalimat($data){
		$id_kalimat = $data['id_kalimat'];
		$kalimat = $data['kalimat'];
		$is_valid = $data['is_valid'];
		$queryUpdateSpecificKalimat = "UPDATE kalimat SET kalimat = '$kalimat', is_valid = '$is_valid' WHERE id_kalimat = '$id_kalimat'";
		$runqueryUpdateSpecificKalimat = $this->conn->query($queryUpdateSpecificKalimat);
		return $runqueryUpdateSpecificKalimat;
	}
	function deleteSpecificKalimat($id_kalimat){
		$queryDeleteSpecificKalimat = "DELETE FROM kalimat WHERE id_kalimat='$id_kalimat'";
		$runqueryDeleteSpecificKalimat = $this->conn->query($queryDeleteSpecificKalimat);
		return $runqueryDeleteSpecificKalimat;
	}
	function InsertNewKalimat($data_input){
		$kalimat = $data_input['kalimat'];
		$is_valid =  $data_input['is_valid'] ;
		$queryInsertNewKalimat = "INSERT INTO kalimat (kalimat,is_valid) VALUES ('$kalimat','$is_valid')";
		$runQueryInsertNewKalimat = $this->conn->query($queryInsertNewKalimat);
		return $runQueryInsertNewKalimat;
	}
	function getAmountKalimat(){
		$queryGetAmountKalimat = "SELECT COUNT(*) AS rows FROM kalimat";
		$runqueryGetAmountKalimat = $this->conn->query($queryGetAmountKalimat);
		$rows=0;
		while ($data = $runqueryGetAmountKalimat->fetch_assoc()) {
			$rows = $data['rows'];
		}
		return $rows;
	}
}
class CFG{
	function cetakTabel($tabel,$new_sentence){
		for ($i = 0; $i < count($new_sentence); $i++) {
			for ($j = 0; $j < count($new_sentence); $j++) {
				if ( empty($tabel[$i][$j])) {
					echo '{}'." ";
				}else{
					echo "{". implode(" ", $tabel[$i][$j])."} ";
				}
			}
			echo '<br>';
		}
	}
	function pushLeksikonToRule(&$rule,&$leksikon){
		$input_leksikon = array("Gt","Bd","Kj","Pn","Pr","Ps","Sf","Bil","Nama","Sr","Kt","Tn");
		$input_rule = array("S","P","O","FN","FV","FK","FA","FP","FS");
		foreach ($input_rule as $value) {
			if ($value=="FN" ) {
				foreach ($rule[$value] as $val) {
					array_push($rule["S"], $val);
					array_push($rule["P"], $val);
					array_push($rule["O"], $val);
					array_push($rule["Pel"], $val);
				}
			}elseif ($value=="FV" ) {
				foreach ($rule[$value] as $val) {
					array_push($rule["P"], array($val));
				}
			}elseif ($value=="FK") {
				foreach ($rule[$value] as $val) {
					array_push($rule["K"], array($val));
				}
			}elseif ($value == "FS") {
				foreach ($rule[$value] as $val) {
					array_push($rule["P"], array($val));
					array_push($rule["K"], array($val));
				}
			}elseif ($value=="FA") {
				foreach ($rule[$value] as $val) {
					array_push($rule["P"], array($val));
				}
			}
		}
		foreach ($input_leksikon as $value) {
			if ($value=="Bd" ||$value=="Gt" ||$value=="Nama" || $value=="Bil") {
				foreach ($leksikon[$value] as $val) {
					array_push($rule["S"], $val);
					array_push($rule["O"], $val);
					array_push($rule["Pel"], $val);
					array_push($rule["FN"], $val);
					array_push($rule[$value], $val);
				}
			}elseif ($value=="Ps") {
				foreach ($leksikon[$value] as $val) {
					array_push($rule["S"], $val);
					array_push($rule["P"], $val);
					array_push($rule["Pel"], $val);
					array_push($rule["K"], $val);
					array_push($rule["FP"], $val);
					array_push($rule["FV"], $val);
					array_push($rule[$value], $val);

				}
			}elseif ($value=="Sf") {
				foreach ($leksikon[$value] as $val) {
					array_push($rule["FN"], $val);
					array_push($rule["FP"], $val);
					array_push($rule["FV"], $val);
					array_push($rule["FS"], $val);
					array_push($rule["FA"], $val);
					array_push($rule["S"], $val);
					array_push($rule["O"], $val);
					array_push($rule["P"], $val);
					array_push($rule["Pel"], $val);
					array_push($rule["K"], $val);
					array_push($rule[$value], $val);
				}
			}elseif ($value=="Kj") {
				foreach ($leksikon[$value] as $val) {
					array_push($rule["FV"], $val);
					array_push($rule["P"], $val);
					array_push($rule["Pel"], $val);
					array_push($rule["K"], $val);
					array_push($rule[$value], $val);
				}
			}elseif ($value=="Sr" || $value=="Pn" || $value=="Tn") {
				foreach ($leksikon[$value] as $val) {
					array_push($rule["FP"], $val);
					array_push($rule["S"], $val);
					array_push($rule["K"], $val);
					array_push($rule[$value], $val);
				}
			}elseif ($value=="Kt") {
				foreach ($leksikon[$value] as $val) {
					array_push($rule["K"], $val);
					array_push($rule["FK"], $val);
					array_push($rule["FA"], $val);
					array_push($rule[$value], $val);
				}
			}elseif ($value=="Pr") {
				foreach ($leksikon[$value] as $val) {
					array_push($rule[$value], $val);
				}
			}
		}
	}
	function defineRule($all_kelas_kata){
		$leksikon = array(
			"Gt" => array(),
			"Bd" => array(),
			"Kj"=> array(),
			"Nama" => array(),
			"Bil" => array(),
			"Pn" => array(),
			"Pr" => array(),
			"Ps" => array(),
			"Sf" => array(),
			"Sr" => array(),
			"Kt" => array(),
			"Tn" => array()
		);
		// $rule = array(
		// 	"S" => array(array("A","T"),array("A","B")),
		// 	"T" => array(array("S","B")),
		// 	"A" => array(array("a")),
		// 	"B" => array(array("A","C"),array("a"),array("c")),
		// 	"C" => array(array("c")),
		// );
		$rule = array(
			"Q" => array(array("S","P"), array("Q","O"),array("Q","Pel"),array("P","O"),array("Q","K")),
			"S" => array(),
			"P" => array(),
			"O" => array(),
			"K" => array(array("FK","FP")),
			"Pel" => array(),
			"FN" => array(array("Bd","FN"), array("Pr","FN"),array("Sf","FN"),array("FN","Sf"),array("Bil","FN"),array("Gt","FN"),array("Bd","FP"),array("Sf","FV"),array("FN","FS"), array("FN","Nama"),array("Ps","FN"),array("FN","Ps"), array("FN","FN"),array("FN","Gt")),
			"FP" => array(array("Pn","FN"),array("Pn","FP"),array("Ps","FP"),array("Pn","FS"),array("Pn","FV"),array("Kt","FP")),
			"FV" => array(array("Ps","FV"),array("Kj","FP"),array("Ps","FN"),array("Kj","FN"),array("Sf","FP"),array("FV","Kj")),
			"FK" => array(array("Kt","FN"),array("Pn","FK"),array("Kt","Bd")),
			"FA" => array(),
			"FS" => array(array("Ps","FS"),array("FS","Ps"),array("FS","Ps"),array("Kt","FS"),array("Pr","FS"),array("FS","FS")),
			"Gt" => array(),
			"Bd" => array(),
			"Kj"=> array(),
			"Nama" => array(),
			"Bil" => array(),
			"Pn" => array(),
			"Pr" => array(),
			"Ps" => array(),
			"Sf" => array(),
			"Sr" => array(),
			"Kt" => array(),
			"Tn" => array()
		);
		// Klasifikasi leksikon dan Input leksikon into array
		foreach ($all_kelas_kata as $indeks => $data) {
			switch ($data['kelas_kata']) {
				case "Gt":
				array_push($leksikon['Gt'], array($data['kata_bali']));
				break;
				case "Bd":
				array_push($leksikon['Bd'], array($data['kata_bali']));
				break;
				case "Kj":
				array_push($leksikon['Kj'], array($data['kata_bali']));
				break;
				case "Nama":
				array_push($leksikon['Nama'], array($data['kata_bali']));
				break;
				case "Bil":
				array_push($leksikon['Bil'], array($data['kata_bali']));
				break;
				case "Pr":
				array_push($leksikon['Pr'], array($data['kata_bali']));
				break;
				case "Pn":
				array_push($leksikon['Pn'], array($data['kata_bali']));
				break;
				case "Ps":
				array_push($leksikon['Ps'], array($data['kata_bali']));
				break;
				case "Sf":
				array_push($leksikon['Sf'], array($data['kata_bali']));
				break;
				case "Kt":
				array_push($leksikon['Kt'], array($data['kata_bali']));
				break;
				case "Tn":
				array_push($leksikon['Tn'], array($data['kata_bali']));
				break;
			// default:
			// echo 'Ditemukan error pada indeks : '.$indeks;
			// break;
			}
		}
		$this->pushLeksikonToRule($rule,$leksikon);
		return $rule;
	}
	function isCapital($word){
		$result_ascii = ord($word[0]) - 65;
		if ($result_ascii>= 0 && $result_ascii <=25) {
			return true;
		}else{
			return false;
		}
	}
	function prepocessingSentences($sentence){
		$temp_sentence = explode(' ', $sentence);
		$new_sentence = array();
		// cek apakah kata mengangdung huruf kapital dengan ascii
		for ($i = 0; $i < count($temp_sentence); $i++) {
			$kelas_nama = array();
			$cap_word1 = $this->isCapital($temp_sentence[$i]);
			if ($cap_word1) {
				array_push($kelas_nama, $temp_sentence[$i]);
				if ($i == count($temp_sentence)-1) {
					array_push($new_sentence, implode("", $kelas_nama));
				}
			}else{
				array_push($new_sentence, $temp_sentence[$i]);
			}
			for ($j = $i+1; $j < count($temp_sentence); $j++) {
				$cap_word2 = $this->isCapital($temp_sentence[$j]);
				if ($cap_word2) {
					array_push($kelas_nama, $temp_sentence[$j]);
				}else{
					$i = $j-1;
					if (!empty($kelas_nama)) {
						$nama = implode(' ', $kelas_nama);
						array_push($new_sentence, $nama);
					}
					break;
				}
			}
			if ($j==count($temp_sentence)) {
				if (!empty($kelas_nama)) {
					array_push($new_sentence, implode(" ", $kelas_nama));
					break;
				}
			}
		}
		return $new_sentence;
	}
	function unionDuaHimpunan(&$union,$set1,$set2){
		if (!empty($set1) && !empty($set2)) {
			foreach ($set1 as $s1) {
				foreach ($set2 as $s2) {
					$temp_union = array();
					array_push($temp_union, $s1);
					array_push($temp_union, $s2);
					array_push($union, $temp_union);
				}
			}
		}
	}
	function checkProductionRule(&$tabel,$rule,$hasil_union,$row,$col){
		foreach ($hasil_union as $per_union) {
			foreach ($rule as $lhs =>$rhs_rule) {
				foreach ($rhs_rule as $rhs) {
					if (count($rhs)==2) {
						if ($rhs[0]==$per_union[0] && $rhs[1]==$per_union[1]) {
						//mengantisipasi lhs yang sama yang sudah dimasukkan ke matriks
							if (!in_array($lhs, $tabel[$row][$col])) {
								array_push($tabel[$row][$col], $lhs);
							}
						}
					}
				}
			}
		}
	}
	function inisialisasiRemainRow(&$tabel,$max_j,$rule,$sentence,$level){
		$i = $max_j;
		for ($j = 0; $j <= $max_j; $j++) {
			$union = array();
			$pengurang_i = $level;
			$penambah_i = 1;
			$penambah_j = 1;
			for ($idx_level = 0; $idx_level < $level; $idx_level++) {
				$this->unionDuaHimpunan($union, $tabel[$i+$pengurang_i][$j],$tabel[$i+$penambah_i][$j+$penambah_j]);
				$pengurang_i-=1;
				$penambah_j+=1;
				$penambah_i+=1;
			}
			$this->checkProductionRule($tabel,$rule,$union,$i,$j);
		}
	}
	function inisialisasiSecondBottomRow(&$tabel,$max_j,$rule,$sentence){
		$i = $max_j;
		for ($j = 0; $j <= $max_j; $j++) {
			$union = array();
			$this->unionDuaHimpunan($union,$tabel[$i+1][$j],$tabel[$i+1][$j+1]);
			$this->checkProductionRule($tabel,$rule,$union,$i,$j);
		}
	}
	function inisialisasiBottomRow(&$tabel,$max_j,$rule,$sentence){
		$i = $max_j;
		for ($j = 0; $j <= $max_j; $j++) {
			foreach ($rule as $lhs =>$rhs_rule) {
				foreach ($rhs_rule as $rhs) {
					if (count($rhs)==1 && $rhs[0] == $sentence[$j]) {
						array_push($tabel[$i][$j], $lhs);
					}
				}
			}
		}
	}
	function cykParse($rule,$sentence,$start_simbol){
		// length sentence
		$n = count($sentence);
		$tabel = array();
		//Inisialiasi matriks n x n
		for ($i = 0; $i < $n; $i++) {
			$tabel[$i] = array();
			for ($j = 0; $j < $n; $j++) {
				$tabel[$i][$j] = array();
			}
		}
		// Proses CYK
		for ($i = $n-1; $i >= 0; $i--) {
			//agar looping membentuk triangular
			$max_j = $i; 
			$level = $n - $i - 1;
			if (($i==$n-1) || ($i==$n-2)) {
				//jika bottom row atau second bottom row
				if ($i==$n-1) {
					//inisialisasi bottom row
					$this->inisialisasiBottomRow($tabel,$max_j,$rule,$sentence);
				}else{
					$this->inisialisasiSecondBottomRow($tabel,$max_j,$rule,$sentence);
				}
			}else{
				$this->inisialisasiRemainRow($tabel,$max_j,$rule,$sentence,$level);
			}
		}
		$isValid = "false";
		if (in_array($start_simbol, $tabel[0][0])) {
			$isValid = "true";
		}
		return array($isValid,$tabel);
	}
	function main($rule,$sentence){
		// 1. Definisikan start simbol
		$start_simbol = "Q";
   	//2. Prepocessing kalimat untuk menentukan kelas Nama
		$new_sentence = $this->prepocessingSentences($sentence);
		//3. parsing menggunakan algoritma cyk
		list($isValid,$tabel) = $this->cykParse($rule,$new_sentence,$start_simbol);
		return array($isValid,$tabel,$new_sentence);
	}
	
}

class Flasher{
	function showSimpleFlash($title,$icon,$text,$url,$confirmButtonColor="#22bb33",$cancelButtonColor = "#d33",$confirmButtonText){
		echo "<script>Swal.fire({
			title: '$title',
			icon:'$icon',
			text: '$text',
			showCancelButton: false,
			confirmButtonColor: '$confirmButtonColor',
			cancelButtonColor: '$cancelButtonColor',
			confirmButtonText: '$confirmButtonText'
			}).then((result) => {
				document.location.href = '$url';
			})";
			echo ' </script>';
		}
	}
// instansiasi objek Dokumen
	$objFlash = new Flasher();
	$objKelaskata = new Kelaskata($conn);
	$objKalimat = new Kalimat($conn);
	$objCFG = new CFG();
	?>