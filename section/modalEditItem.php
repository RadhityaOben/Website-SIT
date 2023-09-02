<!-- Modal Edit Items -->
<div class="modal fade" id="editProdukModal<?= $i['id_item']; ?>" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h1 class="modal-title fs-5" id="exampleModalLabel">Edit Produk</h1>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<form action="edit" method="POST" enctype="multipart/form-data">
				<div class="modal-body">
					<input type="text" class="form-control" name="id-item" value="<?= $i['id_item']; ?>" hidden>
					<div class="input-group mb-3">
						<label class="input-group-text" for="kategori">Kategori</label>
						<select class="form-select" id="category" name="category" required>
							<option value="">Pilih...</option>
							<?php foreach ($category as $c) { ?>
								<option value="<?= $c['id_cat']; ?>" <?php if ($c['id_cat'] == $i['id_cat']) { ?> selected="selected" <?php } ?>><?= $c['cat_name']; ?></option>
							<?php } ?>
						</select>
					</div>
					<div class="input-group mb-3">
						<span class="input-group-text">Deskripsi</span>
						<textarea class="form-control" aria-label="Desc" name="item-desc" placeholder="Deskripsi produk"><?= $i['item_desc']; ?></textarea>
					</div>
					<div class="row">
						<div class="input-group mb-3 col-md-2 w-50">
							<label class="input-group-text" for="item-merk">Merk</label>
							<input type="text" class="form-control" name="item-merk" <?php if ($i['item_brand'] != '-') { ?> value="<?= $i['item_brand']; ?>" <?php } ?>>
						</div>
						<div class="input-group mb-3 col-md-4 w-50">
							<label class="input-group-text" for="item-type">Model</label>
							<input type="text" class="form-control" name="item-type" <?php if ($i['item_type'] != '-') { ?> value="<?= $i['item_type']; ?>" <?php } ?>>
						</div>
					</div>
					<div class="row">
						<div class="input-group mb-3 col-md-2 w-50">
							<label class="input-group-text" for="item-size">Ukuran</label>
							<input type="text" class="form-control" name="item-size" <?php if ($i['item_spec1'] != '-') { ?> value="<?= $i['item_spec1']; ?>" <?php } ?>>
						</div>
						<div class="input-group mb-3 col-md-2 w-50">
							<label class="input-group-text" for="item-thickness">Ketebalan</label>
							<input type="text" class="form-control" name="item-thickness" <?php if ($i['item_spec2'] != '-') { ?> value="<?= $i['item_spec2']; ?>" <?php } ?>>
						</div>
					</div>
					<div class="row">
						<div class="input-group mb-3">
							<label class="input-group-text" for="item-catalogue">Katalog</label>
							<input type="url" class="form-control" name="item-catalogue" placeholder="https://...." <?php if ($i['catalogue'] != '#') { ?> value="<?= $i['catalogue']; ?>" <?php } ?>>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="row">
								<div class="input-group mb-3">
									<label class="input-group-text" for="item-material">Material</label>
									<input type="text" class="form-control" name="item-material" <?php if ($i['item_spec3'] != '-') { ?> value="<?= $i['item_spec3']; ?>" <?php } ?>>
								</div>
							</div>
							<div class="row">
								<div class="input-group mb-3">
									<label class="input-group-text" for="item-usage">Aplikasi</label>
									<input type="text" class="form-control" name="item-usage" <?php if ($i['item_spec4'] != '-') { ?> value="<?= $i['item_spec4']; ?>" <?php } ?>>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="row">
								<div class="input-group mb-3">
									<input type="file" class="form-control" id="editPhoto" name="item-photo" onchange="previewEdit('<?= $i['id_item']; ?>')">
								</div>
								<div class="row">
									<div class="col-sm-5">
										<div class="w-100 d-flex justify-content-center">
											<img src="assets/img/<?= ($i['item_img'] == 'nophoto.png') ? $i['item_img'] : 'items/' . $i['item_img']; ?>" class="img-fluid img-thumbnail image-max-height">
										</div>
									</div>
									<div class="col-sm-2 text-center h-100 d-flex justify-content-center align-items-center">
										<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
											<path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
										</svg>
									</div>
									<div class="col-sm-5">
										<div class="w-100 d-flex justify-content-center">
											<img id="frame<?= $i['id_item']; ?>" src="assets/img/nophoto.png" class="img-fluid img-thumbnail image-max-height">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
					<button type="submit" class="btn btn-info" name="editItems">Simpan</button>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- End of Modal Edit Items -->