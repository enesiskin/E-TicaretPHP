<?php include'header.php'; ?>






<div class="container">

	<div class="clearfix"></div>
	<div class="lines"></div>
</div>

<div class="container">
	<div class="row">
		<div class="col-md-12">

		</div>
	</div>
	<div class="title-bg">
		<div class="title">Sepet</div>
	</div>

	<div class="table-responsive">
		<table class="table table-bordered chart">
			<thead>
				<tr>
					<th>Remove</th>
					<th>Ürün Resim</th>
					<th>Ürün Adı</th>
					<th>Ürün Kodu</th>
					<th>Adet</th>
					<th>Ürün Fiyatı</th>						
					<th>Toplam Ürün Fiyatı</th>
				</tr>
			</thead>
			<tbody>



				<?php

				$kullanici_id=$kullanicicek['kullanici_id'];/// KULLANICININ SEPETTEKİ ÜRÜNLERİ
				$sepetsor=$db->prepare("SELECT * FROM sepet WHERE kullanici_id=:id");
				$sepetsor->execute(array(
					'id' => $kullanici_id
					));

				

				while ($sepetcek=$sepetsor->fetch(PDO::FETCH_ASSOC)){ 
				
				$urun_id=$sepetcek['urun_id'];  //// HER ÜRÜN İÇİN ID ALIP SORGUYA EKLEME
				$urunsor=$db->prepare("SELECT * FROM urun WHERE urun_id=:urun_id");
				$urunsor->execute(array(
					'urun_id' => $urun_id
					));

					$uruncek=$urunsor->fetch(PDO::FETCH_ASSOC); 

					$toplam= $uruncek['urun_fiyat'] * $sepetcek['urun_adet'];
					$toplam_fiyat+=$uruncek['urun_fiyat']*$sepetcek['urun_adet'];
					?>
					<tr>
						<td><form><input type="checkbox"></form></td>
						<td><img src="images\demo-img.jpg" width="100" alt=""></td>
						<td><?php echo $uruncek['urun_ad']; ?></td>
						<td><?php echo $uruncek['urun_id']; ?></td>
						<td><input type="text" class="form-control quantity" value="<?php echo $sepetcek['urun_adet']; ?>"></td>					
						<td><?php echo $uruncek['urun_fiyat']; ?> TL </td>
						<td><?php echo $toplam;?> TL </td>
						
					</tr>

					<?php } ?>					
				</tbody>
			</table>
		</div>
		<div class="row">
			<div class="col-md-6">			

			</div>
			<div class="col-md-3 col-md-offset-3">
				<div class="subtotal-wrap">
					<div class="subtotal">
						 					
					</div>
					<div class="total">Toplam : <span class="bigprice"><?php echo $toplam_fiyat; ?>TL</span></div>				
					<div class="clearfix"></div>
					<a href="odeme.php" class="btn btn-default btn-yellow">Alışverişe Devam Et</a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="spacer"></div>
	</div>

	<?php include'footer.php'; ?>