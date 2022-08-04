<?php

return array(

    //Товар
    'product/([0-9]+)' => 'product/view/$1', //actionView в ProductController

    //Категория товара
    'category/([0-9]+)/page-([0-9]+)' => 'catalog/category/$1/$2', // actionCategory в CatalogController
    'category/([0-9]+)' => 'catalog/category/$1', //actionCategory в CatalogController

    //Каталог
    'catalog/page-([0-9]+)' => 'catalog/index/$1',
    'catalog' => 'catalog/index',


    //Главаня страница
    'index.php' => 'index/index', //вызываем actionIndex в IndexController
    '' => 'index/index'  //вызываем actionIndex в IndexController
);