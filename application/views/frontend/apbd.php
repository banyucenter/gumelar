

<!--////////////////////////////////////Container-->
<section id="container">
	<div class="wrap-container clearfix">
		<div class="sub-header">
			<div class="zerogrid"> 
				<h1>Data APBD</h1>
			</div>
		</div>	
		<div class="zerogrid">
			<div class="row">
				<div class="col-full">
					<div class="wrap-col">
						<div id="main-content">
							<div class="wrap-content">
							<?php
								$no = 1;
								foreach($apbd as $s){
								?> 
								<article>
									<div class="art-header">
										<h1 class="entry-title">APBD <?php echo $s->tahun ?></h1>
									</div>
									<div class="art-content">
										<img src="<?php echo base_url(). 'frontend/template/images/'?><?php echo $s->foto ?>" class='image-responsive' width='200'>
										<p><?php echo $s->keterangan ?></p>
									
								</article>

								<?php } ?>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

