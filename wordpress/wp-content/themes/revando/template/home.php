<?php
/* Template Name: Trang chủ */
$url = get_template_directory_uri() . '/web/';
$ID = get_the_ID();
//lấy field banner trong admin
get_header();

$banner = get_field('banner_home');


#lấy danh sách sản phẩm của custom-post theo post-type
$args = array(
    'post_type' => 'san_pham',
    'posts_per_page' => -1, //lấy bao nhiêu bài
    'orderby' => 'date',
    'order' => 'DESC',
//    'paged' => get_query_var('page') ? get_query_var('page') : 1,
);

$new_query = new WP_Query($args);
$product = $new_query->posts; //post lấy 1 <-> posts lấy nhiều

# get_term để lấy taxonomy
$get_term_by = get_terms('danh_muc_san_pham', array(
        'hide_empty' => false,
));

#lấy sản phẩm nổi bật
$san_pham_noi_bat = get_field('san_pham_noi_bat');

?>
    <!--banner-starts-->
    <div class="bnr" id="home">
        <div id="top" class="callbacks_container">
            <ul class="rslides" id="slider4">
                <?php foreach ($banner as $value): ?>
                    <li>
                        <img src="<?= $value['hinh_anh']; ?>" alt=""/>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
    <!--banner-ends-->
    <!--Slider-Starts-Here-->
    <script src="<?= $url ?>js/responsiveslides.min.js"></script>
    <script>
        // You can also use "$(window).load(function() {"
        $(function () {
            // Slideshow 4
            $("#slider4").responsiveSlides({
                auto: true,
                pager: true,
                nav: true,
                speed: 500,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });

        });
    </script>
    <!--End-slider-script-->
    <!--about-starts-->
    <div class="about">
        <div class="container">
            <div class="about-top grid-1">
                <?php foreach ($san_pham_noi_bat as $item): ?>
                <div class="col-md-4 about-left">
                    <figure class="effect-bubba">
                        <img class="img-responsive" src="<?= get_field('anh_san_pham', $item['san_pham']->ID); ?>" alt=""/>
                        <figcaption>
                            <h2><?= $item['san_pham']->post_title; ?></h2>
                            <p><?= get_field('description', $item['san_pham']->ID); ?></p>
                        </figcaption>
                    </figure>
                </div>
                <?php endforeach; ?>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!--about-end-->
    <!--product-starts-->
    <div class="product">
        <div class="container">
            <div class="product-top">
                <?php foreach ($get_term_by as $value) {
                    $args_post = array(
                        'post_type' => 'san_pham',
                        'tax_query' => array(
                            array(
                                'taxonomy' => 'danh_muc_san_pham',
                                'field' => 'term_id',
                                'terms' => $value->term_id
                            )
                        ),
                        'posts_per_page' => -1
                    );
                    $query = new WP_Query($args_post);
                    $post_tax = $query->posts;
                    ?>
                    <div class="product-one">
                        <h3><?= $value->name ?></h3>
                        <?php foreach ($post_tax as $item){ ?>
                            <?php
                                $id = $item->ID;
                                $gia = (get_field('gia_san_pham',$id));
                                $giam_gia = get_field('giam_gia',$id);
                                if($giam_gia > 0) {
                                    $total = money_check($gia - (($giam_gia * $gia) / 100));
                                }else {
                                    $total = money_check($gia);
                                }
                            ?>
                            <div class="col-md-3 product-left">
                            <div class="product-main simpleCart_shelfItem">
                                <a href="<?= get_permalink($id); ?>" class="mask"><img class="img-responsive zoom-img" src="<?= get_field('anh_san_pham',$id); ?>"
                                                                        alt=""/></a>
                                <div class="product-bottom">
                                    <h3><?= $item->post_title ?></h3>
                                    <p>Explore Now</p>
                                    <h4><a class="item_add" href="#"><i></i></a> <span class=" item_price"><?= $total; ?> VND</span></h4>
                                </div>
                                <?php

                                if($giam_gia > 0) {   ?>
                                <div class="srch">
                                    <span><?= $giam_gia; ?>%</span>
                                </div>
                                <?php } ?>
                            </div>
                        </div>
                        <?php } ?>
                        <div class="clearfix"></div>
                    </div>
                    <?php
                } ?>
            </div>
        </div>
    </div>
    <!--product-end-->
    <!--information-starts-->
    <div class="information">
        <div class="container">
            <div class="infor-top">
                <div class="col-md-3 infor-left">
                    <h3>Follow Us</h3>
                    <ul>
                        <li><a href="#"><span class="fb"></span><h6>Facebook</h6></a></li>
                        <li><a href="#"><span class="twit"></span><h6>Twitter</h6></a></li>
                        <li><a href="#"><span class="google"></span><h6>Google+</h6></a></li>
                    </ul>
                </div>
                <div class="col-md-3 infor-left">
                    <h3>Information</h3>
                    <ul>
                        <li><a href="#"><p>Specials</p></a></li>
                        <li><a href="#"><p>New Products</p></a></li>
                        <li><a href="#"><p>Our Stores</p></a></li>
                        <li><a href="contact.html"><p>Contact Us</p></a></li>
                        <li><a href="#"><p>Top Sellers</p></a></li>
                    </ul>
                </div>
                <div class="col-md-3 infor-left">
                    <h3>My Account</h3>
                    <ul>
                        <li><a href="account.html"><p>My Account</p></a></li>
                        <li><a href="#"><p>My Credit slips</p></a></li>
                        <li><a href="#"><p>My Merchandise returns</p></a></li>
                        <li><a href="#"><p>My Personal info</p></a></li>
                        <li><a href="#"><p>My Addresses</p></a></li>
                    </ul>
                </div>
                <div class="col-md-3 infor-left">
                    <h3>Store Information</h3>
                    <h4>The company name,
                        <span>Lorem ipsum dolor,</span>
                        Glasglow Dr 40 Fe 72.</h4>
                    <h5>+955 123 4567</h5>
                    <p><a href="mailto:example@email.com">contact@example.com</a></p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!--information-end-->
<?php
get_footer();
?>