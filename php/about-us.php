<?php
session_start();
include "../db/function.php";

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
include "../section/head.php";
?>

<body>
	<?php include "../section/header.php" ?>

	<div class="content">
		<div class="row">
			<div class="col-lg-6 d-flex align-items-center">
				<div class="container-lg px-4 py-3">
					<div class="text-center">
						<h1><b>Tentang Kami</b></h1>
						<div class="border mx-5 my-3"></div>
					</div>
					<p>
						PT. SAMUDERA INSAN TEKNIK didirikan pada tahun 2016, dengan fokus usaha di bidang distribusi/supply untuk industri yang berada di seputar Bandung dan Jawa Barat. Kami memiliki komitmen untuk terus melayani para pelanggan kami dengan produk produk yang berkualitas bagi penunjang kegiatan industri mereka. Selain itu juga kami terus memperbaharui informasi dari para principal mengenai perkembangan industri sehingga bisa di sampaikan kepada pelanggan sebagai bentuk layanan kami terhadap pelanggan.

						PT. SAMUDERA INSAN TEKNIK adalah transformasi dari perusahaan sebelumnya yang telah beroperasi lebih dari 25 tahun, telah banyak yang menjadi pelanggan kami baik pada project project mereka maupun pembelian rutin.

						Tenaga kerja yang terampil dan team work yang baik memberikan kontribusi yang optimal dalam menjalankan roda perusahaan sehingga tercapai efektifitas dan efisiensi perusahaan.

						Begitu juga dukungan armada yang kami gunakan untuk ekspedisi barang barang kepada pelanggan dalam waktu rata rata 1-2 hari kerja pengiriman barang bisa langsung diterima oleh pelanggan.
					</p>
				</div>
			</div>
			<div class="col-lg-6">
				<img src="assets/img/nophoto.png" alt="about-us" class="cover img-fluid h-100">
			</div>
		</div>
	</div>

	<?php
	include "../section/contact.php";
	include "../section/footer.php";
	?>
	<script>
		document.getElementById("aboutUs").classList.add("active");
	</script>
</body>