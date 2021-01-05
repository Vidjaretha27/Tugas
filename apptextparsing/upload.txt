<?php if (isset($_GET['key'])): ?>
  <!-- Upload Kalimat -->
  <?php if ($_GET['key']=="kalimat"): ?>
    <div class="col-md-10 p-5 pt-2">
      <h3><i class="fas fa-newspaper mr-2"></i>UPLOAD KALIMAT<hr></h3>
      <div class="container">
        <div class="card">
          <div class="card-header bg-primary text-white">Tambah Kalimat Baru</div>
          <div class="card-body">
            <form action="dashboard.php?page=upload&key=kalimat" method="post">
              <div class="form-group">
                <label for="input_kalimat">Kalimat</label>
                <textarea class="form-control" required="true" name="input_kalimat" id="input_kalimat"></textarea>
              </div>
              <div class="form-group">
                <label for="input_is_valid">Pilih ketentuan pola kalimat</label>
                <select  class="form-control" id="input_is_valid" name="input_is_valid" required="true">
                  <option value="">- Pilih -</option>
                  <option value="true">True</option>
                  <option value="false">False</option>
                </select>
              </div>
              <button type="submit" class="btn btn-primary" name="btnUpload" id="btnUpload" value="">Tambah</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  <?php endif ?>
  <!-- Akhir upload kalimat -->
  <!-- Upload kelas kata -->
  <?php if ($_GET['key']=="kata"): ?>
    <!-- Retrieve daftar kelas kata from db -->
    <?php
    $daftar_kelas_kata = $objKelaskata->getDaftarKelasKata();
    ?>
    <div class="col-md-10 p-5 pt-2">
      <h3><i class="fas fa-newspaper mr-2"></i>UPLOAD KELAS KATA<hr></h3>
      <div class="container">
        <div class="card">
          <div class="card-header bg-primary text-white">Tambah Kelas Kata</div>
          <div class="card-body">
            <form action="dashboard.php?page=upload&key=kata" method="post">
              <div class="form-group">
                <label for="input_nomor_kata">Nomor Kata</label>
                <input type="number" class="form-control" id="input_nomor_kata" name="input_nomor_kata" required="true">
              </div>
              <div class="form-group">
                <label for="input_kata_bali">Kata Bali</label>
                <input type="text" class="form-control" id="input_kata_bali" name="input_kata_bali" required="true">
              </div>
              <div class="form-group">
                <label for="input_kata_indonesia">Kata Indonesia</label>
                <input type="text" class="form-control" id="input_kata_indonesia" name="input_kata_indonesia" required="true">
              </div>
              <div class="form-group">
                <label for="input_kelas_kata">Kelas Kata</label>
                <select class="form-control" id="input_kelas_kata" name="input_kelas_kata" required="true">
                  <option value="">- Pilih kelas kata -</option>
                  <?php foreach ($daftar_kelas_kata as $kelas_kata): ?>
                    <?php $kelas = $kelas_kata['kelas_kata']; ?>
                    <option value="<?= $kelas; ?>"><?= $kelas; ?></option>
                  <?php endforeach ?>
                </select>
              </div>
              <button type="submit" class="btn btn-primary" name="btnUpload" id="btnUpload" value="">Tambah</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  <?php endif ?>
  <!-- Akhir upload kelas kata -->
<?php endif ?>

<?php
if (isset($_POST['btnUpload'])) {
  $data_input = array();
  if ($_GET['key']=="kata") {
    $data_input['nomor_kata'] = $_POST['input_nomor_kata'];
    $data_input['kata_bali'] = $_POST['input_kata_bali'];
    $data_input['kata_indonesia'] = $_POST['input_kata_indonesia'];
    $data_input['kelas_kata'] = $_POST['input_kelas_kata'];
    $pesanBerhasil = "Kelas Kata baru berhasil ditambahkan!";
    $pesanGagal = "Kelas Kata baru gagal ditambahkan!";
    $url = "dashboard.php?page=upload&key=kata";
    $runQuery = $objKelaskata->insertNewKelasKata($data_input);
  }elseif ($_GET['key']=="kalimat") {
    $data_input['kalimat'] = $_POST['input_kalimat'];
    $data_input['is_valid'] = $_POST['input_is_valid'];
    $pesanBerhasil = "Kalimat baru berhasil ditambahkan!";
    $pesanGagal = "Kalimat baru gagal ditambahkan!";
    $url = "dashboard.php?page=upload&key=kalimat";
    $runQuery = $objKalimat->insertNewKalimat($data_input);
  }
  
  if ($runQuery == 1) {
    $objFlash->showSimpleFlash("BERHASIL UPLOAD","success",$pesanBerhasil,$url,$confirmButtonColor="#4BB543",$cancelButtonColor = "#d33","Upload");
  }else{
    $objFlash->showSimpleFlash("GAGAL UPLOAD","error",$pesanGagal,$url,$confirmButtonColor="#d33",$cancelButtonColor = "#d33","Kembali");
  }

}

?>