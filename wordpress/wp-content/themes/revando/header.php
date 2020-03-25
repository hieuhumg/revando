<?php
$url = get_template_directory_uri() . '/web/';

$menu = (array)wp_get_nav_menu_items('Menu 1');
?>
<!DOCTYPE html>
<html>
<head>
    <?php wp_head(); ?>
    <link href="<?= $url ?>css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <!--jQuery(necessary for Bootstrap's JavaScript plugins)-->
    <script src="<?= $url ?>js/jquery-1.11.0.min.js"></script>
    <!--Custom-Theme-files-->
    <!--theme-style-->
    <link href="<?= $url ?>css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Luxury Watches Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        } </script>
    <!--start-menu-->
    <script src="<?= $url ?>js/simpleCart.min.js"></script>
    <link href="<?= $url ?>css/memenu.css" rel="stylesheet" type="text/css" media="all"/>
    <script type="text/javascript" src="<?= $url ?>js/memenu.js"></script>
    <script>$(document).ready(function () {
            $(".memenu").memenu();
        });</script>
    <!--dropdown-->
    <script src="<?= $url ?>js/jquery.easydropdown.js"></script>
</head>
<body>
<!--top-header-->
<div class="top-header">
    <div class="container">
        <div class="top-header-main">
            <div class="col-md-6 top-header-left">
                <div class="drop">
                    <div class="box">
                        <select tabindex="4" class="dropdown drop">
                            <option value="" class="label">Dollar :</option>
                            <option value="1">Dollar</option>
                            <option value="2">Euro</option>
                        </select>
                    </div>
                    <div class="box1">
                        <select tabindex="4" class="dropdown">
                            <option value="" class="label">English :</option>
                            <option value="1">English</option>
                            <option value="2">French</option>
                            <option value="3">German</option>
                        </select>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="col-md-6 top-header-left">
                <div class="cart box_1">
                    <a href="checkout.html">
                        <div class="total">
                            <span class="simpleCart_total"></span></div>
                        <img src="images/cart-1.png" alt=""/>
                    </a>
                    <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--top-header-->
<!--start-logo-->
<div class="logo">
    <a href="index.html"><h1>Luxury Watches</h1></a>
</div>
<!--start-logo-->
<!--bottom-header-->
<div class="header-bottom">
    <div class="container">
        <div class="header">
            <div class="col-md-9 header-left">
                <div class="top-nav">
                    <ul class="memenu skyblue">
                        <?php foreach ($menu as $value): ?>
                            <?php if (($value->menu_item_parent) == 0) { ?>
                                <li class="grid"><a href="<?= $value->url ?>"><?= $value->title; ?></a>
                                    <?php $dem = 0; ?>
                                    <?php foreach ($menu as $item) {
                                        if ($item->menu_item_parent == $value->ID) {
                                            $dem++;
                                        }
                                        if ($dem != 0) {
                                            ?>
                                            <div class="mepanel">
                                                <div class="row">

                                                    <div class="col1 me-one">
                                                        <h4><?= $item->title; ?></h4>
                                                        <ul>
                                                            <li><a href="products.html">499 Store</a></li>
                                                            <li><a href="products.html">Fastrack</a></li>
                                                            <li><a href="products.html">Casio</a></li>
                                                            <li><a href="products.html">Fossil</a></li>
                                                            <li><a href="products.html">Maxima</a></li>
                                                            <li><a href="products.html">Timex</a></li>
                                                            <li><a href="products.html">TomTom</a></li>
                                                            <li><a href="products.html">Titan</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php } ?>
                                    <?php } ?>
                                </li>
                            <?php } ?>
                        <?php endforeach; ?>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-3 header-right">
                <div class="search-bar">
                    <input type="text" value="Search" onfocus="this.value = '';"
                           onblur="if (this.value == '') {this.value = 'Search';}">
                    <input type="submit" value="">
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>