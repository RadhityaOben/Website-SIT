<!-- Modal Add Category -->
<div class="modal fade" id="tambahKategoriModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">Tambah Kategori</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<form action="add" method="POST" enctype="multipart/form-data">
				<div class="modal-body">
					<input type="text" class="form-control" name="id-cat" value="<?= addNewCategoryId(); ?>" hidden>
					<div class="input-group mb-3">
						<label class="input-group-text" for="parentId">Turunan</label>
						<select class="form-select" id="parentId" name="parent-id" required>
							<option value="">Pilih...</option>
							<option value="<?= addNewCategoryId(); ?>">+ Buat Baru</option>
							<?php foreach ($category as $c) { ?>
								<option value="<?= $c['id_cat']; ?>"><?= $c['cat_name']; ?></option>
							<?php } ?>
						</select>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="row">
								<div class="input-group mb-3">
									<label class="input-group-text" for="cat-name">Nama</label>
									<input type="text" class="form-control" name="cat-name" required>
								</div>
							</div>
							<div class="row">
								<div class="input-group mb-3">
									<input type="file" class="form-control" id="inputPhoto" name="item-photo" onchange="previewAdd()">
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="w-100 d-flex justify-content-center">
								<img id="frameAdd" src="assets/img/nophoto.png" class="img-fluid img-thumbnail image-max-height">
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
					<button type="submit" class="btn btn-info" name="addCategory">Simpan</button>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- End of Modal Add Category -->