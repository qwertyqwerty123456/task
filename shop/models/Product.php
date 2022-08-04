<?php
class Product {

    const SHOW_BY_DEFAULT = 12;

    public static function getLatestProducts ($page = 1) {

        $limit = self::SHOW_BY_DEFAULT;
        $offset = ($page - 1) * self::SHOW_BY_DEFAULT;

        $db = DB::getConnection();

        $sql = "SELECT product.id_product, product.title
                    FROM product
                    JOIN product_by_categories ON product.id_product=product_by_categories.id_product
                        WHERE product.activity = 1 
                        LIMIT :limit OFFSET :offset
                ";
                
        $res = $db->prepare($sql);
        $res->bindParam(':limit', $limit, PDO::PARAM_INT);
        $res->bindParam(':offset', $offset, PDO::PARAM_INT);
        $res->execute();

        $productsList = $res->fetchAll(PDO::FETCH_ASSOC);
        return $productsList;
    }

    public static function getProductListByCatId ($catId, $page = 1) {

        $limit = self::SHOW_BY_DEFAULT;

        $offset = ($page - 1) * self::SHOW_BY_DEFAULT;

        $db = DB::getConnection();

        $sql = "SELECT product.id_product, product.title, product_by_categories.main_id_categories as main_categories
                    FROM product
                    JOIN product_by_categories ON product.id_product=product_by_categories.id_product
                        WHERE product.activity = 1 AND product_by_categories.id_categories = :id_categories
                        LIMIT :limit OFFSET :offset
                ";

        $res = $db->prepare($sql);
        $res->bindParam(':id_categories', $catId, PDO::PARAM_INT);
        $res->bindParam(':limit', $limit, PDO::PARAM_INT);
        $res->bindParam(':offset', $offset, PDO::PARAM_INT);

        $res->execute();
        $products = $res->fetchAll(PDO::FETCH_ASSOC);
        return $products;
    }

    public static function getProductById ($productId) {

        $db = Db::getConnection();

        $sql = "SELECT id_product, title, price, old_price, discount_price, description FROM product
                    WHERE id_product = :id_product
               ";

        $res = $db->prepare($sql);
        $res->bindParam(':id_product', $productId, PDO::PARAM_INT);
        $res->execute();

        $products = $res->fetch(PDO::FETCH_ASSOC);

        return $products;
    }

    public static function getImage ($id) {

        $db = Db::getConnection();

        $sql="SELECT image.name AS name, image.alt AS alt FROM image JOIN product_image ON image.id_image=product_image.id_image WHERE product_image.id_product=:id_product AND product_image.main_Id_image = product_image.id_image";
        
        $res = $db->prepare($sql);
        $res->bindParam(':id_product', $id, PDO::PARAM_INT);
        $res->execute();
        $products = $res->fetch();
        return $products;
        

    }

    public static function getImages ($id) {

        $db = Db::getConnection();

        $sql="SELECT image.name AS name, image.alt AS alt FROM image JOIN product_image ON image.id_image=product_image.id_image WHERE product_image.id_product=:id_product AND product_image.main_Id_image <> product_image.id_image";
        
        $res = $db->prepare($sql);
        $res->bindParam(':id_product', $id, PDO::PARAM_INT);
        $res->execute();
        $products = $res->fetch();
        return $products;
        

    }
    
    public static function getTotalProductsInCategory ($catId) {

        // Соединение с БД
        $db = Db::getConnection();

        // Текст запроса к БД
        $sql = 'SELECT count(product.id_product) AS count FROM product JOIN product_by_categories ON product.id_product=product_by_categories.id_categories WHERE product.activity="1" AND product_by_categories.id_categories =:id_categories';

        // Используется подготовленный запрос
        $res = $db->prepare($sql);
        $res->bindParam(':id_categories', $catId, PDO::PARAM_INT);

        // Выполнение коменды
        $res->execute();

        // Возвращаем значение count - количество
        $row = $res->fetch();
        return $row['count'];
    }

    public static function get_main_categories ($id) {

        $db = Db::getConnection();

        $sql="SELECT categories.title AS title FROM categories JOIN product_by_categories ON categories.id_categories=product_by_categories.id_categories WHERE product_by_categories.id_product=:id_product AND product_by_categories.main_id_categories= product_by_categories.id_categories";
        
        $res = $db->prepare($sql);
        $res->bindParam(':id_product', $id, PDO::PARAM_INT);
        $res->execute();
        $products = $res->fetch();
        return $products['title'];
        
    }

    public static function get_categories ($id) {

        $db = Db::getConnection();

        $sql="SELECT categories.title AS title FROM categories JOIN product_by_categories ON categories.id_categories=product_by_categories.id_categories WHERE product_by_categories.id_product=:id_product ";
        
        $res = $db->prepare($sql);
        $res->bindParam(':id_product', $id, PDO::PARAM_INT);
        $res->execute();
        $products = $res->fetch();
        return $products['title'];
        

    }

}