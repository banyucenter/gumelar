<section id="container">
	<div class="wrap-container clearfix">
		<div id="main-content">
			<div class="sub-header">
				<div class="zerogrid">
					<h1>KONTAK KAMI</h1>
					Silahkan gunakan form yang tersedia untuk menghubungi kami untuk mendapatkan informasi lebih lanjut.
				</div>
			</div>
			<div class="zerogrid">
				<div class="row">
					
					<div class="col-2-3">
						<div class="wrap-col">
							<div class="contact">
								<h5 class="color-orange">Contact Form</h5>
								<!--Warning-->
								<center></center>
								<!---->
								<div id="contact_form">
									<form name="form1" id="ff" method="post" action="<?php echo base_url(). 'administrator/kontak/tambah_aksi'; ?>">
										<label class="row">
											<input type="text" name="nama" id="nama" placeholder="Masukan Nama" required="required" />
										</label>
										<label class="row">
											<input type="text" name="email" id="email" placeholder="Masukan Email" required="required" />
										</label>
										<label class="row">
											<input type="text" name="no_telp" id="no_telp" placeholder="Masukan Telp" required="required" />
										</label>
										<label class="row">
											<textarea name="message" id="isi_pesan" class="form-control" rows="4" cols="25" required="required"placeholder="Isi Pesan"></textarea>
										</label>
										<center><input class="btn" type="submit" name="Submit" value="Submit"></center>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="col-1-3">
						<div class="wrap-col">
							<h5 class="color-orange">Contact Info</h5>
								<span>LAYANAN INFORMASI DAN ADUAN MASYARAKAT DESA GUMELAR</span>
								<p>Anda bisa berkonsultasi pada layanan kontak form ini.</p>
								<p>JL.Raya Desa Gumelar No.31 Banyumas Jawa Tengah</p>
								   <p>+6221 888 888 90 <br>
									+6221 888 88891</p>
								<p>info@desagumelar.com</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
