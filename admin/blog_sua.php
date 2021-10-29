
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
;?><!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Cập nhật blog</title>
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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
  <script>
            tinymce.init({
                selector: '#txtNoiDung'
                            });
        </script>
        <script>
            tinymce.init({
                selector: '#txtTen'
                            });
        </script>
        <script>
            tinymce.init({
                selector: '#txtMota'
                            });
        </script>
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
                <li class="nav-item"> <a class="nav-link" href="xac_nhan_ungho.php">Đã xác nhận ủng hộ tiền</a></li>
                 <li class="nav-item"> <a class="nav-link" href="xac_nhan_ungho.php">Đã xác nhận ủng hộ vật chất</a></li>
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
                  <h3 class="font-weight-bold">Cập nhật blog</h3>
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
          <div class="col-lg-12 stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Danh sách blog | <a href="blog_them_moi.php">Thêm mới</a></h4>
                  <div class="table-responsive pt-3">

                    <?php
                                //Viết câu lệnh để thực hiện load dữ liệu và hiển thị lên webpage
                                //1. Load file cấu hình để kết nối đến máy chủ CSDL
                                    include('../config.php');
                    //2. Viết câu lệnh truy vấn lấy ra dữ liệu mong muốn (tin tức đã lưu trong csdl)
                    $id_blog =$_GET["id"];

                    $sql = "
                            SELECT * 
                            from tbl_blog 
                            where id_blog = ".$id_blog."
                            order by id_blog desc";
                    //3. Thực thi câu lệnh truy vấn
                    $noi_dung_blog = mysqli_query($ket_noi, $sql);
                    //4. Hiện thị dữ liệu lấy đc
                    $row = mysqli_fetch_array($noi_dung_blog);
                    
                        ;?>

                    <form class="forms-sample" method="POST" action="blog_sua_thuc_hien.php" enctype="multipart/form-data">
                    <div class="form-group">
                      <label for="txtTen">Tên blog</label>
                      <input type="text" class="form-control" id="txtTen" name="txtTen" placeholder="Tên blog" value="<?php echo $row['ten'] ;?>"/>
                    </div>
                    <div class="form-group">
                      <label for="txtMota">Mô tả</label>
                      <input type="text" class="form-control" id="txtMota" name="txtMota" placeholder="Mô tả" value="<?php echo $row['mo_ta'] ;?>"/>
                    </div>
                    <div class="form-group">
                      <label for="txtNoiDung">Nội dung</label>
                      <input type="text" class="form-control" id="txtNoiDung" name="txtNoiDung" placeholder="Nội dung" value="<?php echo $row['noi_dung'] ;?>"/>
                    </div>
                    
                    <div class="form-group">
                      <label for="txtAnh">Ảnh</label>
                      <input type="file" class="form-control" id="txtAnh" name="txtAnh" placeholder="Ảnh minh họa" value="<?php echo $row['image'] ;?>"/>
                    </div>
                    <div>
                    <input type="hidden" name="txtID" value="<?php echo $row['id_blog'];?>">
                    <button type="submit" class="btn btn-primary mr-2">Cập nhật</button>
                    </div>
                  </form>
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

