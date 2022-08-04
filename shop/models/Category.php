<?php

class Category {

    
    public static function getCategory () {
        $db = Db::getConnection();

        $sql = "SELECT categories.id_categories AS id_categories, categories.title AS title, categories.description AS description FROM categories JOIN product_by_categories
                ON categories.id_categories=product_by_categories.id_categories
                GROUP BY categories.id_categories
                ORDER BY COUNT(product_by_categories.id_product) DESC
                ";
        
        
        $sql1 = "SELECT categories.id_categories AS id_categories, categories.title AS title, categories.description AS description FROM categories JOIN product_by_categories
        ON categories.id_categories=product_by_categories.id_categories
        GROUP BY categories.id_categories
        HAVING COUNT(product_by_categories.id_product)>=2 
        ";

        $res = $db->query($sql);

        $catList = $res->fetchAll(PDO::FETCH_ASSOC);

        return $catList;
    }



}