<nav class="navbar navbar-expand-lg">
	<div class="container-fluid">
		<a href="./" class="navbar-brand fs-2 py-0 text-white" id="logoSIT"><b>SIT</b></a>
		<button class="navbar-toggler" style="background-color:white;" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon" style="color:white;"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item">
					<a href="./" class="nav-link link-light link-opacity-75 link-opacity-100-hover" id="home">Beranda</a>
				</li>
				<li class="nav-item">
					<a href="produk" class="nav-link link-light link-opacity-75 link-opacity-100-hover" id="product">Produk</a>
				</li>
				<li class="nav-item">
					<a href="about-us" class="nav-link link-light link-opacity-75 link-opacity-100-hover" id="aboutUs">Tentang Kami</a>
				</li>
				<li class="nav-item">
					<a href="contact-us" class="nav-link link-light link-opacity-75 link-opacity-100-hover" id="contactUs">Kontak</a>
				</li>
			</ul>
			<?php
			if (isset($isLogin) === true) {
				if ($_SESSION['permission'] === 'admin' || $_SESSION['permission'] === 'superadmin') { ?>
					<a href="admin" class="nav-link px-3 py-2 link-light link-opacity-75 link-opacity-100-hover" id="admin">Admin</a>
					<a href="logout" class="nav-link px-3 py-2 link-light link-opacity-75 link-opacity-100-hover">Logout</a>
			<?php }
			} ?>
		</div>
	</div>
</nav>