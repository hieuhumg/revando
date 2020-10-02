<?php
/* Template Name: Thanh toán */
$url = get_template_directory_uri() . '/web/';
$ID = get_the_ID();
//lấy field banner trong admin
get_header();
if (isset($_SESSION['cart'])) {
    foreach ($_SESSION['cart'] as $key=>$value) {
        $sp = get_field('info_product',$value['id_sp']);
        $giam_gia = $sp[0]['sale_product'];
        $gia = $sp[0]['price_product'];
        if($giam_gia > 0) {
            $total = $gia - (($giam_gia * $gia) / 100);
        }else {
            $total = $gia;
        }
        $num_total = money_check($total * $value['soluong']);
        $sub_total += $total;
    }
}
print_r($_SESSION['cart']);
//global $wpdb;
//$wpdb->query( "DROP TABLE IF EXISTS wp_cart" );
?>
<div class="form-pay">
    <div class="container">
        <div class="row">
            <div class="col-6 mx-auto">
                <form method="post" action="">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Họ và tên</label>
                        <input type="text" class="form-control" placeholder="Tên của bạn" name="hoten">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Email</label>
                        <input type="mail" class="form-control" placeholder="Email" name="email">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Số điện thoại</label>
                        <input type="number" class="form-control" placeholder="Số điện thoại của bạn" name="dienthoai">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Địa chỉ</label>
                        <input type="text" class="form-control" placeholder="Địa chỉ của bạn" name="diachi">
                    </div>
<!--                    <div class="form-group form-check">-->
<!--                        <input type="checkbox" class="form-check-input" id="exampleCheck1">-->
<!--                        <label class="form-check-label" for="exampleCheck1">Check me out</label>-->
<!--                    </div>-->
                    <span>Tổng tiền: <?= $sub_total; ?></span>
                    <button type="submit" class="btn btn-primary">Gửi đơn hàng</button>
                </form>
            </div>
        </div>

    </div>
</div>
<?php
    print_r(json_encode($_SESSION['cart']));
?>
<?= print_r($_POST) ?>
<?php
get_footer();
?>