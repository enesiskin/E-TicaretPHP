<?php include 'header.php' ?>

<div class="container">
	
	<div class="clearfix"></div>
	<div class="lines"></div>
</div>

<div class="container">
	<div class="row">
		
	</div>

<!-- 
	<div class="title-bg">
		<div class="title">İletişim Sayfası</div>
	</div>
	<div class="row">
		<div class="col-md-4">
			<p class="page-content">
				Bize aşağıdaki bilgilerden ulaşabilirsiniz yada  form maili kullanabilirsiniz.
			</p>
			<ul class="contact-widget">
				<li class="fphone"><?php echo  $ayarcek['ayar_tel'] ?></li>
				<li class="fmobile"><?php echo  $ayarcek['ayar_gsm'] ?></li>
				<li class="fmail lastone"><?php echo  $ayarcek['ayar_mail'] ?></li>
			</ul>
		</div>
		<div class="col-md-7 col-md-offset-1">
			
			Google Maps - Go to the bottom of the page to change settings and map location.
			<div id="googlemaps" class="google-map google-map-footer">
				<iframe
				width="100%"
				height="100%"
				frameborder="0" style="border:0"
				src="https://www.google.com/maps/embed/v1/place?key=<?php echo $ayarcek['ayar_goooglemap']; ?>
				&q=<?php echo $ayarcek['ayar_adres']; ?>" allowfullscreen>
			</iframe>

		</div>
	</div>
</div> -->

<div class="title-bg">
	<div class="title">iletişim Formu</div>
</div>
	<form action="http://www.emrahyuksel.com.tr/btest/mailphp/mail.php" method="POST" role="form"> <!-- MAİL İŞLEMİNDE KULLANILACAK HOST GİRİLİR -->
		
		<div class="form-group">
			<label for="name">Ad Soyad<span>*</span></label>
			<input type="text" name="adsoyad" class="form-control" id="name">
		</div>
		<div class="form-group">
			<label for="email">Mail<span>*</span></label>
			<input type="email" name="email" class="form-control" id="email">
		</div>
		<div class="form-group">
			<label for="text">Mesaj<span>*</span></label>
			<textarea name="mesaj" class="form-control" id="text"></textarea>
		</div>

		<?php 
		$sayi1=rand(10,30);
		$sayi2=rand(0,10);
		$toplam=$sayi1+$sayi2;
		?>

		<input type="hidden" value="<?php echo $toplam; ?>" name="toplam">

		<div class="form-group">
			<label for="name">İşlem Sonucu?<span>*</span></label> <!-- SONUCUDA YOLLUYOR -->
			<input type="text" name="islem"  placeholder="<?php echo $sayi1." + ".$sayi2. " kaçtır ?";  ?>" class="form-control" id="name">
		</div>
		<button type="submit" class="btn btn-default btn-red btn-sm">Formu Gönder</button>
	</form>
</div>
<div class="spacer"></div>



<?php include 'footer.php' ?>