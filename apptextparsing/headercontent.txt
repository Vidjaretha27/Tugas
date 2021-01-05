<?php
// include init.php for db
require_once 'config/class.php';

if (isset($_GET['page'])) {
  $title = ucfirst($_GET['page']);
}else{
  $title = "Dashboard";
}
?>
<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

  <!-- font -->
  <link href="https://fonts.googleapis.com/css2?family=Vampiro+One&display=swap" rel="stylesheet"type="text/css" />
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
  <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
  <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
  <script src="https://kit.fontawesome.com/786101c34d.js" crossorigin="anonymous"></script>
  <!-- SweetAlert -->
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
  <!-- css -->
  <link rel="stylesheet" href="css/style.css">

  
  <title><?= $title; ?></title>
</head>
<body>
 <!-- navbar atas -->
      <nav class="navbar navbar-expand-lg navbar-light bg-dark fixed-top">
        <a class="navbar-brand text-white" href="dashboard.php">Halaman | <b>UPLOAD</b> </a>
        <div class="icon ml-4">
            <h5>
               <a class="text-white" href="index.php"><i class="fas fa-sign-out-alt mr-3 text-white" data-toggle="tooltip" title="log out"> Beranda</i>
            </h5>
        </div>
      </nav>
    <!-- akhir navbar atas -->
    <!-- navbar samping -->
      <div class="row no-gutter mt-5 p-2">
        <div class="col-md-2 bg-dark mt-2 pr-3 pt-4">
          <ul class="nav flex-column ml-3 mb-5">
            <li class="nav-item">
              <a class="nav-link active text-white" href="dashboard.php"><i class="fas fa-tachometer-alt mr-2"></i>Dashboard</a><hr class="bg-secondary">
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="dashboard.php?page=upload&key=kalimat"><i class="fas fa-newspaper mr-2"></i>Upload Kalimat</a><hr class="bg-secondary">
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="dashboard.php?page=upload&key=kata"><i class="fas fa-newspaper mr-2"></i>Upload Kelas Kata</a><hr class="bg-secondary">
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="dashboard.php?page=list&key=kalimat"><i class="fas fa-users-cog mr-2"></i>List Kalimat</a><hr class="bg-secondary">
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="dashboard.php?page=list&key=kata"><i class="fas fa-users-cog mr-2"></i>List Kelas Kata</a><hr class="bg-secondary">
            </li>
          </ul>
        </div>
    <!-- akhir navbar samping -->
