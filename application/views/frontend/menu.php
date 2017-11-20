
<header >
	<div class="wrap-header zerogrid">
		<div class="row">
			<div id="cssmenu">
				<ul>
				   <li class='active'><a href="<?php echo base_url(). 'Home';?>">Home</a></li>
				   <li><a href="<?php echo base_url(). 'tentang';?>">Tentang</a></li>
				   <li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
						<span class="glyphicon glyphicon-triangle-bottom" style="font-family:Helvetica Neue,Helvetica,Arial,sans-serif; font-weight:500">Informasi </span></a>
						<ul class="dropdown-menu">
						
						<li><a href="<?php echo base_url(). 'sejarah';?>">Sejarah Desa</a></li>
						<li><a href="<?php echo base_url(). 'struktur';?>">Struktur Organisasi</a></li>
						<li><a href="<?php echo base_url(). 'kepaladesa';?>">Kepala Desa</a></li>
						<li><a href="<?php echo base_url(). 'prestasi';?>">Prestasi Desa</a></li>
						<li><a href="<?php echo base_url(). 'apbd';?>">APBD</a></li>
						<li><a href="<?php echo base_url(). 'kependudukan';?>">Kependudukan</a></li>
						<li><a href="<?php echo base_url(). 'staff';?>">STAFF</a></li>
						<li><a href="<?php echo base_url(). 'petawilayah';?>">Peta Wilayah</a></li>
						</ul>
					</li>
				   <li><a href="<?php echo base_url(). 'berita';?>">Berita</a></li>
				   <li><a href="<?php echo base_url(). 'galeri';?>">Galeri</a></li>
				   <li><a href="<?php echo base_url(). 'kontak';?>">Kontak</a></li>
				</ul>
			</div>
			<?php
					foreach($logo as $s){
					?>
			<a href='<?php echo base_url(). 'Home';?>' class="logo"><img src="<?php echo base_url(). 'frontend/template/images/'?><?php echo $s->foto_logo?>" /></a>
					
			<?php } ?>
		</div>
	</div>
</header>