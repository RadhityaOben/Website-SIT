<!-- Modal Edit Category -->
<div class="modal fade" id="editKategoriModal<?= $i['id_cat']; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">Tambah Kategori</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<form action="edit" method="POST" enctype="multipart/form-data">
				<div class="modal-body">
					<input type="text" class="form-control" name="id-cat" value="<?= $i['id_cat']; ?>" hidden>
					<div class="input-group mb-3">
						<label class="input-group-text" for="parentId">Turunan</label>
						<select class="form-select" id="parentId" name="parent-id" required>
							<option value="">Pilih...</option>
							<option value="<?= addNewCategoryId(); ?>">Buat Baru</option>
							<?php foreach ($category as $c) { ?>
								<option value="<?= $c['id_cat']; ?>" <?php if ($i['parent_id'] == $c['id_cat']) { ?> selected="selected" <?php } ?>><?= $c['cat_name']; ?></option>
							<?php } ?>
						</select>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="row">
								<div class="input-group mb-3">
									<label class="input-group-text" for="cat-name">Nama</label>
									<input type="text" class="form-control" name="cat-name" value="<?= $i['cat_name']; ?>" required>
								</div>
							</div>
							<div class="row">
								<div class="input-group mb-3">
									<input type="file" class="form-control" id="inputPhoto" name="item-photo" onchange="previewEdit('<?= $i['id_cat']; ?>')" value="<?= $i['cat_img']; ?>">
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="row">
								<div class="col-sm-5">
									<div class="w-100 d-flex justify-content-center">
										<img src="assets/img/<?= ($i['cat_img'] == 'nophoto.png') ? $i['cat_img'] : 'category/' . $i['cat_img']; ?>" class="img-fluid img-thumbnail image-max-height">
									</div>
								</div>
								<div class="col-sm-2 text-center d-flex justify-content-center align-items-center">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
										<path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
									</svg>
								</div>
								<div class="col-sm-5">
									<div class="w-100 d-flex justify-content-center">
										<img id="frame<?= $i['id_cat']; ?>" src="assets/img/nophoto.png" class="img-fluid img-thumbnail image-max-height">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
						<button type="submit" class="btn btn-info" name="editCategory">Simpan</button>
					</div>
			</form>
		</div>
	</div>
</div>
<!-- End of Modal Edit Category -->