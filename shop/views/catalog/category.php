<?php
include (ROOT . '/views/parts/header.php');
?>
<section>
    <div class="container">
        <div class="sidebar">
            <h2>Категории</h2>
            <ul class="left_sidebar">
                <?php foreach ($categories as $catItem): ?>
                    <li><b><a href="/category/<?php echo $catItem['id_categories']?>" class="<?php if($catId == $catItem['id_categories']) echo 'active';?>">
                            <?php echo $catItem['title']?>
                            
                        </a></b>
                    </li>
                    <li style="font-size:12px;">
                         (<?php echo $catItem['description']?>)
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
        <div class="content">
            <div class="features_items">
                <h2>Товары(<?php echo $total?>)</h2>
                <?php foreach($categoryProduct as $categoryProducts):?>
                    <div class="item">
                        <a target="_blank" href="/product/<?php echo $categoryProducts['id_product']?>">
                        <img width="268px" height="350px" alt="<?php $qw=Product::getImage($categoryProducts['id_product']); echo $qw['alt']; ?>" src="/template/images/products/<?php echo $qw['name']; ?>"/>
                        </a>
                        <a target="_blank" href="/product/<?php echo $categoryProducts['id_product']?>">
                            <p class="item_name"><?php echo $categoryProducts['title']?></p>
                        </a>
                        <p><p>Основная категория: <?php echo Product::get_main_categories($categoryProducts['id_product']) ?></p></p>
                    </div>
                <?php endforeach;?>
            </div>
            <div class="pagination">
                <?php echo $pagination->get();?>
            </div>
        </div>
    </div>
</section>
<div class="appendix"></div>
<?php
include (ROOT . '/views/parts/footer.php');
?>
