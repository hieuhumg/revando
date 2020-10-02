<?php
include '../../../../wp-config.php';
$id = $_POST['id'];
#lấy danh sách sản phẩm của custom-post theo post-type
$qty = 1;
//$_SESSION['cart']= array();
$key = array_search($id, array_column($_SESSION['cart'], 'id_sp'));
//var_dump($key);die();
print_r($key);
//if(
if($key != NULL){
    $_SESSION['cart'][$key]['soluong']++;
}else{
    $_SESSION['cart'][]= array(
        'id_sp'=>$id,
        'soluong'=>1
    );
}
//print_r($_SESSION['cart']);die();
$arr = array(
    'error_code' => 1,
    'mess' => 'Thêm giỏ gàng thành công'
);
echo json_encode($arr);
//print_r($_SESSION['cart']);die();
////$args = array(
////    'post_type' => 'san_pham',
////
////    'posts_per_page' => -1, //lấy bao nhiêu bài
////    'orderby' => 'date',
////    'order' => 'DESC',
////    'p'=>$id
//////    'paged' => get_query_var('page') ? get_query_var('page') : 1,
////);
////
////$new_query = new WP_Query($args);
//
//$sp = get_field('info_product',$id);
//foreach ($sp as $value) {
//
//}
//$_SESSION['cart']['buy'][$id] = array(
//    'ten_san_pham' => $value[''],
//    'anh_san_pham' => $value['anh_san_pham'],
//    'gia' => $value['price_product'],
//    'giam_gia' => $value['sale_product'],
//);
//
//echo "<pre>";
//print_r($_SESSION['cart']);
//die();
//if($_SESSION["data_warehouse"]){
//    unset ($_SESSION["data_warehouse"]);
//}
//
