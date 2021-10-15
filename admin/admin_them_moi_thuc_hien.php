<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Thêm mới admin</title>
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

            $sql = "
                    INSERT INTO `tbl_admin` (`id_admin`, `ten`, `email`, `sdt`, `dia_chi`, `image`) VALUES (NULL, '".$ten."', '".$email."', '".$sdt."','".$dia_chi."', 'img/".$anh."');
                    ";

                $noi_dung_admin = mysqli_query($ket_noi, $sql);

                echo "
                    <script type='text/javascript'>
                        window.alert('Bạn đã thêm mới admin thành công');
                    </script>
                ";
                echo "
                    <script type='text/javascript'>
                        window.location.href='quan_tri_admin.php';
                    </script>
                ";
            ;?>
</body>