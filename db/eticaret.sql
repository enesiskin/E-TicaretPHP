-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 26 Tem 2019, 09:47:02
-- Sunucu sürümü: 5.7.17-log
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `eticaret`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayar`
--

CREATE TABLE `ayar` (
  `ayar_id` int(11) NOT NULL,
  `ayar_logo` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_url` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_title` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_description` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_keywords` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_author` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_tel` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_faks` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mail` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_ilce` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_il` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_mesai` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_maps` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_analystic` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_zopim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_facebook` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_twitter` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_google` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_youtube` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtphost` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpuser` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtppassword` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_smtpport` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `ayar_bakim` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ayar`
--

INSERT INTO `ayar` (`ayar_id`, `ayar_logo`, `ayar_url`, `ayar_title`, `ayar_description`, `ayar_keywords`, `ayar_author`, `ayar_tel`, `ayar_gsm`, `ayar_faks`, `ayar_mail`, `ayar_ilce`, `ayar_il`, `ayar_adres`, `ayar_mesai`, `ayar_maps`, `ayar_analystic`, `ayar_zopim`, `ayar_facebook`, `ayar_twitter`, `ayar_google`, `ayar_youtube`, `ayar_smtphost`, `ayar_smtpuser`, `ayar_smtppassword`, `ayar_smtpport`, `ayar_bakim`) VALUES
(0, 'dimg/26111logo-coral.svg', 'https://www.udemy.com', 'Udemy E-Ticaret Scripti', 'Udemy E-Ticaret Scripti - PDO ile  ', 'e-ticaret,udemyi,php,pdo,emrahyüksel', 'Udemy', '0216 000 00 00', '0216 000 00 00', '0216 000 00 00', 'enesiskin.35@gmail.com', 'Üsküdar', 'İstanbul', 'Çamlıca', 'Yok', 'ayar_maps_api', 'ayar_analystic', 'https://v2.zopim.com/?5DyUgwL2c2nc43kG0j9udM8FLxy9XfWX', 'facebook.com', 'twitter.com', 'google.com', 'youtube.com', 'mailingidecegi@hostadı', 'hostta kayıtlı mail', '1234', '25-26 gmail 587/465', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `banka`
--

CREATE TABLE `banka` (
  `banka_id` int(11) NOT NULL,
  `banka_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_iban` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_hesapad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `banka_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `banka`
--

INSERT INTO `banka` (`banka_id`, `banka_ad`, `banka_iban`, `banka_hesapad`, `banka_durum`) VALUES
(1, 'Ziraat', 'TR65895626529498', 'Enes', '1'),
(2, 'Akbank', 'TR645468465232664', 'Ali', '0');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

CREATE TABLE `hakkimizda` (
  `hakkimizda_id` int(11) NOT NULL,
  `hakkimizda_baslik` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_icerik` text COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_vizyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL,
  `hakkimizda_misyon` varchar(500) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_icerik`, `hakkimizda_video`, `hakkimizda_vizyon`, `hakkimizda_misyon`) VALUES
