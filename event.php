<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>HELPV - Chung tay giúp đỡ trẻ em Việt Nam</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free Website Template" name="keywords">
        <meta content="Free Website Template" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        
        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
    </head>

    <body>
        <!-- Top Bar Start -->
        <div class="top-bar d-none d-md-block">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="top-bar-left">
                            <div class="text">
                                <i class="fa fa-phone-alt"></i>
                                <p>+123 456 7890</p>
                            </div>
                            <div class="text">
                                <i class="fa fa-envelope"></i>
                                <p>heplv@example.com</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="top-bar-right">
                            <div class="social">
                                <a href=""><i class="fab fa-twitter"></i></a>
                                <a href=""><i class="fab fa-facebook-f"></i></a>
                                <a href=""><i class="fab fa-linkedin-in"></i></a>
                                <a href=""><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Top Bar End -->

        <!-- Nav Bar Start -->
        <div class="navbar navbar-expand-lg bg-dark navbar-dark">
            <div class="container-fluid">
                <a href="index.php" class="navbar-brand">Helpv</a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                    <div class="navbar-nav ml-auto">
                        <a href="index.php" class="nav-item nav-link">Trang chủ</a>
                        <a href="about.php" class="nav-item nav-link">Giới thiệu</a>
                        <a href="causes.php" class="nav-item nav-link">Hành động</a>
                        <a href="event.php" class="nav-item nav-link active">Sự kiện</a>
                        <a href="blog.php" class="nav-item nav-link">Blog</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Ủng hộ</a>
                            <div class="dropdown-menu">
                            <a href="donate.php" class="dropdown-item">Quyên góp</a>
                             <a href="update_donate.php" class="dropdown-item">Cập nhật ủng hộ</a>
                                <a href="volunteer.php" class="dropdown-item">Tình nguyện viên</a>
                                                               
                            </div>
                        </div>
                        <a href="contact.php" class="nav-item nav-link">Liên hệ</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Nav Bar End -->
        
        
        <!-- Page Header Start -->
        <div class="page-header">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2>Sự kiện sắp tới</h2>
                    </div>
                    <div class="col-12">
                        <a href="index.php">Trang chủ</a>
                        <a href="event.php">Sự kiện</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Header End -->
        
        
        <!-- Event Start -->
        <div class="event">
            <div class="container">
                <div class="section-header text-center">
                    <p>Sự kiện nổi bật</p>
                    <h2>Bạn hãy chuẩn bị cho mình một tâm thế sẵn sàng để cùng tham gia các sự kiện từ thiện sắp tới của chúng tôi nhé!</h2>
                </div>
                <div class="row">
                <?php
                include('config.php');
                $sql="SELECT * FROM tbl_su_kien where ngay_to_chuc > CURRENT_DATE";
                $noi_dung=mysqli_query($ket_noi,$sql);
                while($row=mysqli_fetch_array($noi_dung))
                {
                    ;?>
                    <div class="col-lg-6">
                        <div class="event-item">
                            <img src="<?php echo $row["image"];?>" alt="Image">
                            <div class="event-content">
                                <div class="event-meta">
                                    <p><i class="fa fa-calendar-alt"></i><?php echo $row["ngay_to_chuc"];?></p>
                                    <p><i class="far fa-clock"></i><?php echo $row["thoi_gian"];?></p>
                                    <p><i class="fa fa-map-marker-alt"></i><?php echo $row["dia_diem"];?></p>
                                </div>
                                <div class="event-text">
                                    <h3><?php echo $row["ten"];?></h3>
                                    <p>
                                       <?php echo $row["mo_ta"];?>
                                    </p>
                                    <a class="btn btn-custom" href="volunteer.php">Tham gia</a>
                                    
                                    <div class="btn btn-custom">
                                        <input type="hidden" name="txtID">
                                        <div class="d-grid"><a href="event_noi_dung.php?id=<?php echo $row['id_su_kien'];?>">Xem thêm</a></div>
                                        <!--<a class="btn btn-custom" href="event_noi_dung.php?id=<?php echo $row['id_su_kien'];?>">Xem chi tiết</a></div> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php
                    }
                    mysqli_close($ket_noi);
                    ;?>
                </div>
            </div>
        </div>
        <!-- Event End -->


        <!-- Footer Start -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-contact">
                            <h2>Trụ sở chính</h2>
                            <p><i class="fa fa-map-marker-alt"></i>12 Chùa Bộc, Quang Trung, Đống Đa, Hà Nội</p>
                            <p><i class="fa fa-phone-alt"></i>+012 345 67890</p>
                            <p><i class="fa fa-envelope"></i>helpv@example.com</p>
                            <div class="footer-social">
                                <a class="btn btn-custom" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-custom" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-custom" href=""><i class="fab fa-youtube"></i></a>
                                <a class="btn btn-custom" href=""><i class="fab fa-instagram"></i></a>
                                <a class="btn btn-custom" href=""><i class="fab fa-linkedin-in"></i></a>
                            </div>
                        </div>
                    </div>
                <div class="col-lg-3 col-md-6">
                        <div class="footer-link">
                            <h2>Về HELPV</h2>
                            <a href="about.php">Giới thiệu</a>
                            <a href="contact.php">Liên hệ với chúng tôi</a>
                            <a href="causes.php">Các hoạt động phổ biến</a>
                            <a href="event.php">Các sự kiện sắp tới</a>
                            <a href="blog.php">Blogs</a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-link">
                            <h2>Useful Links</h2>
                            <a href="">Terms of use</a>
                            <a href="">Privacy policy</a>
                            <a href="">Cookies</a>
                            <a href="">Help</a>
                            <a href="">FQAs</a>
                        </div>
                    </div>
                                  
                </div>
            </div>
            <div class="container copyright">
                <div class="row">
                    <div class="col-md-6">
                        <p>&copy; <a href="#">HELPV</a></p>
                    </div>                    
                </div>
            </div>
        </div>
        <!-- Footer End -->

        <!-- Back to top button -->
        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
        
        <!-- Pre Loader -->
        <div id="loader" class="show">
            <div class="loader"></div>
        </div>

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="lib/parallax/parallax.min.js"></script>
        
        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>
</html>
