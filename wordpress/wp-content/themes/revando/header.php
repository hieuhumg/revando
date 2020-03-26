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
                                    <?php
                                    $child = '<div class="mepanel">
                                                <div class="row">';
                                    $dem = 0;
                                    foreach ($menu as $item) {
                                        if ($item->menu_item_parent == $value->ID) {
                                            $dem_2 = 0;
                                            $child_2 = '';
                                            foreach ($menu as $va) {
                                                if ($va->menu_item_parent == $item->ID) {
                                                    $child_2 .= '<li><a href="' . $va->url . '">' . $va->title . '</a></li>';
                                                    $dem_2++;
                                                }
                                            }
                                            if ($dem_2 == 0) {
                                                $child_2 = '';
                                            }
                                            $dem++;
                                            $child .= '<div class="col1 me-one">
                                                        <a href="'. $item->url.'"><h4>'. $item->title .'</h4></a>
                                                        
                                                        <ul>
                                                           '.$child_2.'
                                                        </ul>
                                                    </div>';

                                        }

                                    }
                                    $child .= '</div></div>';
                                    if ($dem != 0) {
                                        echo $child;
                                    }
                                    ?>

                                </li>
                            <?php } ?>
                        <?php endforeach; ?>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-3 header-right">
                <form action="<?php echo esc_url(home_url('/')); ?>">
                    <div class="search-bar">
                        <input type="text" placeholder="tim kiem" name="s">
                        <input type="submit" value="">
                    </div>
                </form>

            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>