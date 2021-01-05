<?php if (isset($_GET['key'])): ?>
	<?php if ($_GET['key']=="kalimat"): ?>
		<?php
		$url_form = "dashboard.php?page=list&key=kalimat";
		$daftar_kalimat = $objKalimat->getAllKalimat();
		$nomor_table = 1;
		?>
		<div class="col-md-10 p-5 pt-2">
			<h3><i class="fas fa-users-cog mr-2"></i>List Kalimat<hr></h3>
			<table class="table table-hover table-bordered">
				<thead>
					<tr>
						<th scope="col" class="text-center">No</th>
						<th scope="col" class="text-center">Kalimat</th>
						<th scope="col" class="text-center">Kelas</th>
						<th colspan="3" scope="col" class="text-center">Aksi</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($daftar_kalimat as $kalimat): ?>
						<tr>
							<th scope="row"><?= $nomor_table; ?></th>
							<td><?= $kalimat['kalimat']; ?></td>
							<td><?= $kalimat['is_valid']; ?></td>
							<td>
								<button class="btn-primary btn btn-editlist" type="button" title="Edit Kalimat" data-toggle="modal" data-target="#modalList" data-idkalimat="<?= $kalimat['id_kalimat']; ?>" data-key="kalimat">
									<i class="fas fa-edit  text-white rounded"></i>
								</button>
							</td>
							<td>
								<button class="btn-danger btn btn-hapuslist" type="button" title="Hapus Kalimat" data-toggle="modal" data-target="#modalList" data-idkalimat="<?= $kalimat['id_kalimat']; ?>" data-key="kalimat">
									<i class="fas fa-trash-alt text-white rounded"></i>
								</button>
							</td>
						</tr>
						<?php $nomor_table++; ?>
					<?php endforeach ?>
				</tbody>
			</table>
		</div>
	<?php endif ?>
	<?php if ($_GET['key']=="kata"): ?>
		<?php
		$url_form = "dashboard.php?page=list&key=kata";
		$list_kelas_kata = array();
		$list_kelas_kata = $objKelaskata->getAllKelasKata();
		$daftar_kelas_kata = $objKelaskata->getDaftarKelasKata();
		$nomor_table = 1;
		?>
		<div class="col-md-10 p-5 pt-2">
			<h3><i class="fas fa-users-cog mr-2"></i>List Leksikon<hr></h3>
			<table class="table table-hover table-bordered">
				<thead>
					<tr>
						<th scope="col" class="text-center">No</th>
						<th scope="col" class="text-center">Kata Bali</th>
						<th scope="col" class="text-center">Kata Indonesia</th>
						<th scope="col" class="text-center">Kelas Kata</th>
						<th colspan="3" scope="col" class="text-center">Aksi</th>
					</tr>
				</thead>
				<tbody>
					<?php foreach ($list_kelas_kata as $kelas_kata): ?>
						<tr>
							<th scope="row"><?= $nomor_table; ?></th>
							<td><?= $kelas_kata['kata_bali']; ?></td>
							<td><?= $kelas_kata['kata_indonesia']; ?></td>
							<td><?= $kelas_kata['kelas_kata']; ?></td>
							<td>
								<button class="btn-primary btn btn-editlist" type="button" title="Edit Kelas Kata" data-toggle="modal" data-target="#modalList" data-idkata="<?= $kelas_kata['id_kata']; ?>" data-key="kata">
									<i class="fas fa-edit  text-white rounded"></i>
								</button>
							</td>
							<td>
								<button class="btn-danger btn btn-hapuslist" type="button" title="Hapus Kelas Kata" data-toggle="modal" data-target="#modalList" data-idkata="<?= $kelas_kata['id_kata']; ?>" data-key="kata">
									<i class="fas fa-trash-alt text-white rounded"></i>
								</button>
							</td>
						</tr>
						<?php $nomor_table++; ?>
					<?php endforeach ?>
				</tbody>
			</table>
		</div>
	<?php endif ?>
