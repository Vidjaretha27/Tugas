<?php
require 'headerindex.php';
?>

<!-- navbar --> 
<nav class="navbar navbar-light bg-dark">
  <div class="container-fluid">
    <h5 class="navbar-b">CFG</h5>
    <div class="d-flex">
      <a class="btn btn-primary upload fontupload" href="dashboard.php" role="button">Upload Dokumen</a>
    </div>
  </div>
</nav>
<!-- akhir navbar -->

<!-- TBO -->
<div class="demo-wrapper">
  <section class="with-blending-mode">
    <h1 class="title">
      <span>T</span><span>B</span><span>O</span><span>.</span>
    </h1>
    <h3>Application of CFG in Syntactic Parsing</h3>
    <form action="index.php" method="post">
      <button type="submit" class="btn btn-danger btn-lg btn-block btn-load" name="btnValidasiKalimat" value="">Uji Kalimat Validasi</button>
    </form>
  </section>
</div>
<!-- akhir TBO -->

<!-- kolom search  -->
<div class="container">
  <div class="row">
    <div class="col">
      <form class="d-flex cari" method="get" action="index.php">
        <input class="form-control me-2" type="search" placeholder="Masukkan kalimat" aria-label="Search" name="search_kalimat" value="" required="true">
        <button class="btn btn-primary" type="submit">Search</button>
      </form>
    </div>
  </div>
</div>
<!-- akhir kolom search  -->


<!-- info panel -->
<div class="container">
  <div class="row justify-content-center" id="info-panel">
    <div class="col-12 info-panel">
      <!-- Default saat index.php dipanggil -->
      <div class="row">
        <div class="col">
          <div class="alert alert-danger" role="alert">
            <h4 class="alert-heading">Aplikasi Text Parsing!</h4>
            <p>
              Aplikasi text parsing ini adalah salah satu projek untuk memenuhi tugas mata kuliah Teori Bahasa dan Otomata. Dosen pengampu kami adalah <strong>Dr. Anak Agung Istri Ngurah Eka Karyawati, S.Si., M.Eng. </strong>Aplikasi ini merupakan implementasi dari CFG dan CNF. Dibangun mengggunakan bahasa pemrograman PHP, CSS3, HTML5, MySQL, Framework Bootstrap, Javascript.
            </p>
            <hr>
            <p class="mb-0">
              Kelompok XX: <br>
              Gusti Ayu Vidjaretha Wardana (1808561004) <br>
              Karel Leo Rivaldo (1808561009)<br>
              I Made Satria Bimantara (1808561013)<br>
              I Nyoman Wina Artha Setiawan (1808561017)<br>
              Putu Bayu Baskara (1808561022) 
            </p>
          </div>
        </div>
      </div>
      <!-- Akhir default saat index.php dipanggil -->
      <!-- Baris untuk pencarian kalimat -->
      <?php if (isset($_GET['search_kalimat'])): ?>
        <?php
        $all_leksikon = $objKelaskata->getAllKelasKata();
        $rule = $objCFG->defineRule($all_leksikon);
        $kalimat = $_GET['search_kalimat'];
        list($isValid,$tabel,$new_sentence)= $objCFG->main($rule,$kalimat);
        ?>
        <div class="row justify-content-center" id="card">
          <div class="col">
            <div class="card" >
              <div class="card-body">
                <h5 class="card-title"><?= $kalimat; ?></h5>
                <p class="card-text text-justify">Hasil Parsing Algoritma CYK = <strong><?= strtoupper($isValid); ?></strong></p>
                <h6>Tabel</h6>
                <p class="lead">
                  <?php $objCFG->cetakTabel($tabel,$new_sentence); ?>
                </p>
              </div>
            </div>
          </div>
        </div>
      <?php endif ?>
      <!-- Akhir baris untuk pencarian kalimat -->
      <!-- Baris untuk kalimat validasi -->
      <?php if (isset($_POST['btnValidasiKalimat'])): ?>
        <?php
        // Load data kalimat dari database
        $all_kalimat = $objKalimat->getAllKalimat();
        $all_leksikon = $objKelaskata->getAllKelasKata();
        $rule = $objCFG->defineRule($all_leksikon);
        ?>
        <div class="row mt-3">
          <div class="col">
            <div class="alert alert-primary" role="alert">
             <h4 class="alert-heading">Perhitungan Algoritma CYK</h4>
           </div>
         </div>
       </div>
       <div class="row ">
        <div class="col">
          <div class="card">
            <div class="card-body">
              <table class="table table-hover">
                <thead>
                  <tr>
                    <th scope="col">Nomor</th>
                    <th scope="col">Kalimat</th>
                    <th scope="col">Hasil Algoritma CYK</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $count_tp_tn=0; ?>
                  <?php foreach ($all_kalimat as $kalimat): ?>
                    <?php
                    list($isValid,$tabel,$new_sentence)= $objCFG->main($rule,$kalimat['kalimat']);
                    ?>
                    <tr>
                      <th scope="row"><?= $kalimat['id_kalimat']; ?></th>
                      <td><?= $kalimat['kalimat']; ?> (<strong><?= strtoupper($kalimat['is_valid']); ?></strong>)</td>
                      <td><?= strtoupper($isValid); ?></td>
                      <?php
                      if ($kalimat['is_valid']===$isValid) {
                        $count_tp_tn++;
                      }
                      ?>
                    </tr>
                  <?php endforeach ?>
                  <tr>
                    <th scope="row" colspan="2">Nilai Akurasi Algoritma CYK  {((TP + TN)/Jumlah kalimat) * 100%}</th>
                    <td><strong><?= ($count_tp_tn/count($all_kalimat))*100; ?>%</strong></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    <?php endif ?>
    <!-- Akhir baris untuk validasi -->
  </div>
</div>
</div>
<!-- akhir info panel -->

<!-- Footer -->
<footer class="page-footer font-small blue">
  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2020 Copyright Kelompok XX
  </div>
  <!-- Copyright -->
</footer>
<!-- Footer -->


<?php
require 'footerindex.php';
?>