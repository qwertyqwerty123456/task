<?php

class CatalogController {


    public function actionIndex ($page = 1) {

        $categories = Category::getCategory();

        $latestProducts = Product::getLatestProducts($page);

        $total = Product::getTotalProducts();

        $pagination = new Pagination($total, $page, Product::SHOW_BY_DEFAULT, 'page-');

        require_once(ROOT . '/views/catalog/index.php');

        return true;
    }

    public function actionCategory($catId, $page = 1){


        $categories = Category::getCategory();

        $categoryProduct = Product::getProductListByCatId($catId, $page);

        $total = Product::getTotalProductsInCategory($catId);

        $pagination = new Pagination($total, $page, Product::SHOW_BY_DEFAULT, 'page-');

        require_once(ROOT . '/views/catalog/category.php');

        return true;
    }
}