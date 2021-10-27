<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Thêm mới tình nguyện viên</title>
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
    <?php
            //1. Kết nối đến máy chủ dữ liệu & CSDL mà các bạn muốn lấy, thêm mới, sửa, xóa
              include('config.php');
            //2. Lấy dữ liệu
            $ten = $_POST["txtTen"];
            $email = $_POST["txtEmail"];
            $sdt = $_POST["txtSdt"];
            $gioi_tinh = $_POST["txtgioitinh"];
            $su_kien= (int)$_POST["txtSukien"];
            //3. Viết câu lệnh truy vấn thêm mới dữ liệu vào bảng tin tức trong CSDL
            $sql1 = "
                    INSERT INTO `tbl_tinh_nguyen_vien` (`id_tnv`, `ten_nv`, `gioi_tinh`, `sdt`, `email`) VALUES (NULL, '".$ten."', '".$gioi_tinh."', '".$sdt."', '".$email."');
                    ";
            $thuc_thi1 = mysqli_query($ket_noi, $sql1);
    $last_id = $ket_noi->insert_id;
            // $sql = "select id_tnv from tbl_tinh_nguyen_vien where sdt='".$sdt."'";
            // $id = mysqli_query($ket_noi, $sql);
            // $id_real = (int)$id;
            // print $id_real;
            // exit();
            $sql2 = "
                      INSERT INTO `tbl_tham_gia` (`id_tham_gia`, `id_tnv`, `id_su_kien`) VALUES (NULL, ".$last_id.", ".$su_kien.");
                    ";
            //4. Thực thi câu lệnh truy vấn
                $thuc_thi2 = mysqli_query($ket_noi, $sql2);
            //5. Hiện thị thông báo thêm mới thành công và đẩy các bạn về trang quản trị tin tức
                echo "
                    <script type='text/javascript'>
                        window.alert('Bạn đã đăng kí thành công!');
                    </script>
                ";
                echo "
                    <script type='text/javascript'>
                        window.location.href='volunteer.php';
                    </script>
                ";
               
            ;?>
</body>

