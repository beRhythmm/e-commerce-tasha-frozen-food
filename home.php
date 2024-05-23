<?php
// Prevent direct access to file
defined('shoppingcart') or exit;
// Get the 4 most recent added products
$stmt = $pdo->prepare('SELECT * FROM products ORDER BY date_added DESC LIMIT 4');
$stmt->execute();
$recently_added_products = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<?=template_header('Home')?>

<div class="featured">
    <h2>Tasha Frozen Food</h2>
    <p>Senyum Anda, Inspirasi Kami</p>
</div>

<br/><br/>

<div class="about">
    <div class="about2">
	<h2>Our Vision</h2>
    <p>• Share The Taste of Authentic Malaysia<br/>• Stand Out From The Crowd<br/>• Be Flexible and Open<br/>• Be Caring and Thoughtful</p>
	</div>
</div>


<br/>

<div class="recentlyadded content-wrapper">
    <h2>New Products</h2>
    <div class="products">
        <?php foreach ($recently_added_products as $product): ?>
        <a href="index.php?page=product&id=<?=$product['id']?>" class="product">
            <?php if (!empty($product['img']) && file_exists('imgs/' . $product['img'])): ?>
            <img src="imgs/<?=$product['img']?>" width="200" height="200" alt="<?=$product['name']?>">
            <?php endif; ?>
            <span class="name"><?=$product['name']?></span>
            <span class="price">
                <?=currency_code?><?=number_format($product['price'],2)?>
                <?php if ($product['rrp'] > 0): ?>
                <span class="rrp"><?=currency_code?><?=number_format($product['rrp'],2)?></span>
                <?php endif; ?>
            </span>
        </a>
        <?php endforeach; ?>
    </div>
</div>

<form method="POST" action="index.php?page=products">
<div class="buttons">
	<input type="submit" value="View More Products >>">
</div>
</form>

<div class="content content-wrapper">
	<br/>
	<div class="who">
	<h2><i aria-hidden="true" class="fas fa-clock"></i><strong> Jam Operasi Toko</strong><br/>
    <p>
		Buka: 06:30 WIB
        <br>
        Tutup: 20:00 WIB 
	</p>
	</h2>
	</div>
	<div class="vision">
	<h2><strong>Beli di Tasha Frozen Food sekarang juga!</strong><br/>
	<p>
        Jadi, apa lagi yang Kamu tunggu? Tambahkan semua produk favorit Anda ke
		keranjang dan tinggalkan komentar tentang waktu pengiriman yang Anda inginkan. 
        Pesanan makanan beku Anda akan dikirimkan dengan suhu yang selalu tetap terjaga.
	</p>
	</h2>
	</div>
	</div>
	<!-- lokasi-->
    <section class="page-section" id="lokasi">
        <div class="container">
            <div class="text-center">
                <h2 class="section-heading text-uppercase">Denah Map Tasha Frozen Food</h2>
                <h3 class="section-subheading text-muted">Jl. KH. Muhasan 1 No.Rt 04/ 02 blok A4, Meruyung, Kec. Limo, Kota Depok, Jawa Barat 16515.</h3>
            </div>
            <div class="map-container">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.0956759281535!2d106.7667089!3d-6.3816508999999995!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69ef159c6cb191%3A0x2f2c9a85bf9afeaa!2sRumah%20durian%20tasha!5e0!3m2!1sid!2sid!4v1716386817762!5m2!1sid!2sid"
                    width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </section>

<?=template_footer()?>
