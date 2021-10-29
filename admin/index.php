<?php
    //kiểm tra bạn có quyền truy cập trang này k qua biến $session['da_dang_nhap']
    session_start();
    if(!$_SESSION['da_dang_nhap'])
        {
                        echo "
                    <script type='text/javascript'>
                        window.alert('Bạn không có quyền truy cập');
                    </script>
                ";
                echo "
                    <script type='text/javascript'>
                        window.location.href='dang_nhap.php';
                    </script>
                ";
        }
$ten=$_SESSION['ten'];
$anh=$_SESSION['anh'];
;?>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Trang chủ quản trị</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/feather/feather.css">
  <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
  <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css">
  <link rel="stylesheet" type="text/css" href="js/select.dataTables.min.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="images/favicon.png" />
</head>
<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
       <a class="navbar-brand brand-logo mr-5" href="index.php"><img src="images/a.jpg" class="mr-2" alt="logo"/></a>
        <a class="navbar-brand brand-logo-mini" href="index.php"><img src="images/h.jpg" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="icon-menu"></span>
        </button>
        <ul class="navbar-nav mr-lg-2">
          <li class="nav-item nav-search d-none d-lg-block">
            <div class="input-group">
              <div class="input-group-prepend hover-cursor" id="navbar-search-icon">
                <span class="input-group-text" id="search">
                  <i class="icon-search"></i>
                </span>
              </div>
              <input type="text" class="form-control" id="navbar-search-input" placeholder="Tìm kiếm" aria-label="search" aria-describedby="search">
            </div>
          </li>
        </ul>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
          <strong><?php echo $ten ;?></strong>
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
               <img src="../<?php echo $anh ;?>" alt="profile"/>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item">
                <i class="ti-settings text-primary"></i>
                Cài Đặt
              </a>
              <a class="dropdown-item" href='dang_xuat.php'>
                <i class="ti-power-off text-primary"></i>
                Đăng Xuất
              </a>
            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="icon-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_settings-panel.html -->
      <div class="theme-setting-wrapper">
        <div id="settings-trigger"><i class="ti-settings"></i></div>
        <div id="theme-settings" class="settings-panel">
          <i class="settings-close ti-close"></i>
          <p class="settings-heading">SIDEBAR SKINS</p>
          <div class="sidebar-bg-options selected" id="sidebar-light-theme"><div class="img-ss rounded-circle bg-light border mr-3"></div>Light</div>
          <div class="sidebar-bg-options" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark</div>
          <p class="settings-heading mt-2">HEADER SKINS</p>
          <div class="color-tiles mx-0 px-4">
            <div class="tiles success"></div>
            <div class="tiles warning"></div>
            <div class="tiles danger"></div>
            <div class="tiles info"></div>
            <div class="tiles dark"></div>
            <div class="tiles default"></div>
          </div>
        </div>
      </div>
      <!-- partial -->
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="index.php">
              <i class="icon-grid menu-icon"></i>
              <span class="menu-title">Danh mục</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="quan_tri_admin.php">
              <i class="icon-head menu-icon"></i>
              <span class="menu-title">Quản trị admin</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="quan_tri_su_kien.php">
              <i class="icon-layout menu-icon"></i>
              <span class="menu-title">Quản trị sự kiện</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="quan_tri_blog.php">
              <i class="icon-columns menu-icon"></i>
              <span class="menu-title">Quản trị blog</span>
            </a>
          </li>
         
          <li class="nav-item">
            <a class="nav-link" href="quan_tri_chia_se.php">
              <i class="icon-grid-2 menu-icon"></i>
              <span class="menu-title">Quản trị chia sẻ</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="quan_tri_tinh_nguyen_vien.php">
              <i class="icon-head menu-icon"></i>
              <span class="menu-title">Quản trị tình nguyện viên</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
              <i class="icon-head menu-icon"></i>
              <span class="menu-title">Quản trị ủng hộ</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="auth">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="quan_tri_ung_ho_tien.php"> Ủng hộ tiền </a></li>
                <li class="nav-item"> <a class="nav-link" href="quan_tri_ung_ho_vat_chat.php">Ủng hộ vật chất</a></li>
                  <li class="nav-item"> <a class="nav-link" href="xac_nhan_ungho_tien.php">Đã xác nhận tiền</a></li>
                 <li class="nav-item"> <a class="nav-link" href="xac_nhan_ungho_vat_chat.php">Đã xác nhận vật chất</a></li>
              </ul>
            </div>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="quan_tri_tham_gia.php">
              <i class="icon-head menu-icon"></i>
              <span class="menu-title">Quản trị tham gia</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#error" aria-expanded="false" aria-controls="error">
              <i class="icon-ban menu-icon"></i>
              <span class="menu-title">Error pages</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="error">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/samples/error-404.php"> 404 </a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/samples/error-500.php"> 500 </a></li>
              </ul>
            </div>
          </li>

        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-md-12 grid-margin">
              <div class="row">
                <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                  <h3 class="font-weight-bold">Chào mừng đến với trang chủ admin</h3>
                  <h6 class="font-weight-normal mb-0">Chúc một ngày tốt lành!</h6>
                </div>
                <div class="col-12 col-xl-4">
                 <div class="justify-content-end d-flex">
                  <div class="dropdown flex-md-grow-1 flex-xl-grow-0">
                    <button class="btn btn-sm btn-light bg-white dropdown-toggle" type="button" id="dropdownMenuDate2">
                     <i class="mdi mdi-calendar"></i><?php echo date("d/m/Y") ;?>
                    </button>
                  </div>
                 </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 grid-margin stretch-card">
              <div class="card tale-bg">
                <div class="card-people mt-auto">
                  <img src="images/dashboard/people.svg" alt="people">
                  <div class="weather-info">
                    <div class="d-flex">
                      <div>
                        <h2 class="mb-0 font-weight-normal"><i class="icon-sun mr-2"></i>31<sup>C</sup></h2>
                      </div>
                      <div class="ml-2">
                        <h4 class="location font-weight-normal">Hà Nội</h4>
                        <h6 class="font-weight-normal">Việt Nam</h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <?php
            //1 Kết nối
          //1. Load file cấu hình để kết nối đến máy chủ CSDL
                 include('../config.php');
          //2 Truy vấn
          $sql1 = "SELECT DISTINCT(dia_diem) FROM `tbl_su_kien`";
          $sql2 = "SELECT DISTINCT(id_tnv) FROM `tbl_tinh_nguyen_vien`";
          $sql3 = "SELECT sum(so_tien_ung_ho) as 'Total' FROM `tbl_su_kien`";
          $sql4 = "SELECT DISTINCT(id_su_kien) FROM `tbl_su_kien`";

          //3 Thực thi truy vấn
          $noi_dung_sk = mysqli_query($ket_noi,$sql1);
          $noi_dung_tnv = mysqli_query($ket_noi,$sql2);
          $noi_dung_total = mysqli_query($ket_noi,$sql3);
          $noi_dung_so_sk = mysqli_query($ket_noi,$sql4);

          //4 Đếm số lượng bản ghi
          $so_luong_dd = mysqli_num_rows($noi_dung_sk);
          $so_luong_tnv = mysqli_num_rows($noi_dung_tnv);
          $row = mysqli_fetch_array($noi_dung_total);
          $so_luong_sk = mysqli_num_rows($noi_dung_so_sk);

            ;?>
            <div class="col-md-6 grid-margin transparent">
              <div class="row">
                <div class="col-md-6 mb-4 stretch-card transparent">
                  <div class="card card-tale">
                    <div class="card-body">
                      <p class="mb-4">Tỉnh thành</p>
                      <p class="fs-30 mb-2"><?php echo $so_luong_dd;?></p>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 mb-4 stretch-card transparent">
                  <div class="card card-dark-blue">
                    <div class="card-body">
                      <p class="mb-4">Tổng số tình nguyện viên</p>
                      <p class="fs-30 mb-2"><?php echo $so_luong_tnv;?></p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6 mb-4 mb-lg-0 stretch-card transparent">
                  <div class="card card-light-blue">
                    <div class="card-body">
                      <p class="mb-4">Tồng số tiền đã nhận được</p>
                      <p class="fs-30 mb-2"><?php echo $row['Total'];?></p>
                    </div>
                  </div>
                </div>
                <div class="col-md-6 stretch-card transparent">
                  <div class="card card-light-danger">
                    <div class="card-body">
                      <p class="mb-4">Tổng số sự kiện đã tổ chức</p>
                      <p class="fs-30 mb-2"><?php echo $so_luong_sk;?></p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <script src="vendors/chart.js/Chart.min.js"></script>
  <script src="vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <script src="js/dataTables.select.min.js"></script>

  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/hoverable-collapse.js"></script>
  <script src="js/template.js"></script>
  <script src="js/settings.js"></script>
  <script src="js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <script src="js/Chart.roundedBarCharts.js"></script>
  <!-- End custom js for this page-->
</body>

</html>

