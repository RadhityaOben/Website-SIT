<!-- Modal Add Items -->
<div class="modal fade" id="tambahProdukModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">Tambah Produk</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<form action="add" method="POST" enctype="multipart/form-data">
				<div class="modal-body">
					<input type="text" class="form-control" name="id-item" value="<?= addNewItemId(); ?>" hidden>
					<div class="input-group mb-3">
						<label class="input-group-text" for="kategori">Kategori</label>
						<select class="form-select" id="category" name="category" required>
							<option value="">Pilih...</option>
							<?php foreach ($category as $c) { ?>
								<option value="<?= $c['id_cat']; ?>"><?= $c['cat_name']; ?></option>
							<?php } ?>
						</select>
					</div>
					<div class="input-group mb-3">
						<span class="input-group-text">Deskripsi</span>
						<textarea class="form-control" aria-label="Desc" name="item-desc" placeholder="Deskripsi produk"></textarea>
					</div>
					<div class="row">
						<div class="input-group mb-3 col-md-2 w-50">
							<label class="input-group-text" for="item-merk">Merk</label>
							<input type="text" class="form-control" name="item-merk">
						</div>
						<div class="input-group mb-3 col-md-4 w-50">
							<label class="input-group-text" for="item-type">Model</label>
							<input type="text" class="form-control" name="item-type">
						</div>
					</div>
					<div class="row">
						<div class="input-group mb-3 col-md-2 w-50">
							<label class="input-group-text" for="item-size">Ukuran</label>
							<input type="text" class="form-control" name="item-size">
						</div>
						<div class="input-group mb-3 col-md-2 w-50">
							<label class="input-group-text" for="item-thickness">Ketebalan</label>
							<input type="text" class="form-control" name="item-thickness">
						</div>
					</div>
					<div class="row">
						<div class="input-group mb-3">
							<label class="input-group-text" for="item-catalogue">Katalog</label>
							<input type="url" class="form-control" name="item-catalogue" placeholder="https://....">
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="row">
								<div class="input-group mb-3">
									<label class="input-group-text" for="item-material">Material</label>
									<input type="text" class="form-control" name="item-material">
								</div>
							</div>
							<div class="row">
								<div class="input-group mb-3">
									<label class="input-group-text" for="item-usage">Aplikasi</label>
									<input type="text" class="form-control" name="item-usage">
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="row">
								<div class="input-group mb-3">
									<input type="file" class="form-control" id="inputPhoto" name="item-photo" onchange="previewAdd()">
								</div>
								<div class="w-100 d-flex justify-content-center">
									<img id="frameAdd" src="assets/img/nophoto.png" class="img-fluid img-thumbnail image-max-height">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
					<button type="submit" class="btn btn-info" name="addItems">Simpan</button>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- End of Modal Add Items -->