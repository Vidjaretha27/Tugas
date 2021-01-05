<!-- dashboard -->
<?php
//get number of kelas kata dan kalimat
$rows_leksikon = $objKelaskata->getAmountKelasKata();
$rows_kalimat = $objKalimat->getAmountKalimat();
?>
<div class="col-md-10 p-5 pt-2">
  <div class="container-fluid">
    <div class="row">
      <div class="col">
        <h3><i class="fas fa-tachometer-alt mr-2"></i>DASHBOARD<hr></h3>
        <div class="row text-white">
          <div class="col-lg-4">
            <div class="card bg-warning" style="width: 18rem;">
              <div class="card-body">
                <h5 class="card-title  text-uppercase">Jumlah Kelas kata</h5>
                <div class="display-4"><b><?= $rows_leksikon; ?></b></div>
                <a href="dashboard.php?page=list&key=kata"><p class="card-text text-white text-uppercase ml-1  ">lihat detail<i class="fas fa-angle-double-right ml-2"></i></p></a>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="card bg-danger" style="width: 18rem;">
              <div class="card-body">
                <h5 class="card-title  text-uppercase">Jumlah Kalimat</h5>
                <div class="display-4"><b><?= $rows_kalimat; ?></b></div>
                <a href="dashboard.php?page=list&key=kalimat"><p class="card-text text-white text-uppercase ml-1  ">lihat detail<i class="fas fa-angle-double-right ml-2"></i></p></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- akhir dashboard -->