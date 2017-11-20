

<!--////////////////////////////////////Container-->
<section id="container">
	<div class="wrap-container clearfix">
		<div class="sub-header">
			<div class="zerogrid"> 
				<h1>Prestasi Desa</h1>
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
									
									<th>Nama Prestasi</th>
									<th>Keterangan</th>
									
								</tr>
								</thead>
								<tbody>
								<?php
							$no = 1;
							foreach($prestasi as $s){
							?>
							<tr>
								<td><?php echo $no++ ?></td>
								
								<td><?php echo $s->nama_prestasi ?></td>
								<td><?php echo $s->isi ?></td>
								
								
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

