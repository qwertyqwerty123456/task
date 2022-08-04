<?php

class IndexController {
    public function actionIndex () {

        $categories = Category::getCategory();


        $latestProducts = Product::getLatestProducts();
    

        require_once(ROOT . '/views/index/index.php');

        return true;
    }
}
