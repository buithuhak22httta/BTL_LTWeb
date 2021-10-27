<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Thêm mới ủng hộ</title>
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
            $sotien = $_POST["txtSotien"];
            $ngay = $_POST["txtNgay"];
            $su_kien= (int)$_POST["txtSukien"];
            $ck = $_POST["optionsRadios"];

            $noi_dat_file_anh_xn = "img/anhxn/".basename($_FILES["txtAnh"]["name"]);
            $file_anh_tam = $_FILES["txtAnh"]["tmp_name"];
            $ket_qua_up_anh = move_uploaded_file($file_anh_tam, $noi_dat_file_anh_xn);
            if(!$ket_qua_up_anh) {
                $anh = NULL;
            }
            else {
                $anh = basename($_FILES["txtAnh"]["name"]);
            }
            //3. Viết câu lệnh truy vấn thêm mới dữ liệu vào bảng tin tức trong CSDL
            $sql1 = "
                    INSERT INTO `tbl_ung_ho_tien` (`id_ung_ho`, `time`, `ten`, `dien_thoai`, `email`, `so_tien`, `anh_xac_nhan`, `trang_thai`, `id_su_kien`) VALUES (NULL, '".$ngay."', '".$ten."', '".$sdt."', '".$email."', '".$sotien."', 'img/anhxn/".$anh."', '".$ck."', '".$su_kien."');
                    ";
            //4. Thực thi câu lệnh truy vấn
                $thuc_thi1 = mysqli_query($ket_noi, $sql1);
            //5. Hiện thị thông báo thêm mới thành công và đẩy các bạn về trang quản trị tin tức
                echo "
                    <script type='text/javascript'>
                        window.alert('Cảm ơn bạn đã ủng hộ, kiểm tra tin nhắn hoặc email. Chúng tôi sẽ xác nhận lại khi nhận được!');
                    </script>
                ";
                echo "
                    <script type='text/javascript'>
                        window.location.href='donate.php';
                    </script>
                ";
               
            ;?>
</body>

