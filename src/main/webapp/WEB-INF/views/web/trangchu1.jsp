<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Trang chủ</title>
</head>
<body>
<div class="banner">
    <div class="container">
        <div class="banner-bottom">
            <div class="banner-bottom-left">
                <h2>
                    M<br>N
                </h2>
            </div>
            <div class="banner-bottom-right">
                <div class="callbacks_container">
                    <ul class="rslides" id="slider4">
                        <li>
                            <div class="banner-info">
                                <h3>Chất lượng</h3>
                                <p>Nhanh tay mua hàng...</p>
                            </div>
                        </li>
                        <li>
                            <div class="banner-info">
                                <h3>Tiết kiệm chi phí</h3>
                                <p>Không lo về giá...</p>
                            </div>
                        </li>
                        <li>
                            <div class="banner-info">
                                <h3>Giao hàng nhanh</h3>
                                <p>Hàng sẽ đến ngay...</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--banner-->
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="shop">
            <a href='<c:url value="/sanpham/11/Áo%20Thun%20Form%20Tiêu%20Chuẩn" />'>MUA SẮM NGAY </a>
        </div>
    </div>
</div>
<!-- content-section-starts-here -->
<div class="container">
    <div class="main-content">
        <div class="online-strip">
            <div id="info" class="container">
                <div class="row">
                    <div class="col-12 col-sm-4 col-md-4 wow fadeInLeft"
                         data-wow-duration="1s">
                        <img src='<c:url value="/resources/images/icon_quality.png" />'><br/>
                        <span style="font-size: 32px; font-weight: 500;">CHẤT
								LƯỢNG</span> <br/> <span>Chúng tôi cam kết sẽ mang đến cho các
								bạn chấtlượng sản phẩm tốt nhất</span>
                    </div>

                    <div class="col-12 col-sm-4 col-md-4 wow fadeInDown"
                         data-wow-duration="1s" data-wow-delay="1s">
                        <img src='<c:url value="/resources/images/icons_saving.png" />'><br/>
                        <span style="font-size: 32px; font-weight: 500;">TIẾT KIỆM
								CHI PHÍ</span><br/> <span>Cam kết bán rẻ nhất tại Việt Nam
								giúp các bạn tiết kiệm hơn 20% cho từng sản </span>
                    </div>

                    <div class="col-12 col-sm-4 col-md-4 wow fadeInUp"
                         data-wow-duration="1s" data-wow-delay="2s">
                        <img src='<c:url value="/resources/images/icons_delivery.png" />'><br/>
                        <span style="font-size: 32px; font-weight: 500;">GIAO HÀNG</span><br/>
                        <span>Cam kết giao hàng tận nơi trong ngày. Để mang sản
								phẩm đến cho khách hàng nhanh nhất</span>
                        <h3>Tel:0386541274</h3>
                    </div>
                </div>
            </div>

            <div class="clearfix"></div>
        </div>

        <div class="products-grid container">
            <header>
                <h3 class="head text-center">Sản phẩm mới nhất</h3>
            </header>
            <div class="action">


                <div class="sort" style="float: left">
                    <div class="sort-by" style="display: flex">
                        <label>Giá tiền</label> <select id="sortBy">
                        <option selected disabled hidden name="">Sắp xếp...</option>
                        <option value="DESC">Giảm dần</option>
                        <option value="ASC">Tăng dần</option>

                    </select> <a href=""><img
                            style="width: 7px; height: 10px; margin-left: 3px"
                            src='<c:url value="/resources/images/arrow2.gif" />' alt=""
                            class="v-middle"></a>
                    </div>
                </div>
                <div class="pages">

                    <div class="limiter visible-desktop">
                        <label>Hiển thị</label> <select id="showPerpage">
                        <option value="40" selected="selected">40</option>
                        <option value="20">20</option>
                        <option value="12">12</option>
                    </select> trên trang
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
            <div class="row" id="listproducts" name="listproducts">
                <c:forEach var="sanpham" items="${listSanPhams}">
                    <div
                            class=" col-md-4 col-sm-6 product simpleCart_shelfItem text-center">
                        <a href="chitiet/${sanpham.getMasanpham()}"> <img
                                src='<c:url value="/resources/images/sanpham/${sanpham.getHinhsanpham()}" />'/><br/>

                        </a>

                        <div class="mask">
                            <a href="chitiet/${sanpham.getMasanpham()}">Xem chi tiết</a>
                        </div>
                        <a class="product_name" href="chitiet/${sanpham.getMasanpham()}">${sanpham.getTensanpham()}</a>
                        <p>
                            <span class="item_price">${sanpham.getGiatien()} VND</span>
                        </p>
                    </div>
                </c:forEach>
            </div>
        </div>


    </div>


    <nav aria-label="Page navigation" class="page-container">
        <ul class="pagination" id="pagination" totalpage="${tongsoPages}">
        </ul>
    </nav>


</div>


<div class="clearfix"></div>


<!-- content-section-ends-here -->

<script src='<c:url value="/resources/JS/jquery-3.4.1.min.js" />'></script>
<script src='<c:url value="/resources/JS/web/trangchu.js" />'></script>

</body>

</html>