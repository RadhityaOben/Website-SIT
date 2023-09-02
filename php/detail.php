<?php
session_start();
include "../db/function.php";

if (isset($_SESSION['login'])) {
	$isLogin = true;
	if ($_SESSION['permission'] == 'superadmin') {
		$permission = 'superadmin';
	} else if ($_SESSION['permission'] == 'admin') {
		$permission = 'admin';
	} else if ($_SESSION['permission'] == 'user') {
		$permission = 'user';
	}
}
// Get POST
if (isset($_SESSION['detail-page'])) {
	if ($_SESSION['detail-cond'] == 'detailAll') {
		$_POST['detailAll'] = true;
	} else {
		$_POST['detail'] = true;
	}
	$_POST['id-cat'] = $_SESSION['id-cat'];
	$_POST['id-item'] = $_SESSION['id-item'];
}

if (isset($_POST['detail'])) {
	$_SESSION['detail-page'] = true;
	$idCat = $_POST['id-cat'];
	$idItem = "";

	$_SESSION['id-cat'] = $idCat;
	$_SESSION['id-item'] = $idItem;
	$_SESSION['detail-cond'] = 'detail';
} else if (isset($_POST['detailAll'])) {
	$_SESSION['detail-page'] = true;
	$idCat = $_POST['id-cat'];
	$idItem = $_POST['id-item'];

	$_SESSION['id-cat'] = $idCat;
	$_SESSION['id-item'] = $idItem;
	$_SESSION['detail-cond'] = 'detailAll';
}

if ($_SESSION['detail-page'] == false) {
	header("Location: produk");
	exit;
}

// Get Data
$items = query("SELECT i.*, c.cat_name FROM item i NATURAL JOIN category c WHERE c.id_cat = '$idCat'" . (($idItem != "") ? " AND i.id_item = '$idItem'" : ""));

include "../section/head.php";
?>

<body>
	<?php include "../section/header.php"; ?>

	<!-- Content -->
	<div class="content" id="content">
		<div class="container-lg py-5">
			<?php
			$itemCount = 0;
			foreach ($items as $i) {

				if ($itemCount++ == 0) { ?>
					<h1 class="text-center"><b><?= $i['cat_name']; ?></b></h1>
					<div class="border mx-5 mt-3"></div>
				<?php } ?>

				<div class="row d-flex align-items-center">
					<div class="col-lg-6 px-5">
						<div class="px-4 py-5">
							<h3>Spesifikasi</h3>
							<div class="underline"></div>
						</div>
						<div class="d-flex justify-content-center px-3">
							<p><?= $i['item_desc']; ?></p>
						</div>
						<table class="table table-borderless d-flex justify-content-center">
							<tr>
								<td class="col-md-2">Merk</td>
								<td class="col-md-1">:</td>
								<td class="col-md-9"><?= $i['item_brand']; ?></td>
							</tr>
							<tr>
								<td>Model</td>
								<td>:</td>
								<td><?= $i['item_type']; ?></td>
							</tr>
							<tr>
								<td>Ukuran</td>
								<td>:</td>
								<td><?= $i['item_spec1']; ?></td>
							</tr>
							<tr>
								<td>Ketebalan</td>
								<td>:</td>
								<td><?= $i['item_spec2']; ?></td>
							</tr>
							<tr>
								<td>Material</td>
								<td>:</td>
								<td><?= $i['item_spec3']; ?></td>
							</tr>
							<tr>
								<td>Aplikasi</td>
								<td>:</td>
								<td><?= $i['item_spec4']; ?></td>
							</tr>
						</table>
						<div class="row justify-content-center">
							<a href="<?= $i['catalogue']; ?>" class="col-4" target="<?= (strlen($i['catalogue']) > 1) ? '_blank' : '_self'; ?>">
								<div class="btn btn-outline-secondary">

									<h3>
										<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-file-text" viewBox="0 0 16 16">
											<path d="M5 4a.5.5 0 0 0 0 1h6a.5.5 0 0 0 0-1H5zm-.5 2.5A.5.5 0 0 1 5 6h6a.5.5 0 0 1 0 1H5a.5.5 0 0 1-.5-.5zM5 8a.5.5 0 0 0 0 1h6a.5.5 0 0 0 0-1H5zm0 2a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1H5z" />
											<path d="M2 2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2zm10-1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1z" />
										</svg>
										Katalog
									</h3>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-6 d-flex justify-content-center py-2">
						<img src="assets/img/<?= ($i['item_img'] == 'nophoto.png') ? $i['item_img'] : 'items/' . $i['item_img']; ?>" class="img-thumbnail img-detail" alt="<?= $i['cat_name']; ?>">

					</div>
				</div>
			<?php } ?>
		</div>
	</div>

	<?php
	include "../section/contact.php";
	include "../section/footer.php";
	?>

	<script>
		document.getElementById("product").classList.add("active");
	</script>
</body>

</html>