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
$idadmin=$_SESSION['id'];
;?>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Cập nhật ủng hộ</title>
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
            $id = $_POST["txtId"];
            $ten = $_POST["txtTen"];
            $sdt = $_POST["txtSdt"];
            $email = $_POST["txtEmail"];
            $time = $_POST["txtTime"];
            $tien = (int)$_POST["txtTien"];
            $trang_thai = $_POST["txtTrangthai"];
            $su_kien = (int)$_POST["txtIdSukien"];
            $anh = $_POST["txtAnh"];        
            //3. Viết câu lệnh truy vấn sửa dữ liệu vào bảng tin tức trong CSDL
                $sql = "
                    INSERT INTO `tbl_ung_ho_da_xn` (`id_xn`, `time`, `ten`, `dien_thoai`, `email`, `so_tien`, `anh_xac_nhan`, `trang_thai`, `id_su_kien`,`id_admin`
                     ) VALUES (NULL, '".$time."', '".$ten."', '".$sdt."', '".$email."', '".$tien."', '".$anh."', '".$trang_thai."', ".$su_kien.", ".$idadmin.");
                    ";
                    //print $sql; exit();
                $del = "
                        DELETE FROM `tbl_ung_ho_tien` where `tbl_ung_ho_tien`.`id_ung_ho` = '".$id."'
                        ";
            //4. Thực thi câu lệnh truy vấn
                $noi_dung_uh = mysqli_query($ket_noi, $sql);
                $xoa = mysqli_query($ket_noi, $del);
            //5. Hiện thị thông báo thêm mới thành công và đẩy các bạn về trang quản trị tin tức
                echo "
                    <script type='text/javascript'>
                        window.alert('Bạn đã cập nhật thành công');
                    </script>
                ";
                echo "
                    <script type='text/javascript'>
                        window.location.href='quan_tri_ung_ho_tien.php';
                    </script>
                ";
            ;?>
</body>