(0, 'Udemy ile E-Ticaret Sitesi', '<p>Carter Bays ve Craig Thomas&#39;ın yarattıkları &quot;How I Met Your Mother&quot; konu olarak, romantik başrol Theodore -Ted- Mosby&#39;nin (Bob Saget) hayatının aşkı -eşiyle- tanışma hikayesini flashbacklerle anlatan bir sit-com. 2030 yılında evli, iki &ccedil;ocuk babası Ted &ccedil;ocuklarını karşısına alıyor (David Henrie, Lyndsy Fonseca) ve hikayesini anlatmaya başlıyor.<br />\r\n<br />\r\n2005&#39;te 27 yaşındaki mimar Ted (Josh Radnor), arkadaş grubuyla kendisine k&uuml;&ccedil;&uuml;k bir d&uuml;nya yaratmış bir gen&ccedil;. Arkadaş grubu; en iyi arkadaşı, hukuk &ouml;ğrencisi Marshall (Jason Segel), Marshall&#39;ın dokuz yıldır birlikte olduğu anaokulu &ouml;ğretmeni Lily (Alyson Hannigan) ve abs&uuml;rt bir kişiliğe sahip olan takım elbisesiz nefes almayan, hiperseks&uuml;el Barney Stinson (Neil Patrick Harris).&nbsp;<br />\r\n<br />\r\nG&uuml;nler akıp giderken, Marshall, tek aşkı Lily&#39;e evlenme teklifi etmeye hazırlanıyor. Kahramanımız Ted bu noktada hayatını g&ouml;zden ge&ccedil;irmeye karar veriyor. Romantik Ted bek&acirc;r kalmaktan hi&ccedil; haz etmeyen biri olduğu i&ccedil;in, ger&ccedil;ek aşkını aramaya koyuluyor. Derken Manhattan&#39;daki Marshall, Lilly ve Ted&#39;in birlikte yaşadığı evlerinin altındaki McLaren&#39;s Pub&#39;da Robin Scherbatsky (Cobie Smulders) ile karşılaşıyor ve ilk bakışta evleneceği kadını bulduğunu d&uuml;ş&uuml;n&uuml;yor. Acaba &ouml;yle mi?</p>\r\n\r\n<p>Carter Bays ve Craig Thomas&#39;ın yarattıkları &quot;How I Met Your Mother&quot; konu olarak, romantik başrol Theodore -Ted- Mosby&#39;nin (Bob Saget) hayatının aşkı -eşiyle- tanışma hikayesini flashbacklerle anlatan bir sit-com. 2030 yılında evli, iki &ccedil;ocuk babası Ted &ccedil;ocuklarını karşısına alıyor (David Henrie, Lyndsy Fonseca) ve hikayesini anlatmaya başlıyor.<br />\r\n<br />\r\n2005&#39;te 27 yaşındaki mimar Ted (Josh Radnor), arkadaş grubuyla kendisine k&uuml;&ccedil;&uuml;k bir d&uuml;nya yaratmış bir gen&ccedil;. Arkadaş grubu; en iyi arkadaşı, hukuk &ouml;ğrencisi Marshall (Jason Segel), Marshall&#39;ın dokuz yıldır birlikte olduğu anaokulu &ouml;ğretmeni Lily (Alyson Hannigan) ve abs&uuml;rt bir kişiliğe sahip olan takım elbisesiz nefes almayan, hiperseks&uuml;el Barney Stinson (Neil Patrick Harris).&nbsp;<br />\r\n<br />\r\nG&uuml;nler akıp giderken, Marshall, tek aşkı Lily&#39;e evlenme teklifi etmeye hazırlanıyor. Kahramanımız Ted bu noktada hayatını g&ouml;zden ge&ccedil;irmeye karar veriyor. Romantik Ted bek&acirc;r kalmaktan hi&ccedil; haz etmeyen biri olduğu i&ccedil;in, ger&ccedil;ek aşkını aramaya koyuluyor. Derken Manhattan&#39;daki Marshall, Lilly ve Ted&#39;in birlikte yaşadığı evlerinin altındaki McLaren&#39;s Pub&#39;da Robin Scherbatsky (Cobie Smulders) ile karşılaşıyor ve ilk bakışta evleneceği kadını bulduğunu d&uuml;ş&uuml;n&uuml;yor. Acaba &ouml;yle mi?</p>\r\n', 'tbNlMtqrYS0', 'A father recounts to his children, through a series of flashbacks, the journey he and his four best friends took leading up to him meeting their mother.', 'Ted Mosby sits down with his kids, to tell them the story of how he met their mother. The story is told through memories of his friends Marshall, Lily, Robin, and Barney Stinson. All legendary 9 seasons lead up to the moment of Ted\'s final encounter with \"the one.\"');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_ust` int(2) NOT NULL,
  `kategori_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kategori_sira` int(2) NOT NULL,
  `kategori_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_ad`, `kategori_ust`, `kategori_seourl`, `kategori_sira`, `kategori_durum`) VALUES
(1, 'Anahtarlıklar', 0, 'anahtarliklar', 1, '1'),
(2, 'Mouse Pad', 0, 'mouse-pad', 2, '1'),
(3, 'Mouse', 0, 'mouse', 3, '1'),
(4, 'Klavye', 0, 'klavye', 4, '1'),
(7, 'Figür', 0, 'figur', 7, '1'),
(14, 'Alt', 1, 'Alt', 8, '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `kullanici_id` int(11) NOT NULL,
  `kullanici_zaman` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kullanici_resim` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_tc` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_mail` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_gsm` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_password` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adsoyad` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_adres` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_il` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_ilce` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_unvan` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_yetki` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullanici_durum` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_resim`, `kullanici_tc`, `kullanici_ad`, `kullanici_mail`, `kullanici_gsm`, `kullanici_password`, `kullanici_adsoyad`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_unvan`, `kullanici_yetki`, `kullanici_durum`) VALUES
(147, '2019-07-19 20:25:31', '', '11111111111', '', 'enes@iskin', '08508408075', 'c4ca4238a0b923820dcc509a6f75849b', 'Enes Işkın', '', '', '', '', '5', 1),
(151, '2019-07-18 13:45:11', '', '22222222222', '', 'ali@guven', '', 'e10adc3949ba59abbe56e057f20f883e', 'Ali Güven', '', '', '', '', '1', 1),
(152, '2019-07-19 13:46:23', '', '33333333333', '', 'fikret@dandin', '', 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 'Fikret Dandin', '', '', '', '', '1', 1),
(153, '2019-07-25 16:21:25', '', '', '', 'emre@aksu', '', '202cb962ac59075b964b07152d234b70', 'Emre Aksu', '', '', '', '', '1', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_ust` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `menu_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `menu_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `menu_url` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `menu_sira` int(2) NOT NULL,
  `menu_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `menu_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_ust`, `menu_ad`, `menu_detay`, `menu_url`, `menu_sira`, `menu_durum`, `menu_seourl`) VALUES
(1, '0', 'Hakkımızda', '', 'hakkimizda', 1, '1', 'hakkimizda'),
(2, '0', 'İletişim', '', 'iletisim', 25, '1', 'iletisim'),
(4, '0', 'Kategoriler', '', 'kategoriler', 3, '1', 'kategoriler'),
(6, '', 'Gizlilik Koşullarımız', '<p>L&uuml;tfen bu İnternet Sitesini kullanmadan &ouml;nce aşağıdaki Kullanım Şartlarını ve Yasal Uyarıları Dikkatle Okuyun</p>\r\n\r\n<p>PepsiCo, Inc. (&ldquo;PepsiCo&rdquo;) İnternet sitesine hoş geldiniz. Aşağıda bu internet sitesi &uuml;zerinden bize sağlayabileceğiniz kişisel bilgilerle ilgili Gizlilik Koşullarımızı bulacaksınız. Amacımız mahremiyetinizi ve İnternet &uuml;zerinden bize sunduğunuz bilgileri korumaktır.</p>\r\n\r\n<p>PepsiCo bu internet sitesini Amerika Birleşik Devletleri&rsquo;nin New York Eyaleti&rsquo;nin Purchase şehrindeki ofisinden işletmektedir. Bu internet sitesiyle ilgili b&uuml;t&uuml;n konular Amerika Birleşik Devletleri&rsquo;nin New York Eyaleti&rsquo;nin kanunlarına tabidir ve onlar kapsamında yorumlanır.</p>\r\n\r\n<p>Bu internet sitesine erişerek bu Gizlilik Koşulları&rsquo;nı ve bu siteye yazılmış Kullanım Şartları&rsquo;nı kabul ettiğinizi belirtirsiniz.</p>\r\n\r\n<p>Bu internet sitesi 13 yaşın altındaki &ccedil;ocuklara y&ouml;nelik değildir ve sitede 13 yaşın altındaki &ccedil;ocuklardan bilerek kişisel bilgi toplamayız. Eğer sitede kasıtsız olarak 13 yaşın altındaki bir ziyaret&ccedil;inin kişisel bilgilerini aldığımızın farkına varırsak, bu bilgileri kayıtlarımızdan sileriz.</p>\r\n\r\n<p>Diğer Sitelere Bağlantı Verme</p>\r\n\r\n<p>Bu politika www.PepsiCo.com&rsquo;u (PepsiCo&rsquo;nun kurumsal internet sitesini) kapsar. İştiraklerimizden ve/veya programlarımızdan bazıları kendi, muhtemelen farklı politikalarını kendi internet sitelerine yazabilirler. Sizi o internet sitelerine bağlantı verirken o politikaları g&ouml;zden ge&ccedil;irmeye teşvik ediyoruz.</p>\r\n\r\n<p>Topladığımız bilgiler ve onları kullanım şeklimiz</p>\r\n\r\n<p>Kişisel Bilgiler &ndash; Bu internet sitesinde kişisel bilgiler (isminiz, adresiniz, telefon numaranız ve e-posta adresiniz gibi) verebilirsiniz. Bilgileri vermek i&ccedil;in kullanabileceğiniz bazı y&ouml;ntemler ve verebileceğiniz bilgi tipleri aşağıdadır. Size bilgiyi nasıl kullanabileceğimizi de a&ccedil;ıklayacağız.</p>\r\n\r\n<p>Bizimle İrtibat Kurun-&nbsp;Sitedeki &ldquo;Bizimle İrtibat Kurun&rdquo; bağlantısından bize e-posta g&ouml;nderirseniz sorularınıza ve yorumlarınıza cevap verebilmek i&ccedil;in sizden isminiz ve e-posta adresiniz gibi bilgiler isteriz. İlave bilgiler de verebilirsiniz.</p>\r\n\r\n<p>İ&ccedil;eriği Bir Arkadaşa Yolla &ndash;&nbsp;Bazı i&ccedil;erikleri arkadaşlarınıza yollayabilirsiniz. Bunu yapmak i&ccedil;in sizden isminizi ve arkadaşınızın e-posta adresini vermenizi isteriz. Bu bilgiyi i&ccedil;eriği arkadaşınıza yollamak i&ccedil;in kullanırız.</p>\r\n\r\n<p>Internet Protokol&uuml; Adresi</p>\r\n\r\n<p>Sitemizin b&uuml;t&uuml;n ziyaret&ccedil;ilerinin İnternet Protokol&uuml; adreslerini toplarız. IP adresinizi sitemizi y&ouml;netmemize yardımcı olmak i&ccedil;in kullanırız. IP adresiniz sitemizi ne zaman ziyaret ettiğinizi belirlemek i&ccedil;in de kullanılır.</p>\r\n\r\n<p>Sitenin &ldquo;Kariyerler&rdquo; Kısmı i&ccedil;in İlave Politikalar</p>\r\n\r\n<p>Eğer bu sitenin &ldquo;Kariyerler&rdquo; veya &ldquo;İş Fırsatları&rdquo; kısımlarında kişisel bilgi verirseniz, bu bilginin kullanımı ve korunması kariyer.net internet sitesinde yazılı Kariyer.net Gizlilik Koşulları&rsquo;na tabidir. Daha fazla bilgi i&ccedil;in www.kariyer.net adresini ziyaret edin.</p>\r\n\r\n<p>Paylaştığımız Bilgiler</p>\r\n\r\n<p>İnternet sitemizin ziyaret&ccedil;ileri hakkındaki kişisel bilgileri burada a&ccedil;ıklanan haller haricinde satmayız ya da başka bir suretle a&ccedil;ıklamayız. Bu sitenin ziyaret&ccedil;ilerinin sağladığı bilgileri adımıza hizmetler y&uuml;r&uuml;tmek i&ccedil;in tuttuğumuz hizmet sağlayıcılarla paylaşabiliriz. Bu hizmet sağlayıcıların adımıza hizmetler y&uuml;r&uuml;tmek ya da yasal gereksinimlere uymak i&ccedil;in gerekli olan haller dışında bu bilgileri kullanmaları ya da a&ccedil;ıklamaları yasaktır. Ek olarak, (i) kanunen ya da yasal bir s&uuml;re&ccedil; nedeniyle a&ccedil;ıklamamız gerekiyorsa, (ii) emniyet g&ouml;revlilerine ya da diğer devlet yetkililerine (iii) a&ccedil;ıklamanın fiziksel hasarı veya mali kaybı &ouml;nlemek veya ş&uuml;pheli veya ger&ccedil;ek yasadışı faaliyete ilişkin bir soruşturmayla ilişkili olarak gerekli veya uygun olduğunu d&uuml;ş&uuml;nd&uuml;ğ&uuml;m&uuml;z zaman hakkınızdaki bilgileri a&ccedil;ıklayabiliriz.</p>\r\n\r\n<p>Şirketimizin ya da varlıklarımızın tamamını ya da bir kısmını satmamız ya da devretmemiz halinde hakkınızdaki bilgileri devretme hakkını saklı tutarız. B&ouml;yle bir satış ya da devir meydana gelirse, devralanı bu internet sitesinden verdiğiniz kişisel bilgileri bu Gizlilik Koşulları&rsquo;na uygun bir şekilde kullanmaya teşvik etmek i&ccedil;in makul &ccedil;aba g&ouml;stereceğiz.</p>\r\n\r\n<p>Aktardığımız Bilgiler</p>\r\n\r\n<p>Bu sitede topladığımız kişisel bilgileri iş yaptığımız diğer &uuml;lkelere aktarabiliriz, ama bunu sadece yukarıda a&ccedil;ıklanmış ama&ccedil;larla yapacağız. Bilgilerinizi diğer &uuml;lkelere aktardığımız zaman uygulanabilen kanunlar aksini gerektirmediği s&uuml;rece o bilgiyi burada a&ccedil;ıklandığı gibi koruyacağız.</p>\r\n\r\n<p>Kişisel Bilgiyi Nasıl Koruruz?</p>\r\n\r\n<p>Bu internet sitesinden verdiğiniz kişisel bilgileri yetkisiz a&ccedil;ıklanmaya, kullanıma, değiştirmeye ya da tahribata karşı korumak i&ccedil;in idari, teknik ve fiziksel tedbirler uyguluyoruz. Bu sitede verdiğiniz kişisel bilgilerin g&uuml;venli kalması i&ccedil;in G&uuml;venli Şifreleme Protokol&uuml; (SSL) teknolojisini kullanıyoruz.</p>\r\n\r\n<p>Gizlilik Beyanımızın G&uuml;ncellemeleri</p>\r\n\r\n<p>Bu Gizlilik Beyanı &ccedil;evrimi&ccedil;i bilgi uygulamalarımızdaki değişiklikleri yansıtması i&ccedil;in periyodik olarak ve &ouml;nceden size haber verilmeden g&uuml;ncellenebilir. Gizlilik Beyanımızdaki &ouml;nemli değişiklikleri size bildirmek i&ccedil;in bu internet sitesine bir bildirim yazacak ve en son ne zaman g&uuml;ncellendiğini belirteceğiz.</p>\r\n\r\n<p>Bizimle İrtibat Kurma</p>\r\n\r\n<p>Eğer bu Gizlilik Beyanı hakkında sorularınız veya yorumlarınız varsa veya siz ya da tercihleriniz hakkındaki bilgileri g&uuml;ncellememizi istiyorsanız l&uuml;tfen aşağıda listelenen adreslerden ya da telefon numaralarından biri vasıtasıyla bizimle irtibat kurun.</p>\r\n\r\n<p>PepsiCo T&uuml;rkiye</p>\r\n\r\n<p>Didem Şinik<br />\r\nAlemdağ Caddesi, Inkılap Mahallesi, Siteyolu Sokak<br />\r\nNo:2, 34768, Umraniye &ndash; Istanbul<br />\r\ne-posta:&nbsp;didem.sinik@pepsico.com<br />\r\nTel: +90 216 635 40 00<br />\r\nFax: +90 216 634 50 09</p>\r\n\r\n<p>PepsiCo Beverages</p>\r\n\r\n<p>Eda G&ouml;kmen &Uuml;&ccedil;erler<br />\r\nTekfen Tower B&uuml;y&uuml;kdere Cad. No:209, 34394 , 4. Levent &ndash; Istanbul &ndash; T&uuml;rkiye<br />\r\nTel: 90(212) 319 30 00<br />\r\nFax: 90 (212) 357 01 80<br />\r\ne-posta:&nbsp;eda.gokmenucerler@pepsico.com</p>\r\n\r\n<p>Frito Lay</p>\r\n\r\n<p>M&uuml;ge T&uuml;mer<br />\r\nAlemdağ Caddesi, Inkılap Mahallesi, Siteyolu Sokak,<br />\r\nNo:2, 34768, &Uuml;mraniye &ndash; Istanbul<br />\r\nTel: +90 216 635 40 00<br />\r\nFax: +90 216 634 50 09<br />\r\ne-posta:&nbsp;muge.tumer@pepsico.com</p>\r\n', '', 10, '1', 'gizlilik-kosullarimiz'),
(11, '', 'Mesafeli Satış', '<p>MESAFELİ S&Ouml;ZLEŞMELER Y&Ouml;NETMELİĞİ</p>\r\n\r\n<p>BİRİNCİ B&Ouml;L&Uuml;M</p>\r\n\r\n<p>Ama&ccedil;, Kapsam, Dayanak ve Tanımlar</p>\r\n\r\n<p><strong>Ama&ccedil;</strong></p>\r\n\r\n<p><strong>MADDE 1 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmeliğin amacı, mesafeli s&ouml;zleşmelere ilişkin uygulama usul ve esaslarını d&uuml;zenlemektir.</p>\r\n\r\n<p><strong>Kapsam</strong></p>\r\n\r\n<p><strong>MADDE 2 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik, mesafeli s&ouml;zleşmelere uygulanır.</p>\r\n\r\n<p>(2) Bu Y&ouml;netmelik h&uuml;k&uuml;mleri;</p>\r\n\r\n<p>a) Finansal hizmetler,</p>\r\n\r\n<p>b) Otomatik makineler aracılığıyla yapılan satışlar,</p>\r\n\r\n<p>c) Halka a&ccedil;ık telefon vasıtasıyla telekom&uuml;nikasyon operat&ouml;rleriyle bu telefonun kullanımı,</p>\r\n\r\n<p>&ccedil;) Bahis, &ccedil;ekiliş, piyango ve benzeri şans oyunlarına ilişkin hizmetler,</p>\r\n\r\n<p>d) Taşınmaz malların veya bu mallara ilişkin hakların oluşumu, devri veya kazanımı,</p>\r\n\r\n<p>e) Konut kiralama,</p>\r\n\r\n<p>f) Paket turlar,</p>\r\n\r\n<p>g) Devre m&uuml;lk, devre tatil, uzun s&uuml;reli tatil hizmeti ve bunların yeniden satımı veya değişimi,</p>\r\n\r\n<p>ğ) Yiyecek ve i&ccedil;ecekler gibi g&uuml;nl&uuml;k t&uuml;ketim maddelerinin, satıcının d&uuml;zenli teslimatları &ccedil;er&ccedil;evesinde t&uuml;keticinin meskenine veya işyerine g&ouml;t&uuml;r&uuml;lmesi,</p>\r\n\r\n<p>h) 5 inci maddenin birinci fıkrasının (a), (b) ve (d) bentlerindeki bilgi verme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; ile 18 inci ve 19 uncu maddelerde yer alan y&uuml;k&uuml;ml&uuml;l&uuml;kler saklı kalmak koşuluyla yolcu taşıma hizmetleri,</p>\r\n\r\n<p>ı) Malların montaj, bakım ve onarımı,</p>\r\n\r\n<p>i) Bakımevi hizmetleri, &ccedil;ocuk, yaşlı ya da hasta bakımı gibi ailelerin ve kişilerin desteklenmesine y&ouml;nelik sosyal hizmetler</p>\r\n\r\n<p>ile&nbsp;ilgili s&ouml;zleşmelere uygulanmaz.</p>\r\n\r\n<p><strong>Dayanak</strong></p>\r\n\r\n<p><strong>MADDE 3 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik,&nbsp;7/11/2013&nbsp;tarihli ve 6502 sayılı T&uuml;keticinin Korunması Hakkında Kanunun 48 inci ve 84 &uuml;nc&uuml; maddelerine dayanılarak hazırlanmıştır.</p>\r\n\r\n<p><strong>Tanımlar</strong></p>\r\n\r\n<p><strong>MADDE 4 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmeliğin uygulanmasında;</p>\r\n\r\n<p>a) Dijital i&ccedil;erik: Bilgisayar programı, uygulama, oyun, m&uuml;zik, video ve metin gibi dijital şekilde sunulan her t&uuml;rl&uuml; veriyi,</p>\r\n\r\n<p>b) Hizmet: Bir &uuml;cret veya menfaat karşılığında yapılan ya da yapılması taahh&uuml;t edilen mal sağlama dışındaki her t&uuml;rl&uuml; t&uuml;ketici işleminin konusunu,</p>\r\n\r\n<p>c) Kalıcı veri saklayıcısı: T&uuml;keticinin g&ouml;nderdiği veya kendisine g&ouml;nderilen bilgiyi, bu bilginin amacına uygun olarak makul bir s&uuml;re incelemesine elverecek şekilde kaydedilmesini ve değiştirilmeden kopyalanmasını sağlayan ve bu bilgiye aynen ulaşılmasına&nbsp;imkan&nbsp;veren kısa mesaj, elektronik posta, internet, disk, CD, DVD, hafıza kartı ve benzeri her t&uuml;rl&uuml; ara&ccedil; veya ortamı,</p>\r\n\r\n<p>&ccedil;) Kanun: 6502 sayılı T&uuml;keticinin Korunması Hakkında Kanunu,</p>\r\n\r\n<p>d) Mal: Alışverişe konu olan; taşınır eşya, konut veya tatil ama&ccedil;lı taşınmaz mallar ile elektronik ortamda kullanılmak &uuml;zere hazırlanan yazılım, ses, g&ouml;r&uuml;nt&uuml; ve benzeri her t&uuml;rl&uuml; gayri maddi malları,</p>\r\n\r\n<p>e) Mesafeli s&ouml;zleşme: Satıcı veya sağlayıcı ile t&uuml;keticinin eş zamanlı fiziksel varlığı olmaksızın, mal veya hizmetlerin uzaktan pazarlanmasına y&ouml;nelik olarak oluşturulmuş bir sistem &ccedil;er&ccedil;evesinde, taraflar arasında s&ouml;zleşmenin kurulduğu ana kadar ve kurulduğu an da&nbsp;dahil&nbsp;olmak &uuml;zere uzaktan iletişim ara&ccedil;larının kullanılması suretiyle kurulan s&ouml;zleşmeleri,</p>\r\n\r\n<p>f) Sağlayıcı: Kamu t&uuml;zel kişileri de&nbsp;dahil&nbsp;olmak &uuml;zere ticari veya mesleki ama&ccedil;larla t&uuml;keticiye hizmet sunan ya da hizmet sunanın adına ya da hesabına hareket eden ger&ccedil;ek veya t&uuml;zel kişiyi,</p>\r\n\r\n<p>g) Satıcı: Kamu t&uuml;zel kişileri de&nbsp;dahil&nbsp;olmak &uuml;zere ticari veya mesleki ama&ccedil;larla t&uuml;keticiye mal sunan ya da mal sunanın adına ya da hesabına hareket eden ger&ccedil;ek veya t&uuml;zel kişiyi,</p>\r\n\r\n<p>ğ) T&uuml;ketici: Ticari veya mesleki olmayan ama&ccedil;larla hareket eden ger&ccedil;ek veya t&uuml;zel kişiyi,</p>\r\n\r\n<p>h) Uzaktan iletişim aracı: Mektup, katalog, telefon, faks, radyo, televizyon, elektronik posta mesajı, kısa mesaj, internet gibi fiziksel olarak karşı karşıya gelinmeksizin s&ouml;zleşme kurulmasına&nbsp;imkan&nbsp;veren her t&uuml;rl&uuml; ara&ccedil; veya ortamı,</p>\r\n\r\n<p>ı) Yan s&ouml;zleşme: Bir mesafeli s&ouml;zleşme ile ilişkili olarak satıcı, sağlayıcı ya da &uuml;&ccedil;&uuml;nc&uuml; bir kişi tarafından s&ouml;zleşme konusu mal ya da hizmete ilave olarak t&uuml;keticiye sağlanan mal veya hizmete ilişkin s&ouml;zleşmeyi</p>\r\n\r\n<p>ifade&nbsp;eder.</p>\r\n\r\n<p>İKİNCİ B&Ouml;L&Uuml;M</p>\r\n\r\n<p>&Ouml;n Bilgilendirme Y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;</p>\r\n\r\n<p><strong>&Ouml;n bilgilendirme</strong></p>\r\n\r\n<p><strong>MADDE 5 &ndash;</strong>&nbsp;(1) T&uuml;ketici, mesafeli s&ouml;zleşmenin kurulmasından ya da buna karşılık gelen herhangi bir teklifi kabul etmeden &ouml;nce, aşağıdaki hususların tamamını i&ccedil;erecek şekilde satıcı veya sağlayıcı tarafından bilgilendirilmek zorundadır.</p>\r\n\r\n<p>a) S&ouml;zleşme konusu mal veya hizmetin temel nitelikleri,</p>\r\n\r\n<p>b) Satıcı veya sağlayıcının adı veya unvanı, varsa MERSİS numarası,</p>\r\n\r\n<p>c) T&uuml;keticinin satıcı veya sağlayıcı ile hızlı bir şekilde irtibat kurmasına&nbsp;imkan&nbsp;veren, satıcı veya sağlayıcının a&ccedil;ık adresi, telefon numarası ve benzeri iletişim bilgileri ile varsa satıcı veya sağlayıcının adına ya da hesabına hareket edenin kimliği ve adresi,</p>\r\n\r\n<p>&ccedil;) Satıcı veya sağlayıcının t&uuml;keticinin&nbsp;şikayetlerini&nbsp;iletmesi i&ccedil;in (c) bendinde belirtilenden farklı iletişim bilgileri var ise, bunlara ilişkin bilgi,</p>\r\n\r\n<p>d) Mal veya hizmetin t&uuml;m vergiler&nbsp;dahil&nbsp;toplam fiyatı, niteliği itibariyle &ouml;nceden hesaplanamıyorsa fiyatın hesaplanma usul&uuml;, varsa t&uuml;m nakliye, teslim ve benzeri ek masraflar ile bunların &ouml;nceden hesaplanamaması halinde ek masrafların &ouml;denebileceği bilgisi,</p>\r\n\r\n<p>e) S&ouml;zleşmenin kurulması aşamasında uzaktan iletişim aracının kullanım bedelinin olağan &uuml;cret tarifesi &uuml;zerinden hesaplanamadığı durumlarda, t&uuml;keticilere y&uuml;klenen ilave maliyet,</p>\r\n\r\n<p>f) &Ouml;deme, teslimat, ifaya ilişkin bilgiler ile varsa bunlara ilişkin taahh&uuml;tler ve satıcı veya sağlayıcının&nbsp;şikayetlere&nbsp;ilişkin &ccedil;&ouml;z&uuml;m y&ouml;ntemleri,</p>\r\n\r\n<p>g) Cayma hakkının olduğu durumlarda, bu hakkın kullanılma şartları, s&uuml;resi, usul&uuml; ve satıcının iade i&ccedil;in &ouml;ng&ouml;rd&uuml;ğ&uuml; taşıyıcıya ilişkin bilgiler,</p>\r\n\r\n<p>ğ) Cayma bildiriminin yapılacağı a&ccedil;ık adres, faks numarası veya elektronik posta bilgileri,</p>\r\n\r\n<p>h) 15 inci madde uyarınca cayma hakkının kullanılamadığı durumlarda, t&uuml;keticinin cayma hakkından faydalanamayacağına ya da hangi koşullarda cayma hakkını kaybedeceğine ilişkin bilgi,</p>\r\n\r\n<p>ı) Satıcı veya sağlayıcının talebi &uuml;zerine, varsa t&uuml;ketici tarafından &ouml;denmesi veya sağlanması gereken depozitolar ya da diğer mali teminatlar ve bunlara ilişkin şartlar,</p>\r\n\r\n<p>i) Varsa dijital i&ccedil;eriklerin işlevselliğini etkileyebilecek teknik koruma &ouml;nlemleri,</p>\r\n\r\n<p>j) Satıcı veya sağlayıcının bildiği ya da makul olarak bilmesinin beklendiği, dijital i&ccedil;eriğin hangi donanım ya da yazılımla birlikte &ccedil;alışabileceğine ilişkin bilgi,</p>\r\n\r\n<p>k) T&uuml;keticilerin uyuşmazlık konusundaki başvurularını T&uuml;ketici Mahkemesine veya T&uuml;ketici Hakem Heyetine yapabileceklerine dair bilgi.</p>\r\n\r\n<p>(2) Birinci fıkrada belirtilen bilgiler, mesafeli s&ouml;zleşmenin ayrılmaz bir par&ccedil;asıdır ve taraflar aksini a&ccedil;ık&ccedil;a kararlaştırmadık&ccedil;a bu bilgiler değiştirilemez.</p>\r\n\r\n<p>(3) Satıcı veya sağlayıcı, birinci fıkranın (d) bendinde yer alan ek masraflara ilişkin bilgilendirme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;n&uuml; yerine getirmezse, t&uuml;ketici bunları karşılamakla y&uuml;k&uuml;ml&uuml; değildir.</p>\r\n\r\n<p>(4) Birinci fıkranın (d) bendinde yer alan toplam fiyatın, belirsiz s&uuml;reli s&ouml;zleşmelerde veya belirli s&uuml;reli abonelik s&ouml;zleşmelerinde, her faturalama d&ouml;nemi bazında toplam masrafları i&ccedil;ermesi zorunludur.</p>\r\n\r\n<p>(5) A&ccedil;ık artırma veya eksiltme yoluyla kurulan s&ouml;zleşmelerde, birinci fıkranın (b), (c) ve (&ccedil;) bentlerinde yer alan bilgilerin yerine a&ccedil;ık artırmayı yapan ile ilgili bilgilere yer verilebilir.</p>\r\n\r\n<p>(6) &Ouml;n bilgilendirme yapıldığına ilişkin ispat y&uuml;k&uuml; satıcı veya sağlayıcıya aittir.</p>\r\n\r\n<p><strong>&Ouml;n bilgilendirme y&ouml;ntemi</strong></p>\r\n\r\n<p><strong>MADDE 6 &ndash;</strong>&nbsp;(1) T&uuml;ketici, 5 inci maddenin birinci fıkrasında belirtilen t&uuml;m hususlarda, kullanılan uzaktan iletişim aracına uygun olarak en az on iki punto b&uuml;y&uuml;kl&uuml;ğ&uuml;nde, anlaşılabilir bir dilde, a&ccedil;ık, sade ve okunabilir bir şekilde satıcı veya sağlayıcı tarafından yazılı olarak veya kalıcı veri saklayıcısı ile bilgilendirilmek zorundadır.</p>\r\n\r\n<p>(2) Mesafeli s&ouml;zleşmenin internet yoluyla kurulması halinde, satıcı veya sağlayıcı;</p>\r\n\r\n<p>a) 5 inci maddenin birinci fıkrasında yer alan bilgilendirme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; saklı kalmak kaydıyla, aynı fıkranın (a), (d), (g) ve (h) bentlerinde yer alan bilgileri bir b&uuml;t&uuml;n olarak, t&uuml;keticinin &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; altına girmesinden hemen &ouml;nce a&ccedil;ık bir şekilde ayrıca g&ouml;stermek,</p>\r\n\r\n<p>b) Herhangi bir g&ouml;nderim kısıtlamasının uygulanıp uygulanmadığını ve hangi &ouml;deme ara&ccedil;larının kabul edildiğini, en ge&ccedil; t&uuml;ketici siparişini vermeden &ouml;nce, a&ccedil;ık ve anlaşılabilir bir şekilde belirtmek</p>\r\n\r\n<p>zorundadır.</p>\r\n\r\n<p>(3) Mesafeli s&ouml;zleşmenin sesli iletişim yoluyla kurulması halinde, satıcı veya sağlayıcı 5 inci maddenin birinci fıkrasının (a), (d), (g) ve (h) bentlerinde yer alan hususlarda, t&uuml;keticiyi sipariş vermeden hemen &ouml;nce a&ccedil;ık ve anlaşılır bir şekilde s&ouml;z konusu ortamda bilgilendirmek ve 5 inci maddenin birinci fıkrasında yer alan bilgilerin tamamını en ge&ccedil; mal teslimine veya hizmet ifasına kadar yazılı olarak g&ouml;ndermek zorundadır.</p>\r\n\r\n<p>(4) Siparişe ilişkin bilgilerin sınırlı alanda ya da zamanda sunulduğu bir ortam yoluyla mesafeli s&ouml;zleşmenin kurulması halinde, satıcı veya sağlayıcı 5 inci maddenin birinci fıkrasının (a), (b), (d), (g) ve (h) bentlerinde yer alan hususlarda, t&uuml;keticiyi sipariş vermeden hemen &ouml;nce a&ccedil;ık ve anlaşılabilir bir şekilde s&ouml;z konusu ortamda bilgilendirmek ve 5 inci maddenin birinci fıkrasında yer alan bilgilerin tamamını en ge&ccedil; mal teslimine veya hizmet ifasına kadar yazılı olarak g&ouml;ndermek zorundadır.</p>\r\n\r\n<p>(5) &Uuml;&ccedil;&uuml;nc&uuml; ve d&ouml;rd&uuml;nc&uuml; fıkralarda belirtilen y&ouml;ntemlerle kurulan ve anında ifa edilen hizmet satışlarına ilişkin s&ouml;zleşmelerde t&uuml;keticinin, sipariş vermeden hemen &ouml;nce s&ouml;z konusu ortamda 5 inci maddenin birinci fıkrasının sadece (a), (b), (d) ve (h) bentlerinde yer alan hususlarda a&ccedil;ık ve anlaşılır bir şekilde bilgilendirilmesi yeterlidir.</p>\r\n\r\n<p><strong>&Ouml;n bilgilerin teyidi</strong></p>\r\n\r\n<p><strong>MADDE 7 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;keticinin 6&nbsp;ncı&nbsp;maddede belirtilen y&ouml;ntemlerle &ouml;n bilgileri edindiğini kullanılan uzaktan iletişim aracına uygun olarak teyit etmesini sağlamak zorundadır. Aksi halde s&ouml;zleşme kurulmamış sayılır.</p>\r\n\r\n<p><strong>&Ouml;n bilgilendirmeye ilişkin diğer y&uuml;k&uuml;ml&uuml;l&uuml;kler</strong></p>\r\n\r\n<p><strong>MADDE 8 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;ketici siparişi onaylamadan hemen &ouml;nce, verilen siparişin &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; anlamına geldiği hususunda t&uuml;keticiyi a&ccedil;ık ve anlaşılır bir şekilde bilgilendirmek zorundadır. Aksi halde t&uuml;ketici siparişi ile bağlı değildir.</p>\r\n\r\n<p>(2) T&uuml;keticinin mesafeli s&ouml;zleşme kurulması amacıyla satıcı veya sağlayıcı tarafından telefonla aranması durumunda, her g&ouml;r&uuml;şmenin başında satıcı veya sağlayıcı kimliğini, eğer bir başkası adına veya hesabına arıyorsa bu kişinin kimliğini ve g&ouml;r&uuml;şmenin ticari amacını a&ccedil;ıklamalıdır.</p>\r\n\r\n<p>&Uuml;&Ccedil;&Uuml;NC&Uuml; B&Ouml;L&Uuml;M</p>\r\n\r\n<p>Cayma Hakkının Kullanımı ve Tarafların Y&uuml;k&uuml;ml&uuml;l&uuml;kleri</p>\r\n\r\n<p><strong>Cayma hakkı</strong></p>\r\n\r\n<p><strong>MADDE 9 &ndash;</strong>&nbsp;(1) T&uuml;ketici, on d&ouml;rt g&uuml;n i&ccedil;inde herhangi bir gerek&ccedil;e g&ouml;stermeksizin ve cezai şart &ouml;demeksizin s&ouml;zleşmeden cayma hakkına sahiptir.</p>\r\n\r\n<p>(2) Cayma hakkı s&uuml;resi, hizmet ifasına ilişkin s&ouml;zleşmelerde s&ouml;zleşmenin kurulduğu g&uuml;n; mal teslimine ilişkin s&ouml;zleşmelerde ise t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin malı teslim aldığı g&uuml;n başlar. Ancak t&uuml;ketici, s&ouml;zleşmenin kurulmasından malın teslimine kadar olan s&uuml;re i&ccedil;inde de cayma hakkını kullanabilir.</p>\r\n\r\n<p>(3) Cayma hakkı s&uuml;resinin belirlenmesinde;</p>\r\n\r\n<p>a) Tek sipariş konusu olup ayrı&nbsp;ayrı&nbsp;teslim edilen mallarda, t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin son malı teslim aldığı g&uuml;n,</p>\r\n\r\n<p>b) Birden fazla par&ccedil;adan oluşan mallarda, t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin son par&ccedil;ayı teslim aldığı g&uuml;n,</p>\r\n\r\n<p>c) Belirli bir s&uuml;re boyunca malın d&uuml;zenli tesliminin yapıldığı s&ouml;zleşmelerde, t&uuml;keticinin veya t&uuml;ketici tarafından belirlenen &uuml;&ccedil;&uuml;nc&uuml; kişinin ilk malı teslim aldığı g&uuml;n</p>\r\n\r\n<p>esas&nbsp;alınır.</p>\r\n\r\n<p>(4) Malın satıcı tarafından taşıyıcıya teslimi, t&uuml;keticiye yapılan teslim olarak kabul edilmez.</p>\r\n\r\n<p>(5) Mal teslimi ile hizmet ifasının birlikte yapıldığı s&ouml;zleşmelerde, mal teslimine ilişkin cayma hakkı h&uuml;k&uuml;mleri uygulanır.</p>\r\n\r\n<p><strong>Eksik bilgilendirme</strong></p>\r\n\r\n<p><strong>MADDE 10 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, cayma hakkı konusunda t&uuml;keticinin bilgilendirildiğini ispat etmekle y&uuml;k&uuml;ml&uuml;d&uuml;r. T&uuml;ketici, cayma hakkı konusunda gerektiği şekilde bilgilendirilmezse, cayma hakkını kullanmak i&ccedil;in on d&ouml;rt g&uuml;nl&uuml;k s&uuml;reyle bağlı değildir. Bu s&uuml;re her hal&uuml;karda cayma s&uuml;resinin bittiği tarihten itibaren bir yıl sonra sona erer.</p>\r\n\r\n<p>(2) Cayma hakkı konusunda gerektiği şekilde bilgilendirmenin bir yıllık s&uuml;re i&ccedil;inde yapılması halinde, on d&ouml;rt g&uuml;nl&uuml;k cayma hakkı s&uuml;resi, bu bilgilendirmenin gereği gibi yapıldığı g&uuml;nden itibaren işlemeye başlar.</p>\r\n\r\n<p><strong>Cayma hakkının kullanımı</strong></p>\r\n\r\n<p><strong>MADDE 11 &ndash;</strong>&nbsp;(1) Cayma hakkının kullanıldığına dair bildirimin cayma hakkı s&uuml;resi dolmadan, yazılı olarak veya kalıcı veri saklayıcısı ile satıcı veya sağlayıcıya y&ouml;neltilmesi yeterlidir.</p>\r\n\r\n<p>(2) Cayma hakkının kullanılmasında t&uuml;ketici,&nbsp;EK&rsquo;te&nbsp;yer alan formu kullanabileceği gibi cayma kararını bildiren a&ccedil;ık bir beyanda da bulunabilir. Satıcı veya sağlayıcı, t&uuml;keticinin bu formu doldurabilmesi veya cayma beyanını g&ouml;nderebilmesi i&ccedil;in internet sitesi &uuml;zerinden se&ccedil;enek de sunabilir.&nbsp;&nbsp;İnternet sitesi &uuml;zerinden t&uuml;keticilere cayma hakkı sunulması durumunda satıcı veya sağlayıcı, t&uuml;keticilerin iletmiş olduğu cayma taleplerinin kendilerine ulaştığına ilişkin teyit bilgisini t&uuml;keticiye derhal iletmek zorundadır.</p>\r\n\r\n<p>(3) Sesli iletişim yoluyla yapılan satışlarda, satıcı veya sağlayıcı,&nbsp;EK&rsquo;te&nbsp;yer alan formu en ge&ccedil; mal teslimine veya hizmet ifasına kadar t&uuml;keticiye g&ouml;ndermek zorundadır. T&uuml;ketici bu t&uuml;r satışlarda da cayma hakkını kullanmak i&ccedil;in bu formu kullanabileceği gibi, ikinci fıkradaki y&ouml;ntemleri de kullanabilir.</p>\r\n\r\n<p>(4) Bu maddede ge&ccedil;en cayma hakkının kullanımına ilişkin ispat y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; t&uuml;keticiye aittir.</p>\r\n\r\n<p><strong>Satıcı veya sağlayıcının y&uuml;k&uuml;ml&uuml;l&uuml;kleri</strong></p>\r\n\r\n<p><strong>MADDE 12 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;keticinin cayma hakkını kullandığına ilişkin bildirimin kendisine ulaştığı tarihten itibaren on d&ouml;rt g&uuml;n i&ccedil;inde, varsa malın t&uuml;keticiye teslim masrafları da&nbsp;dahil&nbsp;olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri iade etmekle y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p>(2) Satıcı veya sağlayıcı, birinci fıkrada belirtilen t&uuml;m geri &ouml;demeleri, t&uuml;keticinin satın alırken kullandığı &ouml;deme aracına uygun bir şekilde ve t&uuml;keticiye herhangi bir masraf veya y&uuml;k&uuml;ml&uuml;l&uuml;k getirmeden tek seferde yapmak zorundadır.</p>\r\n\r\n<p>(3) Cayma hakkının kullanımında, 5 inci maddenin birinci fıkrasının (g) bendi kapsamında, satıcının iade i&ccedil;in belirttiği taşıyıcı aracılığıyla malın geri g&ouml;nderilmesi halinde, t&uuml;ketici iadeye ilişkin masraflardan sorumlu tutulamaz. Satıcının &ouml;n bilgilendirmede iade i&ccedil;in herhangi bir taşıyıcıyı belirtmediği durumda ise, t&uuml;keticiden iade masrafına ilişkin herhangi bir bedel talep edilemez. İade i&ccedil;in &ouml;n bilgilendirmede belirtilen taşıyıcının, t&uuml;keticinin bulunduğu yerde şubesinin olmaması durumunda satıcı, ilave hi&ccedil;bir masraf talep etmeksizin iade edilmek istenen malın t&uuml;keticiden alınmasını sağlamakla y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p><strong>T&uuml;keticinin y&uuml;k&uuml;ml&uuml;l&uuml;kleri</strong></p>\r\n\r\n<p><strong>MADDE 13 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı malı kendisinin geri alacağına dair bir teklifte bulunmadık&ccedil;a, t&uuml;ketici cayma hakkını kullandığına ilişkin bildirimi y&ouml;nelttiği tarihten itibaren on g&uuml;n i&ccedil;inde malı satıcı veya sağlayıcıya ya da yetkilendirmiş olduğu kişiye geri g&ouml;ndermek zorundadır.</p>\r\n\r\n<p>(2) T&uuml;ketici, cayma s&uuml;resi i&ccedil;inde malı, işleyişine, teknik &ouml;zelliklerine ve kullanım talimatlarına uygun bir şekilde kullandığı takdirde meydana gelen değişiklik ve bozulmalardan sorumlu değildir.</p>\r\n\r\n<p><strong>Cayma hakkının kullanımının yan s&ouml;zleşmelere etkisi</strong></p>\r\n\r\n<p><strong>MADDE 14 &ndash;</strong>&nbsp;(1) Kanunun 30 uncu maddesi h&uuml;k&uuml;mleri saklı kalmak koşuluyla, t&uuml;keticinin cayma hakkını kullanması durumunda yan s&ouml;zleşmeler de kendiliğinden sona erer. Bu durumda t&uuml;ketici, 13 &uuml;nc&uuml; maddenin ikinci fıkrasında belirtilen haller dışında herhangi bir masraf, tazminat veya cezai şart &ouml;demekle y&uuml;k&uuml;ml&uuml; değildir.</p>\r\n\r\n<p>(2) Satıcı veya sağlayıcı, t&uuml;keticinin cayma hakkını kullandığını yan s&ouml;zleşmenin tarafı olan &uuml;&ccedil;&uuml;nc&uuml; kişiye derhal bildirmelidir.</p>\r\n\r\n<p><strong>Cayma hakkının istisnaları</strong></p>\r\n\r\n<p><strong>MADDE 15 &ndash;</strong>&nbsp;(1) Taraflarca aksi kararlaştırılmadık&ccedil;a, t&uuml;ketici aşağıdaki s&ouml;zleşmelerde cayma hakkını kullanamaz:</p>\r\n\r\n<p>a) Fiyatı finansal piyasalardaki dalgalanmalara bağlı olarak değişen ve satıcı veya sağlayıcının kontrol&uuml;nde olmayan mal veya hizmetlere ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>b) T&uuml;keticinin istekleri veya kişisel ihtiya&ccedil;ları doğrultusunda hazırlanan mallara ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>c) &Ccedil;abuk bozulabilen veya son kullanma tarihi ge&ccedil;ebilecek malların teslimine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>&ccedil;) Tesliminden sonra ambalaj, bant, m&uuml;h&uuml;r, paket gibi koruyucu unsurları a&ccedil;ılmış olan mallardan; iadesi sağlık ve&nbsp;hijyen&nbsp;a&ccedil;ısından uygun olmayanların teslimine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>d) Tesliminden sonra başka &uuml;r&uuml;nlerle karışan ve doğası gereği ayrıştırılması m&uuml;mk&uuml;n olmayan mallara ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>e) Malın tesliminden sonra ambalaj, bant, m&uuml;h&uuml;r, paket gibi koruyucu unsurları a&ccedil;ılmış olması halinde maddi ortamda sunulan kitap, dijital i&ccedil;erik ve bilgisayar sarf malzemelerine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>f) Abonelik s&ouml;zleşmesi kapsamında sağlananlar dışında, gazete ve dergi gibi s&uuml;reli yayınların teslimine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>g) Belirli bir tarihte veya d&ouml;nemde yapılması gereken, konaklama, eşya taşıma, araba kiralama, yiyecek-i&ccedil;ecek tedariki ve eğlence veya dinlenme amacıyla yapılan boş zamanın değerlendirilmesine ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>ğ) Elektronik ortamda anında ifa edilen hizmetler veya t&uuml;keticiye anında teslim edilen&nbsp;gayrimaddi&nbsp;mallara ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>h) Cayma hakkı s&uuml;resi sona ermeden &ouml;nce, t&uuml;keticinin onayı ile ifasına başlanan hizmetlere ilişkin s&ouml;zleşmeler.</p>\r\n\r\n<p>D&Ouml;RD&Uuml;NC&Uuml; B&Ouml;L&Uuml;M</p>\r\n\r\n<p>Diğer H&uuml;k&uuml;mler</p>\r\n\r\n<p><strong>S&ouml;zleşmenin ifası ve teslimat</strong></p>\r\n\r\n<p><strong>MADDE 16 &ndash;</strong>&nbsp;(1) Satıcı veya sağlayıcı, t&uuml;keticinin siparişinin kendisine ulaştığı tarihten itibaren taahh&uuml;t ettiği s&uuml;re i&ccedil;inde edimini yerine getirmek zorundadır. Mal satışlarında bu s&uuml;re her hal&uuml;karda otuz g&uuml;n&uuml; ge&ccedil;emez.</p>\r\n\r\n<p>(2) Satıcı veya sağlayıcının birinci fıkrada yer alan y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;n&uuml; yerine getirmemesi durumunda, t&uuml;ketici s&ouml;zleşmeyi feshedebilir.</p>\r\n\r\n<p>(3) S&ouml;zleşmenin feshi durumunda, satıcı veya sağlayıcı, varsa teslimat masrafları da d&acirc;hil olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri fesih bildiriminin kendisine ulaştığı tarihten itibaren on d&ouml;rt g&uuml;n i&ccedil;inde t&uuml;keticiye&nbsp;4/12/1984tarihli ve 3095 sayılı Kanuni Faiz ve Temerr&uuml;t Faizine İlişkin Kanunun 1 inci maddesine g&ouml;re belirlenen kanuni faiziyle birlikte geri &ouml;demek ve varsa t&uuml;keticiyi bor&ccedil; altına sokan t&uuml;m kıymetli evrak ve benzeri belgeleri iade etmek zorundadır.</p>\r\n\r\n<p>(4) Sipariş konusu mal ya da hizmet ediminin yerine getirilmesinin&nbsp;imkansızlaştığı&nbsp;hallerde satıcı veya sağlayıcının bu durumu &ouml;ğrendiği tarihten itibaren &uuml;&ccedil; g&uuml;n i&ccedil;inde t&uuml;keticiye yazılı olarak veya kalıcı veri saklayıcısı ile bildirmesi ve varsa teslimat masrafları da d&acirc;hil olmak &uuml;zere tahsil edilen t&uuml;m &ouml;demeleri bildirim tarihinden itibaren en ge&ccedil; on d&ouml;rt g&uuml;n i&ccedil;inde iade etmesi zorunludur. Malın stokta bulunmaması durumu, mal ediminin yerine getirilmesinin imk&acirc;nsızlaşması olarak kabul edilmez.</p>\r\n\r\n<p><strong>Zarardan sorumluluk</strong></p>\r\n\r\n<p><strong>MADDE 17 &ndash;</strong>&nbsp;(1) Satıcı, malın t&uuml;ketici ya da t&uuml;keticinin taşıyıcı dışında belirleyeceği &uuml;&ccedil;&uuml;nc&uuml; bir kişiye teslimine kadar oluşan kayıp ve hasarlardan sorumludur.</p>\r\n\r\n<p>(2) T&uuml;keticinin, satıcının belirlediği taşıyıcı dışında başka bir taşıyıcı ile malın g&ouml;nderilmesini talep etmesi durumunda, malın ilgili taşıyıcıya tesliminden itibaren oluşabilecek kayıp ya da hasardan satıcı sorumlu değildir.</p>\r\n\r\n<p><strong>Telefon kullanım &uuml;creti</strong></p>\r\n\r\n<p><strong>MADDE 18 &ndash;</strong>&nbsp;(1) Kurulmuş olan s&ouml;zleşmeye ilişkin olarak t&uuml;keticilerin iletişime ge&ccedil;ebilmesi i&ccedil;in satıcı veya sağlayıcı tarafından bir telefon hattı tahsis edilmesi durumunda, bu hat ile ilgili olarak satıcı veya sağlayıcı olağan &uuml;cret tarifesinden daha y&uuml;ksek bir tarife se&ccedil;emez.</p>\r\n\r\n<p><strong>İlave &ouml;demeler</strong></p>\r\n\r\n<p><strong>MADDE 19 &ndash;</strong>&nbsp;(1) S&ouml;zleşme kurulmadan &ouml;nce, s&ouml;zleşme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;nden kaynaklanan ve &uuml;zerinde anlaşılmış esas bedel dışında herhangi bir ilave bedel talep edilebilmesi i&ccedil;in t&uuml;keticinin a&ccedil;ık onayının ayrıca alınması zorunludur.</p>\r\n\r\n<p>(2) T&uuml;keticinin a&ccedil;ık onayı alınmadan ilave &ouml;deme y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml; doğuran se&ccedil;eneklerin kendiliğinden se&ccedil;ili olarak sunulmuş olmasından dolayı t&uuml;ketici bir &ouml;demede bulunmuş ise, satıcı veya sağlayıcı bu &ouml;demelerin iadesini derhal yapmak zorundadır.</p>\r\n\r\n<p><strong>Bilgilerin saklanması ve ispat y&uuml;k&uuml;ml&uuml;l&uuml;ğ&uuml;</strong></p>\r\n\r\n<p><strong>MADDE 20 &minus;</strong>&nbsp;(1) Satıcı veya sağlayıcı, bu Y&ouml;netmelik kapsamında d&uuml;zenlenen cayma hakkı, bilgilendirme, teslimat ve diğer hususlardaki y&uuml;k&uuml;ml&uuml;l&uuml;klerine dair her bir işleme ilişkin bilgi ve belgeyi &uuml;&ccedil; yıl boyunca saklamak zorundadır.</p>\r\n\r\n<p>(2) Oluşturdukları sistem &ccedil;er&ccedil;evesinde, uzaktan iletişim ara&ccedil;larını kullanmak veya kullandırmak suretiyle satıcı veya sağlayıcı adına mesafeli s&ouml;zleşme kurulmasına aracılık edenler, bu Y&ouml;netmelikte yer alan hususlardan dolayı satıcı veya sağlayıcı ile yapılan işlemlere ilişkin kayıtları &uuml;&ccedil; yıl boyunca tutmak ve istenilmesi halinde bu bilgileri ilgili kurum, kuruluş ve t&uuml;keticilere vermekle y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p>(3) Satıcı veya sağlayıcı elektronik ortamda t&uuml;keticiye teslim edilen&nbsp;gayrimaddi&nbsp;malların veya ifa edilen hizmetlerin ayıpsız olduğunu ispatla y&uuml;k&uuml;ml&uuml;d&uuml;r.</p>\r\n\r\n<p>BEŞİNCİ B&Ouml;L&Uuml;M</p>\r\n\r\n<p>&Ccedil;eşitli ve Son H&uuml;k&uuml;mler</p>\r\n\r\n<p><strong>Y&uuml;r&uuml;rl&uuml;kten kaldırılan y&ouml;netmelik</strong></p>\r\n\r\n<p><strong>MADDE 21 &ndash;</strong>&nbsp;(1)&nbsp;6/3/2011&nbsp;tarihli ve 27866 sayılı Resm&icirc; Gazete&rsquo;de yayımlanan Mesafeli S&ouml;zleşmelere Dair Y&ouml;netmelik y&uuml;r&uuml;rl&uuml;kten kaldırılmıştır.</p>\r\n\r\n<p><strong>Y&uuml;r&uuml;rl&uuml;k</strong></p>\r\n\r\n<p><strong>MADDE 22 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik yayımı tarihinden itibaren &uuml;&ccedil; ay sonra y&uuml;r&uuml;rl&uuml;ğe girer.</p>\r\n\r\n<p><strong>Y&uuml;r&uuml;tme</strong></p>\r\n\r\n<p><strong>MADDE 23 &ndash;</strong>&nbsp;(1) Bu Y&ouml;netmelik h&uuml;k&uuml;mlerini G&uuml;mr&uuml;k ve Ticaret Bakanı y&uuml;r&uuml;t&uuml;r.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>EK</p>\r\n\r\n<p>&Ouml;RNEK CAYMA FORMU</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>(Bu form, sadece s&ouml;zleşmeden cayma hakkı kullanılmak istenildiğinde doldurup</p>\r\n\r\n<p>g&ouml;nderilecektir.)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Kime:</strong>&nbsp;(Satıcı veya sağlayıcı tarafından doldurulacak olan bu kısımda satıcı veya sağlayıcının ismi, unvanı, adresi varsa faks numarası ve e-posta adresi yer alacaktır.)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-Bu formla aşağıdaki malların satışına veya hizmetlerin sunulmasına ilişkin s&ouml;zleşmeden cayma hakkımı kullandığımı beyan ederim.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Sipariş tarihi veya teslim tarihi:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Cayma hakkına konu mal veya hizmet:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Cayma hakkına konu mal veya hizmetin bedeli:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-T&uuml;keticinin adı ve soyadı:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-T&uuml;keticinin adresi:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-T&uuml;keticinin imzası:</strong>&nbsp;(Sadece&nbsp;kağıt&nbsp;&uuml;zerinde g&ouml;nderilmesi halinde)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>-Tarih:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 20, '0', 'mesafeli-satis'),
(12, '', 'Nvidia', '<p>NvidiaNvidiaNvidiaNvidia</p>\r\n', 'nvidia', 11, '0', 'nvidia');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `sepet_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_adet` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`sepet_id`, `kullanici_id`, `urun_id`, `urun_adet`) VALUES
(2, 152, 12, 3),
(7, 151, 13, 1),
(8, 151, 6, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis`
--

