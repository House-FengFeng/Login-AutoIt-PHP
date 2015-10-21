# Hướng dẫn sử dụng mã nguồn:

##**Mục Lục:**
- [Mục đích của bộ mã nguồn](https://github.com/House-FengFeng/Login-AutoIt-PHP/#m%E1%BB%A5c-%C4%91%C3%ADch)
- [Kiến thức cần thiết để sử dụng](https://github.com/House-FengFeng/Login-AutoIt-PHP/#ki%E1%BA%BFn-th%E1%BB%A9c-c%E1%BA%A7n-thi%E1%BA%BFt)
- [Hướng dẫn sử dụng](https://github.com/House-FengFeng/Login-AutoIt-PHP#h%C6%B0%E1%BB%9Bng-d%E1%BA%ABn-s%E1%BB%AD-d%E1%BB%A5ng)
- [Tác giả](https://github.com/House-FengFeng/Login-AutoIt-PHP/#t%C3%A1c-gi%E1%BA%A3-zhu-jin-feng)

####**Mục đích:**
- Mình tạo ra mã nguồn tích hợp PHP và AutoIt đơn giản hóa chức năng đăng nhập cho các bạn viết code login đăng nhập đỡ vất vả, mà việc bảo vệ thông tin sẽ bảo mật hơn khi bạn chỉ sử dụng cách thô sơ là ghi file và cũng sẽ khó khăn hơn đối với bạn nào mới tập tành code.

####**Kiến thức cần thiết:**
<ul>
  <li>Biết sử dụng LocalHost (Không cần thiết nếu bạn biết xài host hoặc server), MySQL</li>
  <li>Biết thế nào phương thức get và post, cậu lệnh if...else...elseif...else, echo, và một số kiến thức lặt vặt khác</li>
  <li>Biết được cách sử dụng các lệnh đơn giản trong SQL (Select, Update,...)</li>
  <li>Biết tạo database, table, import data</li>
  <li>Còn về phần AutoIT các bạn có thể tự tìm hiểu tiếp</li>
</ul>

####**Hướng dẫn sử dụng:**
- Bộ mã nguồn này bao gồm:
<ul>
  <li>Client.au3</li>
  <li>Check.php</li>
  <li>Dblogin.sql</li>
</ul>

- Sau khi đã down về, nếu sử dụng localhost, các bạn có thể giữ nguyên thông tin đã được config sẵn và test. Nhưng nếu bạn sử dụng host, server thì phải chỉnh sửa lại thông tin trong file check.php.
- Nếu bạn đã chỉnh sửa những name thì config lại trong check.php (VD: tên database, tên table, hoặc tên các row con).

####**Tác giả:** Zhu Jin Feng
