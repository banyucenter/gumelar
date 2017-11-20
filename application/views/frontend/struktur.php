

<!--////////////////////////////////////Container-->
<section id="container">
	<div class="wrap-container clearfix">
		<div class="sub-header">
			<div class="zerogrid"> 
				<h1>Struktur Organisasi</h1>
			</div>
		</div>	
		<div class="zerogrid">
			<div class="row">
				<div class="col-full">
					<div class="wrap-col">
						<div id="main-content">
							<div class="wrap-content">
							<table class="table table-striped table-bordered data display nowrap" id="data">

								<thead>
								<tr class="success">
									<th>No</th>
									<th>Nama</th>
									<th>Jabatan</th>
									<th>Keterangan</th>
									<th>No. Telp</th>
									<th>Alamat</th>
									
								</tr>
								</thead>
								<tbody>
								<?php
							$no = 1;
							foreach($struktur as $s){
							?>
							<tr>
								<td><?php echo $no++ ?></td>
								<td><?php echo $s->nama ?></td>
								<td><?php echo $s->jenis_jabatan ?></td>
								<td><?php echo $s->keterangan_jabatan ?></td>
								<td><?php echo $s->no_telp ?></td>
								<td><?php echo $s->alamat ?></td>
								
								
							</tr>
							<?php } ?>
								</tbody>
							</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

