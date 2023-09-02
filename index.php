<?php
session_start();
include "db/function.php";

unsetIdSession();

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
// Get Data
$items = query("SELECT c.* FROM category c WHERE c.parent_id = c.id_cat ORDER BY c.parent_id ASC");
?>
<!doctype html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>PT. Samudera Insan Teknik</title>
	<link rel="icon" href="assets/icon/favicon.ico" type="image/x-icon">

	<link rel="stylesheet" href="assets/css/styles.css">

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>

<body>

	<!-- Logo -->
	<div class="logo" id="logo">
		<div class="d-flex justify-content-center py-3">
			<a href="">
				<img src="assets/img/logo.png" class="img-fluid" alt="PT. Samudera Insan Teknik">
			</a>
		</div>
	</div>

	<!-- Header -->
	<div class="container my-3">
		<div class="card shadow-sm">
			<div class="main-header">

				<!-- Header -->
				<div class="card-header" style="padding: 0 !important;">
					<div class="header" id="header">
						<?php include "section/headerIndex.php" ?>
					</div>

					<!-- Header Scroll -->
					<div class="headerScr fixed-top shadow-sm" id="headerScr">
						<?php include "section/headerIndex.php" ?>
					</div>
				</div>
			</div>

			<!-- Carousel -->
			<div class="container">
				<div id="carouselGalleryIndicators" class="carousel slide pt-2" data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselGalleryIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselGalleryIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselGalleryIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
						<button type="button" data-bs-target="#carouselGalleryIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="assets/img/carousel/carousel-1.jpg" class="d-block w-100" alt="...">
							<div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50 rounded">
								<h5>Sumber Daya Manusia</h5>
								<p>Karyawan dengan keterampilan baik, disiplin, dan pekerja keras</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="assets/img/carousel/carousel-2.jpg" class="d-block w-100" alt="...">
							<div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50 rounded">
								<h5>Gudang</h5>
								<p>Kapasitas gudang yang besar dan teratur dalam penempatan barang memberikan akses lebih cepat kepada karyawan dalam menyiapkan pesanan</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="assets/img/carousel/carousel-3.jpg" class="d-block w-100" alt="...">
							<div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50 rounded">
								<h5>Ekspedisi</h5>
								<p>Dengan dukungan sumber daya yang memadai dan baru agar dapat memberikan pelayanan yang maksimal kepada seluruh pelanggan</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="assets/img/carousel/carousel-4.jpg" class="d-block w-100" alt="...">
							<div class="carousel-caption d-none d-md-block bg-dark bg-opacity-50 rounded">
								<h5>Alat Berat</h5>
								<p>Penggunaan alat berat membantu pekerjaan menjadi lebih cepat dan efektif</p>
							</div>
						</div>
					</div>
					<button class="carousel-control-prev" type="button" data-bs-target="#carouselGalleryIndicators" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button" data-bs-target="#carouselGalleryIndicators" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>

			<!-- Underline -->
			<div class="border mx-5 my-3"></div>

			<!-- Content -->
			<div class="content" id="content">
				<div class="container p-5">
					<div class="row">
						<div class="text-center pb-3">
							<h1><b>Produk</b></h1>
						</div>
					</div>
					<div class="row px-5">
						<?php
						$curName = "";
						foreach ($items as $i) {
							if ($curName != $i['cat_name']) {
								$curName = $i['cat_name'];
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
												$checkId = count(query("SELECT c.* FROM category c WHERE c.parent_id = '" . $i['id_cat'] . "' AND c.id_cat != '" . $i['id_cat'] . "'"));
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
														<input type="text" name="name" value="<?= $i['cat_name']; ?>" hidden>
														<input type="text" name="id-cat" value="<?= $i['id_cat']; ?>" hidden>
														<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
															<div class="text-center"><button class="btn btn-outline-dark mt-auto" type="submit" name="detail">Detail</button></div>
														</div>
													</form>
												<?php } ?>
											</li>
										</ul>
									</div>
								</div>
						<?php }
						} ?>
					</div>
				</div>
			</div>
			<!-- End of Content -->

		</div>
	</div>

	<!-- Contact Us -->
	<div class="contact">
		<div class="container">
			<div class="d-flex justify-content-around py-4">
				<h4 class="text-white"><b>Ada yang ingin ditanyakan?</b></h4>
				<a href="contact-us" class="btn btn-info">Kontak Kami</a>
			</div>
		</div>
	</div>


	<?php include "section/footer.php"; ?>

</body>

</html>