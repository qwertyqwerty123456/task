<?php
include (ROOT . '/views/parts/header.php');
?>
<div class = "layout">
        <div class = "product">
            <div class="product_prewiew">
                <div class="product_gallery">
                <div class="product_gallery-photo" ><img alt="<?php $qw=Product::getImage($product['id_product']); echo $qw['alt']; ?>" src="/template/images/products/<?php echo $qw['name']; ?>"> </div>
                <div class="product_gallery-photo" ><img alt="<?php $qs=Product::getImages($product['id_product']); echo $qw['alt']; ?>" src="/template/images/products/<?php echo $qs['name']; ?>"> </div>
                </div>
                <div class="product_photo"><img class="zoom" id="picture" alt="<?php $qw=Product::getImage($product['id_product']); echo $qw['alt']; ?>" src="/template/images/products/<?php echo $qw['name']; ?>"></div>
                <script src="/template/js/script.js"></script>
            </div>
            <div class="product_description">
                <h2 class="product_title"><?php echo $product['title']?></h2>
                <div class = "product_categories">
                    Категории: <?php echo Product::get_categories($product['id_product']) ?>
                </div>
                <div class = "product_price">
                    <div class="product_price-real">
                        <div class="product_price-old"><?php echo $product['old_price'] ?>₽</div>
                        <div class="product_price-current price"><?php echo $product['price'] ?> ₽</div>
                    </div>
                    <div class="product_price-discount">
                        <div class= "product_price-discount-value "><?php echo $product['discount_price'] ?> ₽</div>
                        <div class = "product_price-discount-text ">- с промокодом</div>
                    </div>
                </div>
                <div class = "product_delivery">
                    <div class = "product_delivery-item">
                        <img src="/template/images/1.png" alt="#"> В наличии в магазине<a href="#">Lamoda</a>
                    </div>
                    <div class = "product_delivery-item">
                        <img src="/template/images/2.png" alt="#"> Бесплатная доставка
                    </div>
                </div>
                <div class = "product_button">
                    <button class="custom-btn custom-btn--blue" id="buy">купить</button>
                    <button class="custom-btn">в избранное</button>
                </div>
                <div class = "product_info">
                    <?php echo $product['description'] ?>
                </div>
                <div class = "product_social">
                    <div class = "product_social-title">Поделиться:</div>
                    <div class = "product_social-list">
                        <a href="#"><img src="/template/images/вконтакте.png" alt="#"></a>
                        <a href="#"><img src="/template/images/google.png" alt="#"></a>
                        <a href="#"><img src="/template/images/facebook.png" alt="#"></a>
                        <a href="#"><img src="/template/images/twitter.png" alt="#"></a>
                        <img src="/template/images/3.png" alt="#">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
include (ROOT . '/views/parts/footer.php');
?>