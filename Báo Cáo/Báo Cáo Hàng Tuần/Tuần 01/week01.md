I. Giới thiệu hệ thống
1. Mục tiêu của hệ thống
Hệ thống được xây dựng nhằm hỗ trợ quản lý kho và sản phẩm cho cửa hàng điện thoại, giúp việc theo dõi hàng hóa, nhập – xuất linh kiện và thiết bị, quản lý nhân viên, phân quyền và báo cáo thống kê trở nên dễ dàng, chính xác và hiệu quả hơn.
Trước đây, các quy trình quản lý kho tại cửa hàng điện thoại thường được thực hiện thủ công bằng giấy tờ hoặc bảng tính Excel, dẫn đến:
- Dữ liệu dễ sai lệch hoặc thất lạc.
- Khó kiểm soát tình trạng hàng tồn, hàng nhập, hàng bán.
- Mất nhiều thời gian khi tổng hợp báo cáo hoặc tra cứu thông tin sản phẩm.
Ứng dụng web được phát triển nhằm số hóa toàn bộ quy trình quản lý kho, giúp chủ cửa hàng và nhân viên quản lý nhanh chóng, chính xác và tiết kiệm thời gian, đồng thời hỗ trợ truy cập mọi lúc, mọi nơi thông qua trình duyệt web.

II. Yêu cầu người dùng
1. Người dùng chính
Admin (Quản trị viên): người quản lý tổng thể hệ thống.
Employee (Nhân viên): người thực hiện nhập – xuất kho, cập nhật sản phẩm trong phạm vi quyền được giao.

3. Mô tả yêu cầu người dùng
1. Admin (Quản trị viên)
Quản lý người dùng và phân quyền: Kiểm soát quyền truy cập, đảm bảo an toàn cho hệ thống.
Quản lý sản phẩm và danh mục: Cập nhật, chỉnh sửa thông tin sản phẩm (điện thoại, phụ kiện,...).
Theo dõi hoạt động nhập – xuất kho: Giám sát tình trạng hàng hóa và quá trình luân chuyển trong kho.
Xuất báo cáo thống kê: Tổng hợp dữ liệu, phục vụ cho việc phân tích và ra quyết định quản trị.

3. Employee (Nhân viên)
Quản lý sản phẩm trong phạm vi cho phép: Cập nhật, chỉnh sửa thông tin sản phẩm theo quyền hạn được giao.
Quản lý kho: Thực hiện các thao tác nhập, xuất và kiểm kê hàng hóa theo phân công.

III. Yêu cầu hệ thống
1. Yêu cầu chức năng (Functional Requirements)
Hệ thống phải thực hiện được các chức năng sau:
 Đối với Admin
Hệ thống phải cho phép Admin đăng nhập bằng tài khoản hợp lệ.
Hệ thống phải cho phép Admin quản lý người dùng (thêm, sửa, xóa).
Hệ thống phải cho phép Admin phân quyền cho từng tài khoản.
Hệ thống phải cho phép Admin quản lý danh mục sản phẩm (thêm, sửa, xóa category).
Hệ thống phải cho phép Admin quản lý thông tin sản phẩm (mã sản phẩm, tên, giá, mô tả, hình ảnh, số lượng tồn).
Hệ thống phải cho phép Admin theo dõi nhập – xuất kho, cập nhật số lượng tồn tự động.
Hệ thống phải cho phép Admin tạo và xuất báo cáo (hàng tồn, hàng nhập/xuất, doanh thu, người thực hiện,...).

  Đối với Employee
Hệ thống phải cho phép Employee đăng nhập với quyền hạn được cấp.
Hệ thống phải cho phép Employee xem và chỉnh sửa sản phẩm nếu có quyền.
Hệ thống phải cho phép Employee nhập hoặc xuất hàng hóa trong phạm vi phân quyền.
Hệ thống phải cập nhật số lượng tồn kho sau mỗi hoạt động nhập/xuất.
