<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Thêm mới liên hệ</title>
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
            $nghe = $_POST["txtNghe"];
            $loinhan = $_POST["txtLoinhan"];
            //3. Viết câu lệnh truy vấn thêm mới dữ liệu vào bảng tin tức trong CSDL
            $sql1 = "
                    INSERT INTO `tbl_chia_se_user` (`id_chia_se`, `ten`, `email`, `nghe_nghiep`, `loi_nhan`, `id_admin`) VALUES (NULL, '".$ten."', '".$email."', '".$nghe."', '".$loinhan."', '1');
                    ";
            //print $sql1; exit();
            $thuc_thi1 = mysqli_query($ket_noi, $sql1);
            //5. Hiện thị thông báo thêm mới thành công và đẩy các bạn về trang quản trị tin tức
                echo "
                    <script type='text/javascript'>
                        window.alert('Bạn đã gửi tin thành công!');
                    </script>
                ";
                echo "
                    <script type='text/javascript'>
                        window.location.href='contact.php';
                    </script>
                ";
               
            ;?>
</body>

