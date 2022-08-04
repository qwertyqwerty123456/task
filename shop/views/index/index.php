<?php
include (ROOT . '/views/parts/header.php');
?>

    <section>
    <div class="container">
        <!--left sidebar-->
        <div class="sidebar">
            <h2>Категории</h2>
            <ul class="left_sidebar">
                <?php foreach ($categories as $catItem): ?>
                <li><b><a href="category/<?php echo $catItem['id_categories']?>">
                        <?php echo $catItem['title']?></b>
                </a></li>
                <li style="font-size:12px;">
                         (<?php echo $catItem['description']?>)
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
        <div class="content">
            <div class="features_items">
                <h2>Товары</h2>
                <?php foreach($latestProducts as $singleItem): ?>
                <div class="item">
                    <a target="_blank" href="/product/<?php echo $singleItem['id_product']?>">
                       <img width="268px" height="350px" alt="<?php $qw=Product::getImage($singleItem['id_product']); echo $qw['alt']; ?>" src="/template/images/products/<?php echo $qw['name']; ?>" />
                    </a>
                    <a target="_blank" href="/product/<?php echo $singleItem['id_product']?>">
                      <p class="item_name"><?php echo $singleItem['title']?></p>
                    </a>
                    <p>Основная категория: <?php echo Product::get_main_categories($singleItem['id_product']) ?></p>
                </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</section>
<div class="appendix"></div>

<?php
include (ROOT . '/views/parts/footer.php');
?>
