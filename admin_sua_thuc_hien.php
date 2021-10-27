
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
  <title>Cập nhật admin</title>
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
            include('../config.php');

            $id_admin = $_POST["txtID"];
            $ten = $_POST["txtTen"];
            $email = $_POST["txtEmail"];
            $sdt = $_POST["txtDienThoai"];
            $dia_chi = $_POST["txtDiaChi"];
            $noi_dat_file_anh_minh_hoa = "../img/".basename($_FILES["txtAnh"]["name"]);
            $file_anh_tam = $_FILES["txtAnh"]["tmp_name"];
            $ket_qua_up_anh = move_uploaded_file($file_anh_tam, $noi_dat_file_anh_minh_hoa);
            if(!$ket_qua_up_anh) {
                $anh = NULL;
            }
            else {
                $anh = basename($_FILES["txtAnh"]["name"]);
            }

            //3. Viết câu lệnh truy vấn sửa dữ liệu vào bảng tin tức trong CSDL
            if($anh == NULL){
                $sql = "
                    UPDATE `tbl_admin` 
                    SET `ten` = '".$ten."', `email` = '".$email."', `sdt` = '".$sdt."', `dia_chi` = '".$dia_chi."'
                    WHERE `tbl_admin`.`id_admin` = '".$id_admin."'
                    ";
            }

            else {
                $sql = "
                    UPDATE `tbl_admin` 
                    SET `ten` = '".$ten."', `email` = '".$email."', `sdt` = '".$sdt."', `dia_chi` = '".$dia_chi."'
                    ,  `image` = 'img/".$anh."'
                    WHERE `tbl_admin`.`id_admin` = '".$id_admin."'
                    ";
            }

                $noi_dung_admin = mysqli_query($ket_noi, $sql);

                echo "
                    <script type='text/javascript'>
                        window.alert('Bạn đã cập nhật admin thành công');
                    </script>
                ";
                echo "
                    <script type='text/javascript'>
                        window.location.href='quan_tri_admin.php';
                    </script>
                ";
            ;?>
</body>