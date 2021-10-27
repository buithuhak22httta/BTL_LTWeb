<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>HELPZ - Chung tay giúp đỡ trẻ em Việt Nam</title>
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
    <style>
        .card{
            padding: 15px 0;
            width: 100%;
           
            color: #20212b;
            background-color: #f3f6ff;
            font-family: 'Quicksand';
           
        }
        .card-body{
            font-family: 'Quicksand';
        }
        .form-control{
             border: 1px solid #8e8e8e;   
               font-family: 'Quicksand';
                background-color: #f3f6ff;
                height: 62px;
        }
        .form-group{
            background-color: #f3f6ff;
        }
        .butonn{
                width: 50%;
                background-color: #f2bd31;
                height: 62px
        }
    </style>
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
                                <p>helpv@example.com</p>
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
                        <a href="event.php" class="nav-item nav-link">Sự kiện</a>
                        <a href="blog.php" class="nav-item nav-link">Blog</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle active" data-toggle="dropdown">Ủng hộ</a>
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
                        <h2>Cập nhật ủng hộ</h2>
                    </div>
                    <div class="col-12">
                        <a href="index.php">Trang chủ</a>
                        <a href="update_donate.php">Cập nhật ủng hộ</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Page Header End -->
        
        
        <!-- Donate Start -->
        <div class="container">
            <div class="event-item">
                <div class="event-content">
                    <div class="event-text">
                        <h3 style="text-align: center;"><b>CHUNG SỨC CÙNG CỘNG ĐỒNG ƯƠM NHỮNG MẦM NON TƯƠNG LAI </b></h3>
                        <br>
                    </div>
                </div>
            </div>
             <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title"><a href="update_donate.php"> Danh sách ủng hộ tiền</a>/<a href="cap_nhat_ung_ho_hien_vat.php">Danh sách ủng hộ hiện vật</a> </h4>
                  <div class="table-responsive pt-3">
                  <?php
                         $ket_noi = mysqli_connect("localhost", "root", "", "helpv");
                        
                        $sql1 = "
                                SELECT * 
                                from tbl_ung_ho_tien
                                ";
                        $noi_dung_sk = mysqli_query($ket_noi, $sql1);
                        $row1 = mysqli_fetch_array($noi_dung_sk);
                                        
                        ;?>
                    <table class="table table-bordered">
                      <thead>
                        <tr>
                          <th>STT</th>
                          <th>Họ và tên</th>
                          <th>Số tiền</th>
                          <th>Ngày ủng hộ</th>
                        </tr>
                      </thead>
                      <tbody>
                         <?php
                        //1. Kết nối đến máy chủ dữ liệu & CSDL mà các bạn muốn lấy, thêm mới, sửa, xóa
                        $ket_noi = mysqli_connect("localhost", "root", "", "helpv");
                        //2. Viết câu lệnh truy vấn lấy ra dữ liệu mong muốn (tin tức đã lưu trong csdl)
                         $sql = "
                                SELECT * 
                                from tbl_ung_ho_da_xn
                                where trang_thai = 'Công khai'
                                order by id_xn desc";
                        //3. Thực thi câu lệnh truy vấn
                        $ten_ung_ho = mysqli_query($ket_noi, $sql);
                        //4. Hiện thị dữ liệu lấy đc
                        $i=0;
                        while ($row = mysqli_fetch_array($ten_ung_ho))
                            {
                                $i++;
                                ;?>
                        <tr>
                          <td>
                           <?php echo $i;?>
                          </td>
                          <td>
                            <?php echo $row["ten"];?>
                          </td>
                          <td>
                              <?php echo $row["so_tien"];?>
                          </td>
                          <td> <?php echo date("d/m/y", strtotime($row["time"]));?></td>
                        </tr>
                        <?php }
                            //5. Đóng kết nối
                            mysqli_close($ket_noi) ;?>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            </div>
        
        <!-- Donate End -->


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
