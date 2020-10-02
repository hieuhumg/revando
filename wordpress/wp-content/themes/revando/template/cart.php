<?php
/* Template Name: Giỏ hàng */
$url = get_template_directory_uri() . '/web/';
$ID = get_the_ID();
//lấy field banner trong admin
get_header();
?>
    <!--start-ckeckout-->
    <div class="ckeckout">
        <div class="container">
            <div class="ckeck-top heading">
                <h2>CHECKOUT</h2>
            </div>
            <div class="ckeckout-top">
                <div class="cart-items">
                    <h3>My Shopping Bag (3)</h3>
                    <script>$(document).ready(function (c) {
                            $('.close1').on('click', function (c) {
                                $('.cart-header').fadeOut('slow', function (c) {
                                    $('.cart-header').remove();
                                });
                            });
                        });
                    </script>
                    <script>$(document).ready(function (c) {
                            $('.close2').on('click', function (c) {
                                $('.cart-header1').fadeOut('slow', function (c) {
                                    $('.cart-header1').remove();
                                });
                            });
                        });
                    </script>
                    <script>$(document).ready(function (c) {
                            $('.close3').on('click', function (c) {
                                $('.cart-header2').fadeOut('slow', function (c) {
                                    $('.cart-header2').remove();
                                });
                            });
                        });
                    </script>

                    <div class="in-check">
                        <ul class="unit">
                            <li><span>Ảnh sản phẩm </span></li>
                            <li><span>Tên sản phẩm</span></li>
                            <li><span>Giá</span></li>
                            <li><span>Số lượng</span></li>
                            <li><span>Tổng tiền</span></li>
                            <div class="clearfix"></div>
                        </ul>
                        <?php $sub_total = 0; ?>
                        <?php
                        if(empty($_SESSION['cart'])){
                            ?><?php
                        }else{
                        foreach ($_SESSION['cart'] as $key=>$value) {?>
                            <ul class="cart-header<?= $key +1 ?>">
                                <div class="close1"></div>
                                <?php

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
                                ?>
                                <li class="ring-in"><a href="single.html"><img src="<?= $sp[0]['anh_san_pham'] ?>"
                                                                               class="img-responsive" alt=""></a>
                                </li>
                                <li><span class="name"><?= get_the_title($value['id_sp']) ?></span></li>
                                <li><span class="cost"><?= money_check($total); ?> VND</span></li>
                                <li><span class="cost"><?= $value['soluong'] ?></span></li>
                                <li><span><?= $num_total; ?></span></li>
                                <div class="clearfix"></div>
                            </ul>
                        <?php } }?>
                    </div>
                    <div class="total_cart">
                        <span>Tổng đơn hàng:</span> <span><?= money_check($sub_total); ?> VND</span>
                    </div>
                    <input type="submit" class="dat_hang" type="text" value="Đặt hàng">
                </div>
            </div>
        </div>
    </div>
    <!--end-ckeckout-->
    <script>
        $(document).ready(function () {
            $( ".dat_hang" ).click(function() {
                window.location.href = "<?= get_permalink(69); ?>"
            });
        });
    </script>

<?php
get_footer();
?>