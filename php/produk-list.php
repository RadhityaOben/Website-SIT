<?php
session_start();
include "../db/function.php";

unsetIdSession();

if (isset($_SESSION['login']) === true) {
	if ($_SESSION['permission'] == 'superadmin') {
		$permission = 'superadmin';
	} else if ($_SESSION['permission'] == 'admin') {
		$permission = 'admin';
	} else if ($_SESSION['permission'] == 'user') {
		header("Location: ./");
		exit;
	}
	$isLogin = true;
} else {
	header("Location: ./");
	exit;
}
// Get Data
$category = checkCategory();

if (isset($_GET['allProduct'])) {
	$allProduct = true;
	$items = query("SELECT c.cat_name, c.id_cat, c.parent_id, i.* FROM item i NATURAL JOIN category c ORDER BY c.parent_id ASC");
	$header = "<b>Detail Produk</b>";
} else {
	$allProduct = false;
	if (isset($_POST['more']) || isset($_POST['backParent'])) {
		$items = query("SELECT c.* FROM category c WHERE c.parent_id = '" . $_POST['parentId'] . "' AND c.id_cat != '" . $_POST['parentId'] . "' ORDER BY c.cat_name ASC");
		$header = "<b>Daftar Produk</b>" . "<h6>" . parentNameLink($_POST['parentId']) . "</h6>";
	} else {
		$items = query("SELECT c.* FROM category c WHERE c.parent_id = c.id_cat ORDER BY c.parent_id ASC");
		$header = "<b>Daftar Produk</b>";
	}
}

include "../section/head.php";
?>

<body>

	<?php include "../section/header.php"; ?>

	<!-- Content -->
	<div class="content">

		<!-- Button -->
		<div class="button-add pt-3 px-3">
			<div class="row">
				<div class="col-md-6">
					<h2><?= $header; ?></h2>
				</div>
				<div class="col-md-6 text-end">
					<?php if ($allProduct == false) { ?>
						<button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#tambahKategoriModal">
							Tambah Kategori
						</button>
						<a href="?allProduct" class="btn btn-secondary">Produk</a>
					<?php } else if ($allProduct == true) { ?>
						<button type="button" class="btn btn-info" data-bs-toggle="modal" data-bs-target="#tambahProdukModal">
							Tambah Produk
						</button>
						<a href="admin" class="btn btn-secondary">Kategori</a>
					<?php } ?>
				</div>
			</div>
		</div>
		<!-- End of Button -->

		<!-- Modal Add -->
		<?php if ($allProduct == true) {
			include "../section/modalAddItem.php";
		} else {
			include "../section/modalAddCategory.php";
		} ?>
		<!-- End of Modal Add -->

		<!-- Main Table -->
		<div class="py-5 px-3" id="content">
			<table class="table table-striped border" id="itemTable" cellspacing="0" width="100%">

				<!-- Table Header -->
				<thead>
					<tr>
						<td class="col-1">No</td>
						<td class="col-2">Gambar</td>
						<?php if ($allProduct == false) { ?>
							<td class="col-7">Nama Produk</td>
						<?php } else if ($allProduct == true) { ?>
							<td class="col-1">Merk</td>
							<td class="col-3">Nama Produk</td>
							<td class="col-2">Kategori</td>
						<?php } ?>
						<td class="col-2">Aksi</td>
					</tr>
				</thead>
				<!-- End of Table Header -->

				<!-- Table Body -->
				<tbody>
					<?php
					$nomor = 1;
					foreach ($items as $i) {
						if ($allProduct == true) {
							if ($i['item_img'] == 'nophoto.png') {
								$photo =  $i['item_img'];
							} else {
								$photo = 'items/' . $i['item_img'];
							}
						} else {
							if ($i['cat_img'] == 'nophoto.png') {
								$photo =  $i['cat_img'];
							} else {
								$photo = 'category/' . $i['cat_img'];
							}
						}
					?>
						<tr>
							<td><?= $nomor++; ?></td>
							<td class="text-center"><img src="assets/img/<?= $photo; ?>" alt="<?= $i['cat_name']; ?>" class="img-thumbnail image-max-height"></td>
							<?php if ($allProduct == true) { ?>
								<td><?= $i['item_brand']; ?></td>
							<?php } ?>
							<td><?= $i['cat_name']; ?></td>
							<?php if ($allProduct == true) { ?>
								<td><?= parentName($i['parent_id']); ?></td>
							<?php } ?>
							<td class="">
								<?php if ($allProduct == true) { ?>
									<form action="detail" method="POST">
										<input type="text" name="id-item" value="<?= $i['id_item']; ?>" hidden>
										<input type="text" name="id-cat" value="<?= $i['id_cat']; ?>" hidden>
										<button class="btn btn-info mb-2" type="submit" name="detailAll">Detail</button>
									</form>
									<a href="delete?id=<?= $i['id_item']; ?>&deleteItems" class="btn btn-danger mb-3" onclick="return confirm('Apa kamu yakin ingin menghapus produk ini?')">Hapus</a>
									<button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#editProdukModal<?= $i['id_item']; ?>">Edit</button>
									<?php	} else if ($allProduct == false) {
									$checkId = count(query("SELECT c.* FROM category c WHERE c.parent_id = '" . $i['id_cat'] . "' AND c.id_cat != '" . $i['id_cat'] . "'"));
									if ($checkId != 0) {
									?>
										<form action="admin" method="POST">
											<input type="text" name="parentId" value="<?= $i['id_cat']; ?>" hidden>
											<button class="btn btn-danger mb-2" type="submit" name="more">More</button>
										</form>
									<?php } else if ($checkId == 0) { ?>
										<form action="detail" method="POST">
											<input type="text" name="id-cat" value="<?= $i['id_cat']; ?>" hidden>
											<button class="btn btn-info mb-2" type="submit" name="detail">Detail</button>
										</form>
										<a href="delete?id=<?= $i['id_cat']; ?>&deleteCategory" class="btn btn-danger mb-3" onclick="return confirm('Apa kamu yakin ingin menghapus kategori ini? Semua barang dengan kategori ini juga akan ikut terhapus!')">Hapus</a>
									<?php } ?>
									<button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#editKategoriModal<?= $i['id_cat']; ?>">Edit</button>
								<?php } ?>
							</td>
						</tr>
					<?php
						if ($allProduct == true) {
							include "../section/modalEditItem.php";
						} else {
							include "../section/modalEditCategory.php";
						}
					}
					?>
				</tbody>
			</table>
		</div>
		<!-- End of Main Table -->
	</div>
	<!-- End Of Content -->

	<?php
	include "../section/contact.php";
	include "../section/footer.php";
	?>

	<script src="DataTables/datatables.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#itemTable').DataTable();
		});

		document.getElementById("admin").classList.add("active");
	</script>
</body>

</html>