<?php
//1. Load file cấu hình để kết nối đến máy chủ CSDL
                    include('../config.php');
                 	//2. Viết câu lệnh kiểm tra người dùng có tồn tại trong csdl hay k
                 	$email = $_POST["txtEmail"];
                 	$mat_khau = $_POST["txtMatKhau"];
                 	$sql = "
                 			SELECT * 
                 			from tbl_admin 
                 			where email = '".$email."' and mat_khau = '".$mat_khau."'
                 			";
                 	//3. Thực thi câu lệnh truy vấn
                 	$xac_thuc_nguoi_dung = mysqli_query($ket_noi, $sql);
                 	//4. Xử lý dữ liệu thu đc
                 	$so_luong_ban_ghi = mysqli_num_rows($xac_thuc_nguoi_dung);
                 	#TH1: số lượng bản ghi =0 -> đẩy về trang đăng nhập
                 	#TH2: số luọng bản ghi =1 -> đẩy sang trang qtht
                 	if($so_luong_ban_ghi==0)
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
                 	else
                 	{
                 		//Khởi tạo phiên làm việc cho ng đăng nhập thành công
                 		session_start();
                 		$_SESSION['da_dang_nhap'] =1;

                 		echo "
                    <script type='text/javascript'>
                        window.alert('Bạn đã đăng nhập thành công');
                    </script>
                ";
                echo "
                    <script type='text/javascript'>
                        window.location.href='index.php';
                    </script>
                ";
                 	}
;?>