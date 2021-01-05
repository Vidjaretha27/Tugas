<?php
require_once 'headercontent.php';
if (isset($_GET['page'])) {
  if ($_GET['page']=="upload") {
    require_once 'upload.php';
 }elseif ($_GET['page']=="list") {
  require_once 'list.php';
}
}else{
  require_once 'dashboardcontent.php';
}
require_once 'footerindex.php';
?>
