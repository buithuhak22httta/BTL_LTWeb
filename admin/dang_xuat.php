 <?php 
 	session_destroy();
 	 echo "
                    <script type='text/javascript'>
                        window.alert('Bạn đã đăng xuất thành công');
                    </script>
                ";
                echo "
                    <script type='text/javascript'>
                        window.location.href='dang_nhap.php';
                    </script>
                ";
 ?>