<!DOCTYPE html>
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
</head>
<body>
    <?php
            //1. Kết nối đến máy chủ dữ liệu & CSDL mà các bạn muốn lấy, thêm mới, sửa, xóa
            include('../config.php');

            //2. Lấy dữ liệu
            $id_blog = $_POST["txtID"];
            $ten = $_POST["txtTen"];
            $noi_dung = $_POST["txtNoiDung"];
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
                    UPDATE `tbl_blog` 
                    SET `ten` = '".$ten." ', `noi_dung` = '".$noi_dung."'
                    WHERE `tbl_blog`.`id_blog` = '".$id_blog."'
                    ";
            }

            else {

                 $sql = "
                    UPDATE `tbl_blog` 
                    SET `ten` = '".$ten." ', `noi_dung` = '".$noi_dung."' , `anh_minh_hoa` = 'img/".$anh."'
                    WHERE `tbl_blog`.`id_blog` = '".$id_blog."'
                    ";
               
            }
            //4. Thực thi câu lệnh truy vấn
                $noi_dung_blog = mysqli_query($ket_noi, $sql);
            //5. Hiện thị thông báo thêm mới thành công và đẩy các bạn về trang quản trị tin tức
                echo "
                    <script type='text/javascript'>
                        window.alert('Bạn đã cập nhật blog thành công');
                    </script>
                ";
                echo "
                    <script type='text/javascript'>
                        window.location.href='quan_tri_blog.php';
                    </script>
                ";
            ;?>
</body>
