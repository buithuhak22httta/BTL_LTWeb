<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Thêm mới user</title>
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

            $id_chia_se = $_POST["txtID"];
            $ten = $_POST["txtTen"];
            $email = $_POST["txtEmail"];
            $nghe_nghiep = $_POST["txtNgheNghiep"];
            $loi_nhan = $_POST["txtLoiNhan"];

             $sql = "
                    INSERT INTO `tbl_chia_se_user` (`id_chia_se`, `ten`, `email`, `nghe_nghiep`, `loi_nhan`) VALUES (NULL, '".$ten."', '".$email."', '".$nghe_nghiep."','".$loi_nhan."');
                    ";

                    $noi_dung_chia_se = mysqli_query($ket_noi, $sql);

                echo "
                    <script type='text/javascript'>
                        window.alert('Bạn đã thêm mới user thành công');
                    </script>
                ";
                echo "
                    <script type='text/javascript'>
                        window.location.href='quan_tri_chia_se.php';
                    </script>
                ";
            ;?>
</body>