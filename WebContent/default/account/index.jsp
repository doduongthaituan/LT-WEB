<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("utf-8");
String context = request.getContextPath();
String url = context + "/default/account";
%>

<!doctype html>
<html lang="en">
<head>
<jsp:include page="../head.jsp" />
<link rel="stylesheet" href="<%=url%>/index.css" />
<title>Tài khoản - Shoplane</title>
</head>
<body>
	<div id="app">
		<jsp:include page="../header/header.jsp" />
		<main class="main">
			<div class="container">
				<div class="your__container">
					<div class="your__orders">
						<h1 class="your__order-heading">ĐƠN HÀNG CỦA BẠN</h1>
						<div class="your__order-table">
							<div class="your__order-table-head">
								<span class="your__order-title">Mã đơn hàng</span> <span
									class="your__order-title">Ngày đặt</span> <span
									class="your__order-title">Trạng thái thanh toán</span> <span
									class="your__order-title">Trạng thái vận chuyển</span> <span
									class="your__order-title">Tổng tiền</span>
							</div>
							<div class="your__order-table-body">
								<c:forEach var="item" items="${bills}" >
								<div class="your__order-table-item">
									<a class="your__order-value" href="./my-orders.jsp">${item.getBillId()}</a>
									<span class="your__order-value">01/09/2022</span> <span
										class="your__order-value">Chưa hoàn tất</span> <span
										class="your__order-value">Đang vận chuyển</span> <span
										class="your__order-value">${item.getTotalPrice()}đ</span>
								</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="your__info">
						<h1 class="your__info-heading">TÀI KHOẢN CỦA BẠN</h1>
						<div class="your__info-list">
							<div class="infor-item">
								<span>Họ và tên:</span> <span>${sessionScope.user.getFullname()}</span>
							</div>
							<div class="infor-item">
								<span>Địa chỉ:</span> <span>${sessionScope.user.getAddress()}</span>
							</div>
							<div class="infor-item">
								<span>Email:</span> <span>${sessionScope.user.getEmail()}</span>
							</div>
							<div class="infor-item">
								<span>Điện thoại:</span> <span>${sessionScope.user.getPhonenumber()}</span>
							</div>
						</div>
						<div class="your__info-action">
							<a class="btn-submit" type="submit" name="modify-button"
								href="<%=context %>/account/modify">Chỉnh
								sửa thông tin</a> <a class="btn-submit"
								href="<%=context %>/login">Đăng xuất</a>
						</div>
					</div>
				</div>
			</div>
		</main>
		<jsp:include page="../footer/footer.jsp" />
	</div>
	<jsp:include page="../script.jsp" />
</body>
</html>