<?php endif ?>
<!-- Modal List -->
<form action="<?= $url_form; ?>" method="post">
	<div class="modal fade" id="modalList" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="modalListLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="modalListLabel">Modal title</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<!-- Modal Body For Edit kalimat -->
					<div id="modalBody-editkalimat">
						<input type="hidden" name="id_kalimat" value="" id="id_kalimat">
						<div class="form-group">
							<label for="edit_kalimat">Kalimat</label>
							<textarea class="form-control" required="true" name="edit_kalimat" id="edit_kalimat"></textarea>
						</div>
						<div class="form-group">
							<label for="edit_is_valid">Pilih ketentuan pola kalimat</label>
							<select  class="form-control" id="edit_is_valid" name="edit_is_valid" required="true" >
								<option value="">- Pilih -</option>
								<option value="true">True</option>
								<option value="false">False</option>
							</select>
						</div>
					</div>
					<!-- Akhir modal body for edit kalimat -->
					<!-- Modal Body For Edit Kelas Kata -->
					<div id="modalBody-editleksikon">
						<input type="hidden" name="id_kata" value="" id="id_kata">
						<div class="form-group">
							<label for="edit_nomor_kata">Nomor Kata</label>
							<input type="number" class="form-control" id="edit_nomor_kata" name="edit_nomor_kata" required="true" value="">
						</div>
						<div class="form-group">
							<label for="edit_kata_bali">Kata Bali</label>
							<input type="text" class="form-control" id="edit_kata_bali" name="edit_kata_bali" required="true" value="">
						</div>
						<div class="form-group">
							<label for="edit_kata_indonesia">Kata Indonesia</label>
							<input type="text" class="form-control" id="edit_kata_indonesia" name="edit_kata_indonesia" required="true" value="">
						</div>
						<div class="form-group">
							<label for="edit_kelas_kata">Kelas Kata</label>
							<select class="form-control" id="edit_kelas_kata" name="edit_kelas_kata" required="true">
								<option value="">- Pilih kelas kata -</option>
								<?php foreach ($daftar_kelas_kata as $kelas_kata): ?>
									<?php $kelas = $kelas_kata['kelas_kata']; ?>
									<option value="<?= $kelas; ?>"><?= $kelas; ?></option>
								<?php endforeach ?>
							</select>
						</div>
						<div id="error_ajax" class="collapse">
							<div class="alert alert-danger" role="alert">
								<strong>Kesalahan </strong>telah terjadi error saat mengunduh data dari server!
							</div>
						</div>
					</div>
					<!-- End Modal Body For Edit Kelas Kata -->
					<!-- Modal Body For Delete Dokumen-->
					<div id="modalBody-hapuslist">
						<p class="lead">
							Yakin ingin hapus ini? Anda tidak dapat mengembalikannya!
						</p>
					</div>
					<!-- End Modal Body For Delete Dokumen -->
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary btn-back" data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary btn-aksi" value="" name="btnAksi">Understood</button>
				</div>
			</div>
		</div>
	</div>
</form>
<!-- Akhir modal list -->
<?php
if (isset($_POST['btnAksi'])) {
	print_r($_POST);
	print_r($_GET);
	if ($_GET['key']=="kalimat") {
			$url = "dashboard.php?page=list&key=kalimat";
		if ($_POST['btnAksi']=="edit") {
			$data_input = array();
			$data_input['id_kalimat'] = $_POST['id_kalimat'];
			$data_input['kalimat'] = $_POST['edit_kalimat'];
			$data_input['is_valid'] = $_POST['edit_is_valid'];
			$runQuery = $objKalimat->updateSpecificKalimat($data_input);
			$title_success = "BERHASIL UPDATE";
			$msg_success = "Kalimat berhasil diperbarui!";
			$title_error = "GAGAL UPDATE";
			$msg_error = "Kalimat gagal diperbarui!";
		}elseif ($_POST['btnAksi']=="hapus") {
			$id_kalimat = $_POST['id_kalimat'];
			$runQuery = $objKalimat->deleteSpecificKalimat($id_kalimat);
			$title_success = "BERHASIL HAPUS";
			$msg_success = "Kalimat berhasil dihapus!";
			$title_error = "GAGAL HAPUS";
			$msg_error = "Kalimat gagal dihapus!";
		}
	}elseif ($_GET['key']=="kata") {
			$url = "dashboard.php?page=list&key=kata";
		if ($_POST['btnAksi']=="edit") {
			$data_input = array();
			$data_input['id_kata'] = $_POST['id_kata'];
			$data_input['nomor_kata'] = $_POST['edit_nomor_kata'];
			$data_input['kata_bali'] = $_POST['edit_kata_bali'];
			$data_input['kata_indonesia'] = $_POST['edit_kata_indonesia'];
			$data_input['kelas_kata'] = $_POST['edit_kelas_kata'];
			$runQuery = $objKelaskata->updateSpecificKelasKata($data_input);
			$title_success = "BERHASIL UPDATE";
			$msg_success = "Leksikon berhasil diperbarui!";
			$title_error = "GAGAL UPDATE";
			$msg_error = "Leksikon gagal diperbarui!";
		}elseif ($_POST['btnAksi']=="hapus") {
			$id_kata = $_POST['id_kata'];
			$runQuery = $objKelaskata->deleteSpecificKelasKata($id_kata);
			$title_success = "BERHASIL HAPUS";
			$msg_success = "Leksikon berhasil dihapus!";
			$title_error = "GAGAL HAPUS";
			$msg_error = "Leksikon gagal dihapus!";
		}
	}
	if ($runQuery == true) {
		$objFlash->showSimpleFlash($title_success,"success",$msg_success,$url,$confirmButtonColor="#4BB543",$cancelButtonColor = "#d33","Lihat");
	}else{
		$objFlash->showSimpleFlash($title_error,"error",$msg_error,$url,$confirmButtonColor="#d33",$cancelButtonColor = "#d33","Kembali");
	}
	
}

?>
