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
                        <a href="index.php" class="nav-item nav-link active">Trang chủ</a>
                        <a href="about.php" class="nav-item nav-link">Giới thiệu</a>
                        <a href="causes.php" class="nav-item nav-link">Hành động</a>
                        <a href="event.php" class="nav-item nav-link">Sự kiện</a>
                        <a href="blog.php" class="nav-item nav-link">Blog</a>
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Ủng hộ</a>
                            <div class="dropdown-menu">
                                <a href="donate.php" class="dropdown-item">Quyên góp</a>
                                <a href="volunteer.php" class="dropdown-item">Trở thành tình nguyện viên</a>
                            </div>
                        </div>
                        <a href="contact.php" class="nav-item nav-link">Liên hệ</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Nav Bar End -->


        <!-- Carousel Start -->
        <div class="carousel">
            <div class="container-fluid">
                <div class="owl-carousel">
                    <div class="carousel-item">
                        <div class="carousel-img">
                            <img src="img/carousel-1.jpg" alt="Image">
                        </div>
                        <div class="carousel-text">
                            <h1>Hãy dành những gì tốt đẹp nhất vì trẻ em</h1>
                            <p>
                                Trẻ em hôm nay, thế giới ngày mai! Hãy dành cho trẻ em mọi điều tốt đẹp!
                            </p>
                            <div class="carousel-btn">
                                <a class="btn btn-custom" href="donate.php">Ủng hộ</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="carousel-img">
                            <img src="img/carousel-2.jpg" alt="Image">
                        </div>
                        <div class="carousel-text">
                            <h1>Vì sự sống còn và phát triển của trẻ em</h1>
                            <p>
                                Chúng tôi tập trung vào sự sống còn và phát triển của trẻ nhỏ, chủ yếu vào các lĩnh vực như giáo dục, sức khỏe trẻ em, dinh dưỡng và tâm lý.
                            </p>
                            <div class="carousel-btn">
                                <a class="btn btn-custom" href="donate.php">Ủng hộ</a>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="carousel-img">
                            <img src="img/carousel-3.jpg" alt="Image">
                        </div>
                        <div class="carousel-text">
                            <h1>Mang lại nụ cười cho trẻ</h1>
                            <p>
                                Hành trình của chúng tôi là mang đến niềm vui cho mọi trẻ em Việt Nam.
                            </p>
                            <div class="carousel-btn">
                                <a class="btn btn-custom" href="donate.php">Ủng hộ</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Carousel End -->

        <!-- Video Modal Start-->
        <div class="modal fade" id="videoModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>        
                        <!-- 16:9 aspect ratio -->
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" src="" id="video"  allowscriptaccess="always" allow="autoplay"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <!-- Video Modal End -->
        

        <!-- About Start -->
        <div class="about">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="about-img" data-parallax="scroll" data-image-src="img/about.jpg"></div>
                    </div>
                    <div class="col-lg-6">
                        <div class="section-header">
                            <p>Hiểu thêm về chúng tôi</p>
                            <h2>Tổ chức từ thiện phi lợi nhuận vì trẻ em tại Việt Nam</h2>
                        </div>
                        <div class="about-tab">
                            <ul class="nav nav-pills nav-justified">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="pill" href="#tab-content-1">Về chúng tôi</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="pill" href="#tab-content-2">Sứ mệnh</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="pill" href="#tab-content-3">Tầm nhìn</a>
                                </li>
                            </ul>

                            <div class="tab-content">
                                <div id="tab-content-1" class="container tab-pane active">
                                    HEPLV được thành lập năm 2020 nhằm giúp trẻ em Việt Nam có hoàn cảnh khó khăn được tiếp cận giáo dục và có sự khởi đầu tốt hơn trong cuộc sống. HELPV chỉ hoạt động tại Việt Nam và mọi hoạt động của tổ chức gắn liền với cam kết hỗ trợ trẻ em vượt qua mọi rào cản.
                                </div>
                                <div id="tab-content-2" class="container tab-pane fade">
                                    Với slogan “Chăm sóc – yêu thương – chia sẻ”, HELPV luôn nỗ lực làm việc để cung cấp nhu yếu phẩm thiết yếu như thực phẩm, nước sạch, chỗ ở, giáo dục và nhu cầu y tế cho trẻ em gặp khó khăn và cố gắng giúp cải thiện cuộc sống của trẻ em mồ côi trên khắp Việt Nam. 
                                </div>
                                <div id="tab-content-3" class="container tab-pane fade">
                                    Ở tổ chức HELPV, tầm nhìn của chúng tôi là trở thành một tổ chức phi chính phủ hàng đầu tại Việt Nam, nơi chăm sóc và hỗ trợ các trẻ em nghèo ở khắp cả nước, giúp các em có một tương lai tươi sáng hơn.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


        <!-- Service Start -->
        <div class="service">
            <div class="container">
                <div class="section-header text-center">
                    <p>Chúng tôi đang làm gì?</p>
                    <h2>Chúng tôi tin tưởng rằng chúng tôi có thể đem lại nhiều điều tốt đẹp hơn cho trẻ em Việt Nam</h2>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item">
                            <div class="service-icon">
                                <i class="flaticon-diet"></i>
                            </div>
                            <div class="service-text">
                                <h3>Thức ăn lành mạnh</h3>
                                <p>HELPV nỗ lực cải thiện tình trạng dinh dưỡng cho trẻ em tại Việt Nam nhằm đảm bảo mọi trẻ em có sự khởi đầu tốt nhất trong đời.<p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item">
                            <div class="service-icon">
                                <i class="flaticon-water"></i>
                            </div>
                            <div class="service-text">
                                <h3>Cung cấp nước sạch</h3>
                                <p>HELPV kêu gọi sự tham gia hỗ trợ của cộng đồng cung cấp nước cho người dân và trẻ em ở vùng nước bị ô nhiễm được sử dụng nguồn nước sạch.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item">
                            <div class="service-icon">
                                <i class="flaticon-healthcare"></i>
                            </div>
                            <div class="service-text">
                                <h3>Chăm sóc sức khỏe</h3>
                                <p>Ở Việt Nam, chúng tôi bảo vệ sức khỏe trẻ em, tập trung vào những trẻ em nghèo nhất và thiệt thòi nhất.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item">
                            <div class="service-icon">
                                <i class="flaticon-education"></i>
                            </div>
                            <div class="service-text">
                                <h3>Giáo dục</h3>
                                <p>Trẻ em là tương lai của gia đình và xã hội, chúng tôi  luôn tạo mọi điều kiện để giáo dục, phát triển cho trẻ em - nguồn nhân lực cho tương lai.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item">
                            <div class="service-icon">
                                <i class="flaticon-home"></i>
                            </div>
                            <div class="service-text">
                                <h3>Mái ấm cho em</h3>
                                <p>Giúp đỡ trẻ em cơ nhỡ, tàn tật có những mái ấm, gia đình thật lớn</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item">
                            <div class="service-icon">
                                <i class="flaticon-social-care"></i>
                            </div>
                            <div class="service-text">
                                <h3>Bảo trợ xã hội</h3>
                                <p>HELPV cam kết xây dựng một hệ thống bảo trợ xã hội thân thiện với trẻ em, đồng thời sẽ giúp giải quyết tính dễ bị tổn thương về mặt xã hội.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service End -->
        
        
        <!-- Facts Start -->
        <div class="facts" data-parallax="scroll" data-image-src="img/facts.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="facts-item">
                            <i class="flaticon-home"></i>
                            <div class="facts-text">
                                <h3 class="facts-plus" data-toggle="counter-up">30</h3>
                                <p>Tỉnh thành</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="facts-item">
                            <i class="flaticon-charity"></i>
                            <div class="facts-text">
                                <h3 class="facts-plus" data-toggle="counter-up">250</h3>
                                <p>Tình nguyện viên</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="facts-item">
                            <i class="flaticon-kindness"></i>
                            <div class="facts-text">
                                <h3 class="facts-dollar" data-toggle="counter-up">10000</h3>
                                <p>Mục tiêu</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="facts-item">
                            <i class="flaticon-donation"></i>
                            <div class="facts-text">
                                <h3 class="facts-dollar" data-toggle="counter-up">4000</h3>
                                <p>Đã đạt được</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Facts End -->
        
        
        <!-- Causes Start -->
        <div class="causes">
            <div class="container">
                <div class="section-header text-center">
                    <p>Hoạt động gần đây</p>
                    <h2>Từ tháng 01 năm 2021 đến nay</h2>
                </div>
                <div class="owl-carousel causes-carousel">
                    <div class="causes-item">
                        <div class="causes-img">
                            <img src="img/causes-1.jpg" alt="Image">
                        </div>
                        <div class="causes-progress">
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
                                    <span>100%</span>
                                </div>
                            </div>
                            <div class="progress-text">
                                <p><strong>Mục tiêu:</strong> $3000</p>
                                <p><strong>Đạt được:</strong> $3000</p>
                            </div>
                        </div>
                        <div class="causes-text">
                            <h3>Em đến trường</h3>
                            <p>Ủng hộ sách vở, đồ dùng học tập cho trẻ em bị ảnh hưởng bởi lũ lụt tại Quảng Trị.</p>
                        </div>                        
                    </div>
                    <div class="causes-item">
                        <div class="causes-img">
                            <img src="img/causes-2.jpg" alt="Image">
                        </div>
                        <div class="causes-progress">
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
                                    <span>100%</span>
                                </div>
                            </div>
                            <div class="progress-text">
                                <p><strong>Mục tiêu:</strong> $1000</p>
                                <p><strong>Đạt được:</strong> $1000</p>
                            </div>
                        </div>
                        <div class="causes-text">
                            <h3>Áo ấm cho em</h3>
                            <p>Quyên góp quần áo ấm và đồ dùng thiết yếu cho trẻ em xã Bình Trung, huyện Chợ Đồn, tỉnh Bắc Kạn.</p>
                        </div>                        
                    </div>
                    <div class="causes-item">
                        <div class="causes-img">
                            <img src="img/causes-3.jpg" alt="Image">
                        </div>
                        <div class="causes-progress">
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
                                    <span>100%</span>
                                </div>
                            </div>
                            <div class="progress-text">
                                <p><strong>Mục tiêu:</strong> $3000</p>
                                <p><strong>Đạt được:</strong> $3000</p>
                            </div>
                        </div>
                        <div class="causes-text">
                            <h3>Bữa ăn dinh dưỡng cho trẻ</h3>
                            <p>Cung cấp 205 bữa ăn lành mạnh cho các em nhỏ tại Trung tâm Nhân đạo Quê Hương (Bình Dương).</p>
                        </div>                        
                    </div>
                    <div class="causes-item">
                        <div class="causes-img">
                            <img src="img/causes-4.jpg" alt="Image">
                        </div>
                        <div class="causes-progress">
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100">
                                    <span>100%</span>
                                </div>
                            </div>
                            <div class="progress-text">
                                <p><strong>Mục tiêu:</strong> $5000</p>
                                <p><strong>Đạt được:</strong> $5000</p>
                            </div>
                        </div>
                        <div class="causes-text">
                            <h3>Hỗ trợ học trực tuyến</h3>
                            <p>Ủng hộ 40 chiếc điện thoại giúp các em nhỏ tại Bình Dương đủ điều kiện học tập.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Causes End -->
        
        
        <!-- Donate Start -->
        <div class="donate" data-parallax="scroll" data-image-src="img/donate.jpg">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-7">
                        <div class="donate-content">
                            <div class="section-header">
                                <p>Úng hộ</p>
                                <h2>Hãy quyên góp để trẻ em đang gặp khó khăn có cuộc sống tốt hơn</h2>
                            </div>
                            <div class="donate-text">
                                <p>
                                    Cả nước hiện có khoảng gần 5,6 triệu trẻ em nghèo đa chiều. Trong đó 50% trẻ em dân tộc thiếu số là trẻ em nghèo. Hơn 36% trẻ em dân tộc thiểu số còn chưa được dùng nước sạch, dịch vụ y tế, chưa được tiếp cận kịp thời các dịch vụ bảo vệ trẻ em, tỷ lệ học sinh được đến trường ở vùng dân tộc thiểu số và miền núi còn thấp, hầu hết các xã miền núi đặc biệt khó khăn còn thiếu điểm vui chơi cho trẻ em.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="donate-form">
                            <form>
                                <div class="control-group">
                                    <input type="text" class="form-control" placeholder="Tên" required="required" />
                                </div>
                                <div class="control-group">
                                    <input type="email" class="form-control" placeholder="Email" required="required" />
                                </div>
                                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                    <label class="btn btn-custom active">
                                        <input type="radio" name="options" checked> 50.000
                                    </label>
                                    <label class="btn btn-custom">
                                        <input type="radio" name="options"> 100.000
                                    </label>
                                    <label class="btn btn-custom">
                                        <input type="radio" name="options"> Khác
                                    </label>
                                </div>
                                <div>
                                    <button class="btn btn-custom" type="submit">Ủng hộ ngay</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Donate End -->
        
        
        <!-- Event Start -->
        <div class="event">
            <div class="container">
                <div class="section-header text-center">
                    <p>Sự kiện sắp tới</p>
                    <h2>Sẵn sàng cho hành trình tiếp theo</h2>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="event-item">
                            <img src="img/im10.jpg" alt="Image">
                            <div class="event-content">
                                <div class="event-meta">
                                    <p><i class="fa fa-calendar-alt"></i>01-11-2021</p>
                                    <p><i class="far fa-clock"></i>8:00 - 10:00</p>
                                    <p><i class="fa fa-map-marker-alt"></i>Hồ Chí Minh</p>
                                </div>
                                <div class="event-text">
                                    <h3>Chiến dịch "Em không lẻ loi"</h3>
                                    <p>
                                        Chiến dịch hỗ trợ cho trẻ em mồ côi vì Covid-19 hướng đến mục tiêu kêu gọi ủng hộ từ các nguồn lực trong xã hội để cung cấp những hỗ trợ khẩn cấp cũng như dài hạn cho trẻ em có hoàn cảnh khó khăn mất cha/mẹ, hoặc người chăm sóc chính vì dịch bệnh Covid-19.
                                    </p>
                                    <a class="btn btn-custom" href="">Tham gia</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="event-item">
                            <img src="img/im9.jpg" alt="Image">
                            <div class="event-content">
                                <div class="event-meta">
                                    <p><i class="fa fa-calendar-alt"></i>15-01-2022</p>
                                    <p><i class="far fa-clock"></i>8:00 - 17:00</p>
                                    <p><i class="fa fa-map-marker-alt"></i>Hà Nội</p>
                                </div>
                                <div class="event-text">
                                    <h3>Giúp đỡ trẻ em cơ nhỡ trên địa bàn Hà Nội</h3>
                                    <p>
                                        Các hoạt động của Dự án gồm: Tiếp cận với trẻ em và cung cấp, hỗ trợ khẩn cấp ban đầu cho các em nơi ở an toàn, dinh dưỡng, y tế, ăn mặc, trị liệu tâm lý…; hỗ trợ học phí và các chi phí học tập cho hơn 100 trẻ từ cấp TH tới THPT (học phí, bán trú, đồng phục, đồ dùng học tập…
                                    </p>
                                    <a class="btn btn-custom" href="">Tham gia</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Event End -->


        <!-- Team Start -->
        <div class="team">
            <div class="container">
                <div class="section-header text-center">
                    <p>Đồng sáng lập</p>
                    <h2>Những gương mặt tiêu biểu sau những hoạt động của chúng tôi</h2>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="img/team-1.jpg" alt="Team Image">
                            </div>
                            <div class="team-text">
                                <h2>Bùi Thu Hà</h2>
                                <div class="team-social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="img/team-2.jpg" alt="Team Image">
                            </div>
                            <div class="team-text">
                                <h2>Trần Xuân Bo</h2>
                                <div class="team-social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="img/team-3.jpg" alt="Team Image">
                            </div>
                            <div class="team-text">
                                <h2>Trần Đức Tuấn</h2>
                                <div class="team-social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="img/team-4.jpg" alt="Team Image">
                            </div>
                            <div class="team-text">
                                <h2>Tạ Kim Oanh</h2>
                                <div class="team-social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href=""><i class="fab fa-facebook-f"></i></a>
                                    <a href=""><i class="fab fa-linkedin-in"></i></a>
                                    <a href=""><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="img/team-4.jpg" alt="Team Image">
                            </div>
                            <div class="team-text">
                                <h2>Hoàng Thị Ngọc Hà</h2>
                                <div class="team-social">
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
        </div>
        <!-- Team End -->
        
        
        <!-- Volunteer Start -->
        <div class="volunteer" data-parallax="scroll" data-image-src="img/volunteer.jpg">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-5">
                        <div class="volunteer-form">
                            <form>
                                <div class="control-group">
                                    <input type="text" class="form-control" placeholder="Tên" required="required" />
                                </div>
                                <div class="control-group">
                                    <input type="email" class="form-control" placeholder="Email" required="required" />
                                </div>
                                <div class="control-group">
                                    <textarea class="form-control" placeholder="Tại sao bạn muốn trở thành tình nguyện viên?" required="required"></textarea>
                                </div>
                                <div>
                                    <button class="btn btn-custom" type="submit">Trở thành tình nghuyện viên</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="volunteer-content">
                            <div class="section-header">
                                <p>Trở thành một tình nguyện viên</p>
                                <h2>Hãy tạo nên điều kỳ diệu cho những sinh mệnh nhỏ</h2>
                            </div>
                            <div class="volunteer-text">
                                <p>
                                    HELPV chào mừng tất cả các tình nguyện viên đăng ký tham gia giúp sức cho các hoạt động của tổ chức. Tinh thần trẻ trung và nhiệt tình cùng với kỹ năng đa dạng của các bạn chính là món quà vô giá cho HELPV nói riêng và cho mọi trẻ em khó khăn tại Việt Nam nói chung.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Volunteer End -->
        
        
        <!-- Testimonial Start -->
        <div class="testimonial">
            <div class="container">
                <div class="section-header text-center">
                    <p>Chia sẻ</p>
                    <h2>Mọi người nói gì về những hoạt động của chúng tôi?</h2>
                </div>
                <div class="owl-carousel testimonials-carousel">
                    <div class="testimonial-item">
                        <div class="testimonial-profile">
                            <img src="img/testimo-4.jpg" alt="Image">
                            <div class="testimonial-name">
                                <h3>Trần Thị Thủy Tiên</h3>
                                <p>Ca sĩ</p>
                            </div>
                        </div>
                        <div class="testimonial-text">
                            <p>
                                Đây là một tổ chức rất ý nghĩa, cảm ơn đội ngũ đã thực hiện những chương trình giúp đỡ trẻ em. 
                            </p>
                        </div>
                    </div>
                    <div class="testimonial-item">
                        <div class="testimonial-profile">
                            <img src="img/testimo-2.jpg" alt="Image">
                            <div class="testimonial-name">
                                <h3>Nguyễn Phương Hằng</h3>
                                <p>Doanh nhân</p>
                            </div>
                        </div>
                        <div class="testimonial-text">
                            <p>
                                HELPV là một tổ chức tuyệt vời. Cảm ơn tất cả các bạn.
                            </p>
                        </div>
                    </div>
                    <div class="testimonial-item">
                        <div class="testimonial-profile">
                            <img src="img/testimo-3.jpg" alt="Image">
                            <div class="testimonial-name">
                                <h3>Võ Hoài Linh</h3>
                                <p>Nghệ sĩ</p>
                            </div>
                        </div>
                        <div class="testimonial-text">
                            <p>
                                Thật tuyệt vời , các bạn đã thắp sáng thêm cho tương lai của những mần non đất nước.
                            </p>
                        </div>
                    </div>
                    <div class="testimonial-item">
                        <div class="testimonial-profile">
                            <img src="img/testimo-1.jpg" alt="Image">
                            <div class="testimonial-name">
                                <h3>Lưu Mạnh Thắng</h3>
                                <p>Giáo viên</p>
                            </div>
                        </div>
                        <div class="testimonial-text">
                            <p>
                                Tôi đã trao đổi với người đứng đầu và tôi có niềm tin rằng tôi có thể yên tâm đầu tư từ thiện vào nơi đây.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Testimonial End -->
        
        
        <!-- Contact Start -->
        <div class="contact">
            <div class="container">
                <div class="section-header text-center">
                    <p>Liên hệ</p>
                    <h2>Hãy gửi câu hỏi cho chúng tôi</h2>
                </div>
                <div class="contact-img">
                    <img src="img/contact.jpg" alt="Image">
                </div>
                <div class="contact-form">
                        <div id="success"></div>
                        <form name="sentMessage" id="contactForm" novalidate="novalidate">
                            <div class="control-group">
                                <input type="text" class="form-control" id="name" placeholder="Tên của bạn" required="required" data-validation-required-message="Hãy điền tên" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="email" class="form-control" id="email" placeholder="Email" required="required" data-validation-required-message="Hãy điền email" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="text" class="form-control" id="subject" placeholder="Chủ đề" required="required" data-validation-required-message="Hãy điền chủ đề" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <textarea class="form-control" id="message" placeholder="Lời nhắn" required="required" data-validation-required-message="Hãy nhập lời nhắn"></textarea>
                                <p class="help-block text-danger"></p>
                            </div>
                            <div>
                                <button class="btn btn-custom" type="submit" id="sendMessageButton">Gửi tin</button>
                            </div>
                        </form>
                    </div>
            </div>
        </div>
        <!-- Contact End -->


        <!-- Blog Start -->
        <div class="blog">
            <div class="container">
                <div class="section-header text-center">
                    <p>Blog của chúng tôi</p>
                    <h2>Tin tức mới nhất từ chúng tôi</h2>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="blog-item">
                            <div class="blog-img">
                                <img src="img/blog-1.jpg" alt="Image">
                            </div>
                            <div class="blog-text">
                                <h3><a href="#">Tấm gương sáng</a></h3>
                                <p>
                                    Em Lùi Thị Mía một học sinh nghèo tại khu vực miền núi khó khăn nhất tỉnh Sơn La. Đã xuất sắc đỗ trường Học viện Ngân Hàng nhưng hoàn cảnh khó khăn, em không đủ điều kiện tới trường. Nhờ sự giúp đỡ của quỹ học bổng HELPV em đã có cơ hội tiếp tục con đường học tập và giành nhiều thành tích cao trong học tập. 
                                </p>
                            </div>
                            <div class="blog-meta">
                                <p><i class="fa fa-user"></i><a href="">Admin</a></p>
                                <p><i class="fa fa-comments"></i><a href="">15 bình luận</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="blog-item">
                            <div class="blog-img">
                                <img src="img/blog-2.jpg" alt="Image">
                            </div>
                            <div class="blog-text">
                                <h3><a href="#">Trái tim trở lại</a></h3>
                                <p>
                                    Em La Pu Sá bị mắc bệnh tim bẩm sinh, gia đình hoàn cảnh khó khăn không đủ điều kiện chữa trị cho em. Các nhà hảo tâm và tình nguyện viên của HELPV đã tài trợ và giúp đỡ tạo điều kiện cho em được phẫu thuật thành công. Hiện tại, em đã hoàn toàn bình phục.
                                </p>
                            </div>
                            <div class="blog-meta">
                                <p><i class="fa fa-user"></i><a href="">Admin</a></p>
                                <p><i class="fa fa-comments"></i><a href="">18 bình luận</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="blog-item">
                            <div class="blog-img">
                                <img src="img/blog-3.jpg" alt="Image">
                            </div>
                            <div class="blog-text">
                                <h3><a href="#">Ngôi nhà mới</a></h3>
                                <p>
                                    Hai anh em Vũ Văn An và Vũ Văn Bình mất đi cả người thân lẫn ngôi nhà gắn bó hơn 10 năm sau trận lũ lụt năm 2020. Nhờ quỹ Mái ấm cho em của HELPV, tháng 12 năm 2020 các em đã có một ngôi nhà mới. 
                                </p>
                            </div>
                            <div class="blog-meta">
                                <p><i class="fa fa-user"></i><a href="">Admin</a></p>
                                <p><i class="fa fa-comments"></i><a href="">12 bình luận</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Blog End -->


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
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-newsletter">
                            <h2>Cảm nhận của bạn về Helpv!</h2>
                            <form>
                                <input class="form-control" placeholder="Cảm nhận của bạn">
                                <button class="btn btn-custom">Gửi</button>
                                <label>Mỗi lời nhận xét của bạn sẽ giúp Helpv phát triển và hoàn thiện hơn!</label>
                            </form>
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
