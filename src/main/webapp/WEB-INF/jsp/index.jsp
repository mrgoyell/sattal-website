<!doctype html>
<html lang="en">
<title>SFR|Home</title>
<jsp:include page="navHeader.jsp"/>
<body>
<jsp:include page="bodyHeader.jsp"/>

<section class="site-hero overlay" style="background-image: url(img/sattal-pics/IMG_20180920_071524-min.jpg)">
    <%--<section class="site-hero overlay" style="background-image: url(img/IMG_20181004_174215-1.jpg)">    --%>
    <div class="container">
        <div class="row site-hero-inner justify-content-center align-items-center">
            <div class="col-md-10 text-center">
                <h1 class="heading" data-aos="fade-up">Welcome to <br><em>Sattal Forest Resort</em></h1>
                <p class="sub-heading mb-5" data-aos="fade-up" data-aos-delay="100">Come touch the sky.</p>
                <p data-aos="fade-up" data-aos-delay="100">
                    <a href="/hotel" class="btn uppercase btn-primary mr-md-2 mr-0 mb-3 d-sm-inline d-block">Explore The Beauty</a>
                    <a href="/contact-us" class="btn uppercase btn-outline-light d-sm-inline d-block">Contact
                    us</a></p>
            </div>
        </div>
    </div>
</section>
<section class="section slider-section">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-8">
                <h2 class="heading" data-aos="fade-up">A gorgeous place to enjoy your life.</h2>
                <p class="lead" data-aos="fade-up" data-aos-delay="100">At an altitude of 5000 ft., the Sattal Forest
                    Resort is a boutique Resort, set amidst the thick pine and oak forests of the quaint Sattal hills.
                    The Resort overlooks the tranquil complex of Sattal Lakes. It offers unparalleled bird-watching
                    experiences and leads to some of the most alluring natural trekking trails.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="home-slider major-caousel owl-carousel mb-5" data-aos="fade-up" data-aos-delay="200" >
                    <div class="slider-item">
                        <img src="img/sattal-pics/home-slider-1-min.jpg" alt="Image placeholder" class="img-fluid">
                    </div>
                    <div class="slider-item">
                        <img src="img/sattal-pics/home-slider-2-min.jpg" alt="Image placeholder" class="img-fluid">
                    </div>
                    <div class="slider-item">
                        <img src="img/sattal-pics/Sunset garden and bonfire area.jpg" alt="Image placeholder" class="img-fluid">
                    </div>
                    <div class="slider-item">
                        <img src="img/sattal-pics/Deodar cottage night view.jpg" alt="Image placeholder" class="img-fluid">
                    </div>
                    <div class="slider-item">
                        <img src="img/sattal-pics/IMG_20200828_105708.jpg" alt="Image placeholder" class="img-fluid">
                    </div>
                </div>
                <!-- END slider -->
            </div>


        </div>
    </div>
</section>
<!-- END section -->

<section class="section blog-post-entry bg-pattern">
    <div class="container">
        <div class="row justify-content-center text-center mb-5">
            <div class="col-md-8">
                <h2 class="heading" data-aos="fade-up">Ideal Visit</h2>
                <p class="lead" data-aos="fade-up">With the weather being pleasant all year-round, it makes the Resort
                    an ideal getaway, anytime of year. Leave the hustle of the city life behind and lose yourself in the
                    serenity of nature!</p>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="100">

                <div class="media media-custom d-block mb-4">
                    <a href="#" class="mb-4 d-block"><img src="img/sattal-pics/sattalImg-min.jpg" alt="Image placeholder" class="img-fluid" style="height:260px;width:100%"></a>
                    <div class="media-body">
                        <span class="meta-post">February 26, 2018</span>
                        <h2 class="mt-0 mb-3"><a href="#">Five Reasons to Stay at Villa Resort</a></h2>
                    </div>
                </div>

            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="200">
                <div class="media media-custom d-block mb-4">
                    <a href="#" class="mb-4 d-block"><img src="img/sattal-pics/sattalImg02-min.jpg" alt="Image placeholder" class="img-fluid" style="height:260px;width:100%"></a>
                    <div class="media-body" >
                        <span class="meta-post">February 26, 2018</span>
                        <h2 class="mt-0 mb-3"><a href="#">Five Reasons to Stay at Villa Resort</a></h2>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 col-12 post" data-aos="fade-up" data-aos-delay="300">
                <div class="media media-custom d-block mb-4">
                    <a href="#" class="mb-4 d-block"><img src="img/sattal-pics/IMG_20200226_102459-min.jpg" alt="Image placeholder" class="img-fluid"></a>
                    <div class="media-body">
                        <span class="meta-post">February 26, 2018</span>
                        <h2 class="mt-0 mb-3"><a href="#">Five Reasons to Stay at Villa Resort</a></h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="footer.jsp"/>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<!-- <script src="js/jquery.waypoints.min.js"></script> -->
<script src="js/aos.js"></script>
<script src="js/main.js"></script>
</body>
</html>