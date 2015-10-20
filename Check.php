<?php
If (isset($_POST['user'], $_POST['pass'])) {
    If ($_POST['user'] == '') {
        Echo 'Chưa nhập tài khoản';
    }
    ElseIf ($_POST['pass'] == ''){
        Echo 'Chưa nhập mật khẩu';
    }
    Else {
        $Host = 'localhost';
        $User = 'root';
        $Pass = '';
        $MyDB = 'dblogin';
        $_POST['user'] = strip_tags($_POST['user']);
        $_POST['user'] = addslashes($_POST['user']);
        $_POST['pass'] = strip_tags($_POST['pass']);
        $_POST['pass'] = addslashes($_POST['pass']);
        $con=mysqli_connect($Host,$User,$Pass,$MyDB);
        If (mysqli_connect_errno())
        {
          Echo 'Lỗi kết nối đến cơ sở dữ liệu';
        }
        $Query = Mysqli_Query($con,"SELECT username,password FROM members WHERE username='" . $_POST['user'] . "' and password='" . md5($_POST['pass']). "'");
        If (mysqli_num_rows($Query) == 0) {
            Echo 'Tài khoản hoặc mật khẩu không đúng';
        }
        Else {
            Echo 'Đăng nhập thành công';
        }
        mysqli_close($con);
    }
}
Else {
    Echo 'Không nhận được dữ liệu';
}
?>
