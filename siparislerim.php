<?php include 'header.php'; ?>

<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="page-title-wrap">
				<div class="page-title-inner">
					<div class="row">
						<div class="col-md-12">
							<div class="bigtitle">Sipariş Bilgilerim</div>
							<p >Vermiş olduğunuz siparişlerinizi listeliyorsunuz</p>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>

	<form action="nedmin/netting/islem.php" method="POST" class="form-horizontal checkout" role="form">
		<div class="row">
			<div class="col-md-12">
				<div class="title-bg">
					<div class="title">Sipariş Bilgileri</div>
				</div>

				<div class="table-responsive">
					<table class="table table-bordered chart">
						<thead>
							<tr>
								<
								<th>Sipariş No</th>
								<th>Sipariş Zamanı</th>
								<th>Sipariş Toplam</th>
								<th>Ödeme Tipi</th>
								<th>Durumu</th>
								<th></th>
								
							</tr>
						</thead>
						<tbody>
							<?php  
							$kullanici_id=$kullanicicek['kullanici_id'];/// KULLANICININ siparisTEKİ ÜRÜNLERİ
							$siparissor=$db->prepare("SELECT * FROM siparis WHERE kullanici_id=:id");
							$siparissor->execute(array(
								'id' => $kullanici_id
								));

				

							while ($sipariscek=$siparissor->fetch(PDO::FETCH_ASSOC)){ 
								?>

								<tr>

									<td><?php echo $sipariscek['siparis_id']; ?></td>
									<td><?php echo $sipariscek['siparis_zaman']; ?></td>
									<td><?php echo $sipariscek['siparis_toplam']; ?></td>
									<td><?php echo $sipariscek['siparis_tip']; ?></td>
									<td><?php echo $sipariscek['siparis_durum']; ?></td>

									<td><a href=""><button class="btn btn-primary btn-xs">Detay</button></a></td>
								</tr>
								<?php } ?>

							</tbody>
						</table>
					</div>











				</div>

			</div>
		</div>
	</form>
	<div class="spacer"></div>
</div>

<?php include 'footer.php'; ?>