CREATE TABLE `siparis` (
  `siparis_id` int(11) NOT NULL,
  `siparis_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `siparis_no` int(11) DEFAULT NULL,
  `kullanici_id` int(11) NOT NULL,
  `siparis_tip` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `siparis_odeme` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0',
  `siparis_toplam` float(9,2) NOT NULL,
  `siparis_banka` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis`
--

INSERT INTO `siparis` (`siparis_id`, `siparis_zaman`, `siparis_no`, `kullanici_id`, `siparis_tip`, `siparis_odeme`, `siparis_toplam`, `siparis_banka`) VALUES
(2, '2019-07-20 17:03:39', NULL, 151, 'Banka Havalesi', '0', 95.00, 'Akbank'),
(3, '2019-07-20 17:14:44', NULL, 151, 'Banka Havalesi', '0', 240.00, 'Akbank');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparis_detay`
--

CREATE TABLE `siparis_detay` (
  `siparisdetay_id` int(11) NOT NULL,
  `siparis_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urun_fiyat` float(9,2) NOT NULL,
  `urun_adet` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `siparis_detay`
--

INSERT INTO `siparis_detay` (`siparisdetay_id`, `siparis_id`, `urun_id`, `urun_fiyat`, `urun_adet`) VALUES
(3, 2, 14, 95.00, 1),
(4, 3, 13, 25.00, 2),
(5, 3, 8, 95.00, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `slider_resimyol` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_sira` int(2) NOT NULL,
  `slider_link` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `slider_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_ad`, `slider_resimyol`, `slider_sira`, `slider_link`, `slider_durum`) VALUES
