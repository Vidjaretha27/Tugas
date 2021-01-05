<?php
// include init.php for db
require_once 'config/class.php';
// check from ajax
if (isset($_POST['btn_editlist'])) {
   if ($_POST['key']=="kata") {
      $id_kata = $_POST['id'];
      $objKelaskata = new Kelaskata($conn);
      $leksikon = $objKelaskata->getSpecificLeksikon($id_kata);
      echo json_encode($leksikon);
   }elseif ($_POST['key']=="kalimat") {
     $id_kalimat = $_POST['id'];
     $objKalimat = new Kalimat($conn);
     $kalimat = $objKalimat->getSpecificKalimat($id_kalimat);
     echo json_encode($kalimat);
  }
}


?>