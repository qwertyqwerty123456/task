<?php


class ProductController {

    public static function actionView ($productId) {

        $categories = Category::getCategory();

        $product = Product::getProductById($productId);

        require_once(ROOT . '/views/single_item/single_item.php');
        return true;
    }
}