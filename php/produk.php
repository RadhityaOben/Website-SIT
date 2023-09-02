<?php
session_start();
include "../db/function.php";

unsetIdSession();

if (isset($_SESSION['login']) === true) {
	$isLogin = true;
	if ($_SESSION['permission'] == 'superadmin') {
		$permission = 'superadmin';
	} else if ($_SESSION['permission'] == 'admin') {
		$permission = 'admin';
	} else if ($_SESSION['permission'] == 'user') {
		$permission = 'user';
	}
}
// Get Data
$category = checkCategory();

if (isset($_POST['more']) || isset($_POST['backParent'])) {
	$items = query("SELECT c.id_cat, c.cat_img, c.cat_name FROM category c WHERE c.parent_id = '" . $_POST['parentId'] . "' AND c.id_cat != '" . $_POST['parentId'] . "' ORDER BY c.cat_name ASC");
} else {
	$items = query("SELECT c.id_cat, c.cat_img, c.cat_name FROM category c WHERE c.parent_id = c.id_cat ORDER BY c.parent_id ASC");
}

include "../section/head.php";
?>

<body>
	<?php include "../section/header.php"; ?>

	<!-- Content -->
	<div class="content" id="content">
		<div class="container-lg">
			<div class="row pt-3">
				<div class="text-center">
					<h1><b>Produk</b></h1>
					<div class="border mx-5 my-3"></div>
				</div>
			</div>
			<div class="row px-5 mx-2">
				<?php
				foreach ($items as $i) {
				?>
					<div class="col-lg-4 mb-5">
						<div class="card h-100 custom-card">
							<div class="h-75 d-flex align-items-center">
								<!-- Product image-->
								<img class="card-img-top" src="assets/img/<?= ($i['cat_img'] == 'nophoto.png') ? $i['cat_img'] : 'category/' . $i['cat_img']; ?>" alt="<?= $i['cat_name']; ?>">
							</div>

							<ul class="list-group list-group-flush">
								<li class="list-group-item">
									<!-- Product details-->
									<div class="card-body p-4">
										<div class="text-center">
											<!-- Product name-->
											<h5 class="fw-bolder"><?= $i['cat_name']; ?></h5>
										</div>
									</div>
									<!-- Product actions-->
									<?php
									$checkId = count(query("SELECT c.id_cat FROM category c WHERE c.parent_id = '" . $i['id_cat'] . "' AND c.id_cat != '" . $i['id_cat'] . "'"));
									if ($checkId != 0) {
									?>
										<form action="produk" method="POST">
											<input type="text" name="parentId" value="<?= $i['id_cat']; ?>" hidden>
											<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
												<div class="text-center"><button class="btn btn-outline-secondary mt-auto" type="submit" name="more">Lihat Lebih Banyak</button></div>
											</div>
										</form>
									<?php } else if ($checkId == 0) { ?>
										<form action="detail" method="POST">
											<input type="text" name="id-cat" value="<?= $i['id_cat']; ?>" hidden>
											<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
												<div class="text-center"><button class="btn btn-main-theme mt-auto" type="submit" name="detail">Detail</button></div>
											</div>
										</form>
									<?php } ?>
								</li>
							</ul>
						</div>
					</div>
				<?php } ?>
			</div>
		</div>
	</div>
	<!-- End of Content -->

	<?php
	include "../section/contact.php";
	include "../section/footer.php";
	?>
	<script>
		document.getElementById("product").classList.add("active");
	</script>

</body>

</html>