(2, 'Slider 1', 'dimg/slider/23467252052842428817DxbyFjKV4AAx-VO.jpg', 1, '', '1'),
(5, 'Slider 3', 'dimg/slider/21960266572540427491maxresdefault.jpg', 2, '', '1'),
(7, 'Slider 5', 'dimg/slider/26051205062426628827930x387.png', 6, ' ', '1'),
(8, 'Slider 5', 'dimg/slider/22210277102695620329BBSx7ql.jpg', 3, '', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun`
--

CREATE TABLE `urun` (
  `urun_id` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `urun_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `urun_ad` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_seourl` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `urun_fiyat` float NOT NULL,
  `urun_video` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `urun_keyword` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `urun_stok` int(11) NOT NULL,
  `urun_durum` enum('0','1') COLLATE utf8_turkish_ci NOT NULL,
  `urun_onecikar` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urun`
--

INSERT INTO `urun` (`urun_id`, `kategori_id`, `urun_zaman`, `urun_ad`, `urun_seourl`, `urun_detay`, `urun_fiyat`, `urun_video`, `urun_keyword`, `urun_stok`, `urun_durum`, `urun_onecikar`) VALUES
(3, 2, '2017-07-19 16:42:08', 'Ekose süper gömlek mavi çizgili', 'ekose-super-gomlek-mavi-cizgili', '<p>Lorem Ipsum, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n', 25, 'asdasdasda', 'gömlek, süper mavi, kırmızı', 100, '1', '0'),
(4, 2, '2017-07-19 17:28:47', 'Ultra slim v yakalı tişört Yeşil', 'ultra-slim-v-yakali-tisort', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ante ipsum, dignissim interdum ultrices sit amet, iaculis ac orci. Fusce mi lorem, mollis vitae luctus eu, pharetra in diam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin id erat eget est interdum tempor eu id sem. Nullam eleifend arcu mi, non ullamcorper orci laoreet eu. Praesent ac mauris ultrices, finibus ex varius, ultricies erat. Curabitur luctus odio vitae elit interdum congue. Sed malesuada odio a metus molestie eleifend. Etiam tincidunt mollis neque id viverra. Nulla vel tellus sapien. Nullam tristique metus non malesuada hendrerit.</p>\r\n\r\n<p>Praesent eget malesuada odio. Vivamus vitae mattis lectus. Fusce ornare, libero id pretium tempor, tellus risus congue leo, id euismod felis velit et sapien. Nam ullamcorper lobortis elit, ut vestibulum enim pulvinar quis. Morbi gravida nulla sit amet pharetra dignissim. Proin congue sagittis erat a porttitor. Mauris eu turpis elementum, posuere purus fringilla, porta justo. Ut vitae odio sit amet tortor dignissim commodo pellentesque sit amet mi. Sed aliquam mollis nisi. Nullam viverra, orci non semper semper, magna elit pharetra ipsum, id maximus nulla turpis ut nibh. Sed facilisis risus libero, et pharetra nunc finibus quis. Nullam sagittis purus ac velit ultricies ornare. In hac habitasse platea dictumst. Donec egestas ullamcorper velit, quis tempor elit lacinia et. Proin bibendum justo nec quam viverra, ac lacinia tortor faucibus. Nam massa neque, bibendum in lacinia at, eleifend at purus.</p>\r\n\r\n<p>Sed fringilla auctor nisi, eget hendrerit mi efficitur eu. Aliquam malesuada quam et pharetra dictum. Proin suscipit erat eu quam finibus, in vehicula dolor cursus. Etiam tincidunt, sapien ac tempor tempus, nisi ipsum ornare erat, id tempor nisl dolor ac felis. Phasellus vel ultrices elit. Maecenas tortor nunc, iaculis sed ipsum ut, auctor tempor diam. Pellentesque et urna tempus, pulvinar nisi vel, luctus diam. Morbi auctor risus tristique accumsan egestas. Fusce at venenatis nibh. Nam consectetur enim vel augue semper, at dignissim mi pellentesque. Curabitur sit amet erat ut arcu blandit volutpat id eget augue. Praesent ac quam et tellus volutpat pellentesque. Morbi orci odio, lacinia et egestas non, aliquet ut metus. Praesent non ligula vitae libero fringilla rutrum. Donec eu dolor sit amet elit venenatis congue in ut sem. Etiam in lacus nunc.</p>\r\n\r\n<p>Fusce vehicula leo a gravida venenatis. Duis mollis ipsum nec nunc ornare, a tempor augue commodo. Duis varius urna eu nisl malesuada, eu molestie orci facilisis. Phasellus non congue sem, ut consectetur sem. Duis eu diam dolor. Ut in nisl enim. Aliquam efficitur felis quis lobortis ullamcorper. Mauris ornare tortor urna, at facilisis ex sagittis ac. Duis vel nibh ante. Sed nec rhoncus libero, non luctus elit. Ut sed erat vel metus eleifend pulvinar. Quisque porttitor mauris eu varius ullamcorper. Sed fermentum est ut tincidunt rutrum.</p>\r\n\r\n<p>Suspendisse sit amet vulputate metus. Aliquam feugiat, neque sit amet viverra maximus, ante augue facilisis augue, sed gravida ipsum ipsum a sem. In ultricies metus nisl, a efficitur odio lobortis finibus. Curabitur pretium pretium ipsum. Praesent sapien ex, iaculis vel metus et, pulvinar accumsan nulla. In ultricies a mi non fringilla. In quis tincidunt dolor. Fusce dapibus sapien at lectus congue aliquet. Sed tempor eros ut orci consectetur imperdiet. Ut efficitur nisi id magna cursus viverra. Sed mollis mauris vitae risus pharetra, eu vehicula ante molestie. Sed tincidunt diam ac metus varius, sed hendrerit lectus ullamcorper. Sed eget dignissim erat, at feugiat magna. Fusce quis iaculis nisi.</p>\r\n', 25, '', 'vyaka, tişört, slim', 100, '1', '0'),
(5, 1, '2017-07-19 17:30:01', 'GP Bıçak Anahtarlık', 'gp-bicak-anahtarlik', '<p>Hedefe ateş eder, katledilen her rakip birim başına Altın yağmalar.</p>\r\n\r\n<p>20/45/70/95/120 (+100% Saldırı G&uuml;c&uuml;) fiziksel hasar veren bir mermi ateşler (kritik vurabilir ve isabet etkileri uygular).&Ccedil;akaralmaz hedefi katlederse, Gangplank&nbsp;3/4/5/6/7&nbsp;ilave Altın ve&nbsp;4/5/6/7/8&nbsp;G&uuml;m&uuml;ş Yılan&nbsp;yağmalar (G&uuml;m&uuml;ş Yılan&nbsp;sikkelerini d&uuml;kk&acirc;nda takas ederek Top Salvosu geliştirmesi alabilirsin).</p>\r\n', 20, '', 'gp,bıçak,top', 20, '1', '1'),
(6, 1, '2017-07-19 16:42:08', 'Ekose süper gömlek kırmızı çizgili', 'ekose-super-gomlek-mavi-cizgili', '<p>Lorem Ipsum, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n', 25, 'asdasdasda', 'gömlek, süper mavi, kırmızı', 100, '1', '0'),
(7, 2, '2017-07-19 17:28:47', 'Ultra slim v yakalı tişört Yeşil', 'ultra-slim-v-yakali-tisort', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ante ipsum, dignissim interdum ultrices sit amet, iaculis ac orci. Fusce mi lorem, mollis vitae luctus eu, pharetra in diam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin id erat eget est interdum tempor eu id sem. Nullam eleifend arcu mi, non ullamcorper orci laoreet eu. Praesent ac mauris ultrices, finibus ex varius, ultricies erat. Curabitur luctus odio vitae elit interdum congue. Sed malesuada odio a metus molestie eleifend. Etiam tincidunt mollis neque id viverra. Nulla vel tellus sapien. Nullam tristique metus non malesuada hendrerit.</p>\r\n\r\n<p>Praesent eget malesuada odio. Vivamus vitae mattis lectus. Fusce ornare, libero id pretium tempor, tellus risus congue leo, id euismod felis velit et sapien. Nam ullamcorper lobortis elit, ut vestibulum enim pulvinar quis. Morbi gravida nulla sit amet pharetra dignissim. Proin congue sagittis erat a porttitor. Mauris eu turpis elementum, posuere purus fringilla, porta justo. Ut vitae odio sit amet tortor dignissim commodo pellentesque sit amet mi. Sed aliquam mollis nisi. Nullam viverra, orci non semper semper, magna elit pharetra ipsum, id maximus nulla turpis ut nibh. Sed facilisis risus libero, et pharetra nunc finibus quis. Nullam sagittis purus ac velit ultricies ornare. In hac habitasse platea dictumst. Donec egestas ullamcorper velit, quis tempor elit lacinia et. Proin bibendum justo nec quam viverra, ac lacinia tortor faucibus. Nam massa neque, bibendum in lacinia at, eleifend at purus.</p>\r\n\r\n<p>Sed fringilla auctor nisi, eget hendrerit mi efficitur eu. Aliquam malesuada quam et pharetra dictum. Proin suscipit erat eu quam finibus, in vehicula dolor cursus. Etiam tincidunt, sapien ac tempor tempus, nisi ipsum ornare erat, id tempor nisl dolor ac felis. Phasellus vel ultrices elit. Maecenas tortor nunc, iaculis sed ipsum ut, auctor tempor diam. Pellentesque et urna tempus, pulvinar nisi vel, luctus diam. Morbi auctor risus tristique accumsan egestas. Fusce at venenatis nibh. Nam consectetur enim vel augue semper, at dignissim mi pellentesque. Curabitur sit amet erat ut arcu blandit volutpat id eget augue. Praesent ac quam et tellus volutpat pellentesque. Morbi orci odio, lacinia et egestas non, aliquet ut metus. Praesent non ligula vitae libero fringilla rutrum. Donec eu dolor sit amet elit venenatis congue in ut sem. Etiam in lacus nunc.</p>\r\n\r\n<p>Fusce vehicula leo a gravida venenatis. Duis mollis ipsum nec nunc ornare, a tempor augue commodo. Duis varius urna eu nisl malesuada, eu molestie orci facilisis. Phasellus non congue sem, ut consectetur sem. Duis eu diam dolor. Ut in nisl enim. Aliquam efficitur felis quis lobortis ullamcorper. Mauris ornare tortor urna, at facilisis ex sagittis ac. Duis vel nibh ante. Sed nec rhoncus libero, non luctus elit. Ut sed erat vel metus eleifend pulvinar. Quisque porttitor mauris eu varius ullamcorper. Sed fermentum est ut tincidunt rutrum.</p>\r\n\r\n<p>Suspendisse sit amet vulputate metus. Aliquam feugiat, neque sit amet viverra maximus, ante augue facilisis augue, sed gravida ipsum ipsum a sem. In ultricies metus nisl, a efficitur odio lobortis finibus. Curabitur pretium pretium ipsum. Praesent sapien ex, iaculis vel metus et, pulvinar accumsan nulla. In ultricies a mi non fringilla. In quis tincidunt dolor. Fusce dapibus sapien at lectus congue aliquet. Sed tempor eros ut orci consectetur imperdiet. Ut efficitur nisi id magna cursus viverra. Sed mollis mauris vitae risus pharetra, eu vehicula ante molestie. Sed tincidunt diam ac metus varius, sed hendrerit lectus ullamcorper. Sed eget dignissim erat, at feugiat magna. Fusce quis iaculis nisi.</p>\r\n', 25, '', 'vyaka, tişört, slim', 100, '1', '0'),
(8, 1, '2017-07-19 17:30:01', 'Lüx deri şapka', 'lux-deri-sapka', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ante ipsum, dignissim interdum ultrices sit amet, iaculis ac orci. Fusce mi lorem, mollis vitae luctus eu, pharetra in diam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin id erat eget est interdum tempor eu id sem. Nullam eleifend arcu mi, non ullamcorper orci laoreet eu. Praesent ac mauris ultrices, finibus ex varius, ultricies erat. Curabitur luctus odio vitae elit interdum congue. Sed malesuada odio a metus molestie eleifend. Etiam tincidunt mollis neque id viverra. Nulla vel tellus sapien. Nullam tristique metus non malesuada hendrerit.</p>\r\n\r\n<p>Praesent eget malesuada odio. Vivamus vitae mattis lectus. Fusce ornare, libero id pretium tempor, tellus risus congue leo, id euismod felis velit et sapien. Nam ullamcorper lobortis elit, ut vestibulum enim pulvinar quis. Morbi gravida nulla sit amet pharetra dignissim. Proin congue sagittis erat a porttitor. Mauris eu turpis elementum, posuere purus fringilla, porta justo. Ut vitae odio sit amet tortor dignissim commodo pellentesque sit amet mi. Sed aliquam mollis nisi. Nullam viverra, orci non semper semper, magna elit pharetra ipsum, id maximus nulla turpis ut nibh. Sed facilisis risus libero, et pharetra nunc finibus quis. Nullam sagittis purus ac velit ultricies ornare. In hac habitasse platea dictumst. Donec egestas ullamcorper velit, quis tempor elit lacinia et. Proin bibendum justo nec quam viverra, ac lacinia tortor faucibus. Nam massa neque, bibendum in lacinia at, eleifend at purus.</p>\r\n\r\n<p>Sed fringilla auctor nisi, eget hendrerit mi efficitur eu. Aliquam malesuada quam et pharetra dictum. Proin suscipit erat eu quam finibus, in vehicula dolor cursus. Etiam tincidunt, sapien ac tempor tempus, nisi ipsum ornare erat, id tempor nisl dolor ac felis. Phasellus vel ultrices elit. Maecenas tortor nunc, iaculis sed ipsum ut, auctor tempor diam. Pellentesque et urna tempus, pulvinar nisi vel, luctus diam. Morbi auctor risus tristique accumsan egestas. Fusce at venenatis nibh. Nam consectetur enim vel augue semper, at dignissim mi pellentesque. Curabitur sit amet erat ut arcu blandit volutpat id eget augue. Praesent ac quam et tellus volutpat pellentesque. Morbi orci odio, lacinia et egestas non, aliquet ut metus. Praesent non ligula vitae libero fringilla rutrum. Donec eu dolor sit amet elit venenatis congue in ut sem. Etiam in lacus nunc.</p>\r\n\r\n<p>Fusce vehicula leo a gravida venenatis. Duis mollis ipsum nec nunc ornare, a tempor augue commodo. Duis varius urna eu nisl malesuada, eu molestie orci facilisis. Phasellus non congue sem, ut consectetur sem. Duis eu diam dolor. Ut in nisl enim. Aliquam efficitur felis quis lobortis ullamcorper. Mauris ornare tortor urna, at facilisis ex sagittis ac. Duis vel nibh ante. Sed nec rhoncus libero, non luctus elit. Ut sed erat vel metus eleifend pulvinar. Quisque porttitor mauris eu varius ullamcorper. Sed fermentum est ut tincidunt rutrum.</p>\r\n\r\n<p>Suspendisse sit amet vulputate metus. Aliquam feugiat, neque sit amet viverra maximus, ante augue facilisis augue, sed gravida ipsum ipsum a sem. In ultricies metus nisl, a efficitur odio lobortis finibus. Curabitur pretium pretium ipsum. Praesent sapien ex, iaculis vel metus et, pulvinar accumsan nulla. In ultricies a mi non fringilla. In quis tincidunt dolor. Fusce dapibus sapien at lectus congue aliquet. Sed tempor eros ut orci consectetur imperdiet. Ut efficitur nisi id magna cursus viverra. Sed mollis mauris vitae risus pharetra, eu vehicula ante molestie. Sed tincidunt diam ac metus varius, sed hendrerit lectus ullamcorper. Sed eget dignissim erat, at feugiat magna. Fusce quis iaculis nisi.</p>\r\n', 95, '', 'şapka, kasket, takke', 999, '1', '0'),
(9, 1, '2017-07-19 16:42:08', 'Nami Asası', 'nami-asasi', '<p>Ortaya &ccedil;ıkardığı akıntı, takım arkadaşlarıyla rakip şampiyonlar arasında sekerken takım arkadaşlarını iyileştirir, rakip şampiyonlara hasar verir.</p><p>Yolladığı akıntı, takım arkadaşları ve g&ouml;r&uuml;n&uuml;r rakip şampiyonlar arasında seker.<br />Takım arkadaşlarına isabet:&nbsp;60/85/110/135/160&nbsp;(+30% Yetenek G&uuml;c&uuml;)&nbsp;Can iyileştirir ve yakındaki g&ouml;r&uuml;n&uuml;r bir rakip şampiyona sı&ccedil;rar.<br />Rakibe isabet:&nbsp;70/110/150/190/230&nbsp;(+50% Yetenek G&uuml;c&uuml;)&nbsp;B&uuml;y&uuml; Hasarı verir ve Nami&#39;nin yakınındaki takım arkadaşına sı&ccedil;rar.Her bir hedefe sadece bir kez sı&ccedil;rayabilir ve en fazla 3 hedefe isabet eder. Hasar veya iyileştirme miktarı, her sı&ccedil;ramayla&nbsp;(%0)&nbsp;değişir.</p>', 25, 'WN5OA1Qv1N4', 'nami, asa, anahtarlık', 100, '1', '1'),
(10, 4, '2017-07-19 17:28:47', 'Ultra slim v yakalı tişört Yeşil', 'ultra-slim-v-yakali-tisort', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ante ipsum, dignissim interdum ultrices sit amet, iaculis ac orci. Fusce mi lorem, mollis vitae luctus eu, pharetra in diam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin id erat eget est interdum tempor eu id sem. Nullam eleifend arcu mi, non ullamcorper orci laoreet eu. Praesent ac mauris ultrices, finibus ex varius, ultricies erat. Curabitur luctus odio vitae elit interdum congue. Sed malesuada odio a metus molestie eleifend. Etiam tincidunt mollis neque id viverra. Nulla vel tellus sapien. Nullam tristique metus non malesuada hendrerit.</p>\r\n\r\n<p>Praesent eget malesuada odio. Vivamus vitae mattis lectus. Fusce ornare, libero id pretium tempor, tellus risus congue leo, id euismod felis velit et sapien. Nam ullamcorper lobortis elit, ut vestibulum enim pulvinar quis. Morbi gravida nulla sit amet pharetra dignissim. Proin congue sagittis erat a porttitor. Mauris eu turpis elementum, posuere purus fringilla, porta justo. Ut vitae odio sit amet tortor dignissim commodo pellentesque sit amet mi. Sed aliquam mollis nisi. Nullam viverra, orci non semper semper, magna elit pharetra ipsum, id maximus nulla turpis ut nibh. Sed facilisis risus libero, et pharetra nunc finibus quis. Nullam sagittis purus ac velit ultricies ornare. In hac habitasse platea dictumst. Donec egestas ullamcorper velit, quis tempor elit lacinia et. Proin bibendum justo nec quam viverra, ac lacinia tortor faucibus. Nam massa neque, bibendum in lacinia at, eleifend at purus.</p>\r\n\r\n<p>Sed fringilla auctor nisi, eget hendrerit mi efficitur eu. Aliquam malesuada quam et pharetra dictum. Proin suscipit erat eu quam finibus, in vehicula dolor cursus. Etiam tincidunt, sapien ac tempor tempus, nisi ipsum ornare erat, id tempor nisl dolor ac felis. Phasellus vel ultrices elit. Maecenas tortor nunc, iaculis sed ipsum ut, auctor tempor diam. Pellentesque et urna tempus, pulvinar nisi vel, luctus diam. Morbi auctor risus tristique accumsan egestas. Fusce at venenatis nibh. Nam consectetur enim vel augue semper, at dignissim mi pellentesque. Curabitur sit amet erat ut arcu blandit volutpat id eget augue. Praesent ac quam et tellus volutpat pellentesque. Morbi orci odio, lacinia et egestas non, aliquet ut metus. Praesent non ligula vitae libero fringilla rutrum. Donec eu dolor sit amet elit venenatis congue in ut sem. Etiam in lacus nunc.</p>\r\n\r\n<p>Fusce vehicula leo a gravida venenatis. Duis mollis ipsum nec nunc ornare, a tempor augue commodo. Duis varius urna eu nisl malesuada, eu molestie orci facilisis. Phasellus non congue sem, ut consectetur sem. Duis eu diam dolor. Ut in nisl enim. Aliquam efficitur felis quis lobortis ullamcorper. Mauris ornare tortor urna, at facilisis ex sagittis ac. Duis vel nibh ante. Sed nec rhoncus libero, non luctus elit. Ut sed erat vel metus eleifend pulvinar. Quisque porttitor mauris eu varius ullamcorper. Sed fermentum est ut tincidunt rutrum.</p>\r\n\r\n<p>Suspendisse sit amet vulputate metus. Aliquam feugiat, neque sit amet viverra maximus, ante augue facilisis augue, sed gravida ipsum ipsum a sem. In ultricies metus nisl, a efficitur odio lobortis finibus. Curabitur pretium pretium ipsum. Praesent sapien ex, iaculis vel metus et, pulvinar accumsan nulla. In ultricies a mi non fringilla. In quis tincidunt dolor. Fusce dapibus sapien at lectus congue aliquet. Sed tempor eros ut orci consectetur imperdiet. Ut efficitur nisi id magna cursus viverra. Sed mollis mauris vitae risus pharetra, eu vehicula ante molestie. Sed tincidunt diam ac metus varius, sed hendrerit lectus ullamcorper. Sed eget dignissim erat, at feugiat magna. Fusce quis iaculis nisi.</p>\r\n', 25, '', 'vyaka, tişört, slim', 100, '1', '0'),
(11, 3, '2017-07-19 17:30:01', 'Lüx kasket şapka', 'lux-kasket-sapka', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ante ipsum, dignissim interdum ultrices sit amet, iaculis ac orci. Fusce mi lorem, mollis vitae luctus eu, pharetra in diam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin id erat eget est interdum tempor eu id sem. Nullam eleifend arcu mi, non ullamcorper orci laoreet eu. Praesent ac mauris ultrices, finibus ex varius, ultricies erat. Curabitur luctus odio vitae elit interdum congue. Sed malesuada odio a metus molestie eleifend. Etiam tincidunt mollis neque id viverra. Nulla vel tellus sapien. Nullam tristique metus non malesuada hendrerit.</p>\r\n\r\n<p>Praesent eget malesuada odio. Vivamus vitae mattis lectus. Fusce ornare, libero id pretium tempor, tellus risus congue leo, id euismod felis velit et sapien. Nam ullamcorper lobortis elit, ut vestibulum enim pulvinar quis. Morbi gravida nulla sit amet pharetra dignissim. Proin congue sagittis erat a porttitor. Mauris eu turpis elementum, posuere purus fringilla, porta justo. Ut vitae odio sit amet tortor dignissim commodo pellentesque sit amet mi. Sed aliquam mollis nisi. Nullam viverra, orci non semper semper, magna elit pharetra ipsum, id maximus nulla turpis ut nibh. Sed facilisis risus libero, et pharetra nunc finibus quis. Nullam sagittis purus ac velit ultricies ornare. In hac habitasse platea dictumst. Donec egestas ullamcorper velit, quis tempor elit lacinia et. Proin bibendum justo nec quam viverra, ac lacinia tortor faucibus. Nam massa neque, bibendum in lacinia at, eleifend at purus.</p>\r\n\r\n<p>Sed fringilla auctor nisi, eget hendrerit mi efficitur eu. Aliquam malesuada quam et pharetra dictum. Proin suscipit erat eu quam finibus, in vehicula dolor cursus. Etiam tincidunt, sapien ac tempor tempus, nisi ipsum ornare erat, id tempor nisl dolor ac felis. Phasellus vel ultrices elit. Maecenas tortor nunc, iaculis sed ipsum ut, auctor tempor diam. Pellentesque et urna tempus, pulvinar nisi vel, luctus diam. Morbi auctor risus tristique accumsan egestas. Fusce at venenatis nibh. Nam consectetur enim vel augue semper, at dignissim mi pellentesque. Curabitur sit amet erat ut arcu blandit volutpat id eget augue. Praesent ac quam et tellus volutpat pellentesque. Morbi orci odio, lacinia et egestas non, aliquet ut metus. Praesent non ligula vitae libero fringilla rutrum. Donec eu dolor sit amet elit venenatis congue in ut sem. Etiam in lacus nunc.</p>\r\n\r\n<p>Fusce vehicula leo a gravida venenatis. Duis mollis ipsum nec nunc ornare, a tempor augue commodo. Duis varius urna eu nisl malesuada, eu molestie orci facilisis. Phasellus non congue sem, ut consectetur sem. Duis eu diam dolor. Ut in nisl enim. Aliquam efficitur felis quis lobortis ullamcorper. Mauris ornare tortor urna, at facilisis ex sagittis ac. Duis vel nibh ante. Sed nec rhoncus libero, non luctus elit. Ut sed erat vel metus eleifend pulvinar. Quisque porttitor mauris eu varius ullamcorper. Sed fermentum est ut tincidunt rutrum.</p>\r\n\r\n<p>Suspendisse sit amet vulputate metus. Aliquam feugiat, neque sit amet viverra maximus, ante augue facilisis augue, sed gravida ipsum ipsum a sem. In ultricies metus nisl, a efficitur odio lobortis finibus. Curabitur pretium pretium ipsum. Praesent sapien ex, iaculis vel metus et, pulvinar accumsan nulla. In ultricies a mi non fringilla. In quis tincidunt dolor. Fusce dapibus sapien at lectus congue aliquet. Sed tempor eros ut orci consectetur imperdiet. Ut efficitur nisi id magna cursus viverra. Sed mollis mauris vitae risus pharetra, eu vehicula ante molestie. Sed tincidunt diam ac metus varius, sed hendrerit lectus ullamcorper. Sed eget dignissim erat, at feugiat magna. Fusce quis iaculis nisi.</p>\r\n', 95, '', 'şapka, kasket, takke', 999, '1', '1'),
(12, 2, '2017-07-19 16:42:08', 'Ekose süper gömlek kırmızı çizgili', 'ekose-super-gomlek-mavi-cizgili', '<p>Lorem Ipsum, dizgi ve baskı end&uuml;strisinde kullanılan mıgır metinlerdir. Lorem Ipsum, adı bilinmeyen bir matbaacının bir hurufat numune kitabı oluşturmak &uuml;zere bir yazı galerisini alarak karıştırdığı 1500&#39;lerden beri end&uuml;stri standardı sahte metinler olarak kullanılmıştır. Beşy&uuml;z yıl boyunca varlığını s&uuml;rd&uuml;rmekle kalmamış, aynı zamanda pek değişmeden elektronik dizgiye de sı&ccedil;ramıştır. 1960&#39;larda Lorem Ipsum pasajları da i&ccedil;eren Letraset yapraklarının yayınlanması ile ve yakın zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yayıncılık yazılımları ile pop&uuml;ler olmuştur.</p>\r\n', 25, 'asdasdasda', 'gömlek, süper mavi, kırmızı', 100, '1', '0'),
(13, 4, '2017-07-19 17:28:47', 'Ultra slim v yakalı tişört Yeşil', 'ultra-slim-v-yakali-tisort-yesil', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ante ipsum, dignissim interdum ultrices sit amet, iaculis ac orci. Fusce mi lorem, mollis vitae luctus eu, pharetra in diam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin id erat eget est interdum tempor eu id sem. Nullam eleifend arcu mi, non ullamcorper orci laoreet eu. Praesent ac mauris ultrices, finibus ex varius, ultricies erat. Curabitur luctus odio vitae elit interdum congue. Sed malesuada odio a metus molestie eleifend. Etiam tincidunt mollis neque id viverra. Nulla vel tellus sapien. Nullam tristique metus non malesuada hendrerit.</p>\r\n\r\n<p>Praesent eget malesuada odio. Vivamus vitae mattis lectus. Fusce ornare, libero id pretium tempor, tellus risus congue leo, id euismod felis velit et sapien. Nam ullamcorper lobortis elit, ut vestibulum enim pulvinar quis. Morbi gravida nulla sit amet pharetra dignissim. Proin congue sagittis erat a porttitor. Mauris eu turpis elementum, posuere purus fringilla, porta justo. Ut vitae odio sit amet tortor dignissim commodo pellentesque sit amet mi. Sed aliquam mollis nisi. Nullam viverra, orci non semper semper, magna elit pharetra ipsum, id maximus nulla turpis ut nibh. Sed facilisis risus libero, et pharetra nunc finibus quis. Nullam sagittis purus ac velit ultricies ornare. In hac habitasse platea dictumst. Donec egestas ullamcorper velit, quis tempor elit lacinia et. Proin bibendum justo nec quam viverra, ac lacinia tortor faucibus. Nam massa neque, bibendum in lacinia at, eleifend at purus.</p>\r\n\r\n<p>Sed fringilla auctor nisi, eget hendrerit mi efficitur eu. Aliquam malesuada quam et pharetra dictum. Proin suscipit erat eu quam finibus, in vehicula dolor cursus. Etiam tincidunt, sapien ac tempor tempus, nisi ipsum ornare erat, id tempor nisl dolor ac felis. Phasellus vel ultrices elit. Maecenas tortor nunc, iaculis sed ipsum ut, auctor tempor diam. Pellentesque et urna tempus, pulvinar nisi vel, luctus diam. Morbi auctor risus tristique accumsan egestas. Fusce at venenatis nibh. Nam consectetur enim vel augue semper, at dignissim mi pellentesque. Curabitur sit amet erat ut arcu blandit volutpat id eget augue. Praesent ac quam et tellus volutpat pellentesque. Morbi orci odio, lacinia et egestas non, aliquet ut metus. Praesent non ligula vitae libero fringilla rutrum. Donec eu dolor sit amet elit venenatis congue in ut sem. Etiam in lacus nunc.</p>\r\n\r\n<p>Fusce vehicula leo a gravida venenatis. Duis mollis ipsum nec nunc ornare, a tempor augue commodo. Duis varius urna eu nisl malesuada, eu molestie orci facilisis. Phasellus non congue sem, ut consectetur sem. Duis eu diam dolor. Ut in nisl enim. Aliquam efficitur felis quis lobortis ullamcorper. Mauris ornare tortor urna, at facilisis ex sagittis ac. Duis vel nibh ante. Sed nec rhoncus libero, non luctus elit. Ut sed erat vel metus eleifend pulvinar. Quisque porttitor mauris eu varius ullamcorper. Sed fermentum est ut tincidunt rutrum.</p>\r\n\r\n<p>Suspendisse sit amet vulputate metus. Aliquam feugiat, neque sit amet viverra maximus, ante augue facilisis augue, sed gravida ipsum ipsum a sem. In ultricies metus nisl, a efficitur odio lobortis finibus. Curabitur pretium pretium ipsum. Praesent sapien ex, iaculis vel metus et, pulvinar accumsan nulla. In ultricies a mi non fringilla. In quis tincidunt dolor. Fusce dapibus sapien at lectus congue aliquet. Sed tempor eros ut orci consectetur imperdiet. Ut efficitur nisi id magna cursus viverra. Sed mollis mauris vitae risus pharetra, eu vehicula ante molestie. Sed tincidunt diam ac metus varius, sed hendrerit lectus ullamcorper. Sed eget dignissim erat, at feugiat magna. Fusce quis iaculis nisi.</p>\r\n', 25, '', 'vyaka, tişört, slim', 100, '1', '1'),
(14, 7, '2017-07-19 17:30:01', 'Lüx deri şapka', 'lux-deri-sapka', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ante ipsum, dignissim interdum ultrices sit amet, iaculis ac orci. Fusce mi lorem, mollis vitae luctus eu, pharetra in diam. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Proin id erat eget est interdum tempor eu id sem. Nullam eleifend arcu mi, non ullamcorper orci laoreet eu. Praesent ac mauris ultrices, finibus ex varius, ultricies erat. Curabitur luctus odio vitae elit interdum congue. Sed malesuada odio a metus molestie eleifend. Etiam tincidunt mollis neque id viverra. Nulla vel tellus sapien. Nullam tristique metus non malesuada hendrerit.</p>\r\n\r\n<p>Praesent eget malesuada odio. Vivamus vitae mattis lectus. Fusce ornare, libero id pretium tempor, tellus risus congue leo, id euismod felis velit et sapien. Nam ullamcorper lobortis elit, ut vestibulum enim pulvinar quis. Morbi gravida nulla sit amet pharetra dignissim. Proin congue sagittis erat a porttitor. Mauris eu turpis elementum, posuere purus fringilla, porta justo. Ut vitae odio sit amet tortor dignissim commodo pellentesque sit amet mi. Sed aliquam mollis nisi. Nullam viverra, orci non semper semper, magna elit pharetra ipsum, id maximus nulla turpis ut nibh. Sed facilisis risus libero, et pharetra nunc finibus quis. Nullam sagittis purus ac velit ultricies ornare. In hac habitasse platea dictumst. Donec egestas ullamcorper velit, quis tempor elit lacinia et. Proin bibendum justo nec quam viverra, ac lacinia tortor faucibus. Nam massa neque, bibendum in lacinia at, eleifend at purus.</p>\r\n\r\n<p>Sed fringilla auctor nisi, eget hendrerit mi efficitur eu. Aliquam malesuada quam et pharetra dictum. Proin suscipit erat eu quam finibus, in vehicula dolor cursus. Etiam tincidunt, sapien ac tempor tempus, nisi ipsum ornare erat, id tempor nisl dolor ac felis. Phasellus vel ultrices elit. Maecenas tortor nunc, iaculis sed ipsum ut, auctor tempor diam. Pellentesque et urna tempus, pulvinar nisi vel, luctus diam. Morbi auctor risus tristique accumsan egestas. Fusce at venenatis nibh. Nam consectetur enim vel augue semper, at dignissim mi pellentesque. Curabitur sit amet erat ut arcu blandit volutpat id eget augue. Praesent ac quam et tellus volutpat pellentesque. Morbi orci odio, lacinia et egestas non, aliquet ut metus. Praesent non ligula vitae libero fringilla rutrum. Donec eu dolor sit amet elit venenatis congue in ut sem. Etiam in lacus nunc.</p>\r\n\r\n<p>Fusce vehicula leo a gravida venenatis. Duis mollis ipsum nec nunc ornare, a tempor augue commodo. Duis varius urna eu nisl malesuada, eu molestie orci facilisis. Phasellus non congue sem, ut consectetur sem. Duis eu diam dolor. Ut in nisl enim. Aliquam efficitur felis quis lobortis ullamcorper. Mauris ornare tortor urna, at facilisis ex sagittis ac. Duis vel nibh ante. Sed nec rhoncus libero, non luctus elit. Ut sed erat vel metus eleifend pulvinar. Quisque porttitor mauris eu varius ullamcorper. Sed fermentum est ut tincidunt rutrum.</p>\r\n\r\n<p>Suspendisse sit amet vulputate metus. Aliquam feugiat, neque sit amet viverra maximus, ante augue facilisis augue, sed gravida ipsum ipsum a sem. In ultricies metus nisl, a efficitur odio lobortis finibus. Curabitur pretium pretium ipsum. Praesent sapien ex, iaculis vel metus et, pulvinar accumsan nulla. In ultricies a mi non fringilla. In quis tincidunt dolor. Fusce dapibus sapien at lectus congue aliquet. Sed tempor eros ut orci consectetur imperdiet. Ut efficitur nisi id magna cursus viverra. Sed mollis mauris vitae risus pharetra, eu vehicula ante molestie. Sed tincidunt diam ac metus varius, sed hendrerit lectus ullamcorper. Sed eget dignissim erat, at feugiat magna. Fusce quis iaculis nisi.</p>\r\n', 95, '', 'şapka, kasket, takke', 999, '1', '1');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunfoto`
--

CREATE TABLE `urunfoto` (
  `urunfoto_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `urunfoto_resimyol` varchar(250) CHARACTER SET utf8 NOT NULL,
  `urunfoto_sira` int(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `urunfoto`
--

INSERT INTO `urunfoto` (`urunfoto_id`, `urun_id`, `urunfoto_resimyol`, `urunfoto_sira`) VALUES
(3, 5, 'dimg/urun/31523296173099224612gp1.jpg', 1),
(4, 5, 'dimg/urun/27555248832900226931gp2.jpg', 2),
(5, 5, 'dimg/urun/29013315043129122241gp3.jpg', 3),
(7, 5, 'dimg/urun/23652255282125528607gp4.jpg', 4),
(8, 9, 'dimg/urun/3011022697237192702020150509_222111.jpg', 2),
(9, 9, 'dimg/urun/2314420373286342510420150509_222117.jpg', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `yorum_id` int(11) NOT NULL,
  `kullanici_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `yorum_detay` text COLLATE utf8_turkish_ci NOT NULL,
  `yorum_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `yorum_onay` enum('0','1') COLLATE utf8_turkish_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `kullanici_id`, `urun_id`, `yorum_detay`, `yorum_zaman`, `yorum_onay`) VALUES
(1, 1231, 0, 'sadada', '2019-07-19 18:54:17', '0'),
(8, 151, 14, ' Güzel  şakpa <3', '2019-07-19 19:46:38', '1'),
(9, 153, 2, 'sadada', '2019-07-19 18:54:17', '0'),
(11, 152, 14, 'Ben beğenmedim.', '2019-07-19 20:40:57', '1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ayar`
--
ALTER TABLE `ayar`
  ADD PRIMARY KEY (`ayar_id`);

--
-- Tablo için indeksler `banka`
--
ALTER TABLE `banka`
  ADD PRIMARY KEY (`banka_id`);

--
-- Tablo için indeksler `hakkimizda`
--
ALTER TABLE `hakkimizda`
  ADD PRIMARY KEY (`hakkimizda_id`);

--
-- Tablo için indeksler `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`kullanici_id`);

--
-- Tablo için indeksler `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`sepet_id`);

--
-- Tablo için indeksler `siparis`
--
ALTER TABLE `siparis`
  ADD PRIMARY KEY (`siparis_id`);

--
-- Tablo için indeksler `siparis_detay`
--
ALTER TABLE `siparis_detay`
  ADD PRIMARY KEY (`siparisdetay_id`);

--
-- Tablo için indeksler `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Tablo için indeksler `urun`
--
ALTER TABLE `urun`
  ADD PRIMARY KEY (`urun_id`);

--
-- Tablo için indeksler `urunfoto`
--
ALTER TABLE `urunfoto`
  ADD PRIMARY KEY (`urunfoto_id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`yorum_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `banka`
--
ALTER TABLE `banka`
  MODIFY `banka_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Tablo için AUTO_INCREMENT değeri `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `kullanici_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- Tablo için AUTO_INCREMENT değeri `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `sepet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Tablo için AUTO_INCREMENT değeri `siparis`
--
ALTER TABLE `siparis`
  MODIFY `siparis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Tablo için AUTO_INCREMENT değeri `siparis_detay`
--
ALTER TABLE `siparis_detay`
  MODIFY `siparisdetay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Tablo için AUTO_INCREMENT değeri `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Tablo için AUTO_INCREMENT değeri `urun`
--
ALTER TABLE `urun`
  MODIFY `urun_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Tablo için AUTO_INCREMENT değeri `urunfoto`
--
ALTER TABLE `urunfoto`
  MODIFY `urunfoto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `yorum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
