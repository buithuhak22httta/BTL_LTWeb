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

;?>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Cập nhật tình nguyện viên</title>
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
            include('../config.php');

            //2. Lấy dữ liệu
            $id_tnv = $_POST["txtId"];
            $ten = $_POST["txtTen"];
            $gioi_tinh = $_POST["txtGioitinh"];
            $sdt = $_POST["txtSdt"];
            $email = $_POST["txtEmail"];
            $ghi_chu= $_POST["txtGhichu"];
        
            //3. Viết câu lệnh truy vấn thêm mới dữ liệu vào bảng tin tức trong CSDL
            $sql = "

            UPDATE `tbl_tinh_nguyen_vien` SET `ten_tnv` = '".$ten."', `gioi_tinh` = '".$gioi_tinh."',`sdt` = '".$sdt."',`email` = '".$email."', `ghi_chu` = '".$ghi_chu."' WHERE `tbl_tinh_nguyen_vien`.`id_tnv` =  '".$id_tnv."'
            ";
                  
            //4. Thực thi câu lệnh truy vấn
                $tinh_nguyen_vien = mysqli_query($ket_noi, $sql);
            //5. Hiện thị thông báo thêm mới thành công và đẩy các bạn về trang quản trị tin tức
                echo "
                    <script type='text/javascript'>
                        window.alert('Bạn đã cập nhật thông tin mới thành công');
                    </script>
                ";
                echo "
                    <script type='text/javascript'>
                        window.location.href='quan_tri_tinh_nguyen_vien.php';
                    </script>
                ";
            ;?>
</body>
