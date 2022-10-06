<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="tags" tagdir="/WEB-INF/tags"%>


<head>
<style>
.main {
	padding-top: 6rem;
}

.login-form, .register-form, .modify-form {
	margin: 100px auto;
	padding: 30px 30px 10px;
	color: rgba(0, 0, 0, 0.6);
	width: 40rem;
	border: 0.5px solid #ddd;
	border-radius: 0.4rem;
}

.modify-form {
	padding-bottom: 30px;
}

.login-header, .register-header, .modify-header {
	font-style: normal;
	font-weight: 600;
	margin-bottom: 2rem;
}

.modify-header {
	font-size: 1.2rem;
}

.form-control {
	margin-bottom: 20px;
	outline: none;
	padding: 1rem 1.5rem;
	border-radius: 0.4rem;
	border: 1px solid #ddd;
	display: block;
	width: 100%;
	font-size: 1.4rem;
}

.form-control:focus {
	outline: none !important;
	border-color: #719ECE;
	box-shadow: 0 0 10px #719ECE;
}

.btn-submit {
	display: block;
	width: 100%;
	outline: none;
	border: 0.5px solid #6c757d;
	padding: 1rem 0;
	border-radius: 0.4rem;
	cursor: pointer;
	font-size: 1.6rem;
	color: #6c757d;
	background-color: transparent;
	transition: all linear 0.2s;
}

.btn-submit:hover {
	color: #fff;
	background-color: #6c757d;
}

.no-account, .have-account {
	padding-top: 20px;
	font-size: 0.8rem;
}

.have-account>p, .have-account>p>a {
	font-size: 1.4rem;
}

.register-text, .signin-text {
	text-decoration: none;
	color: #FF0000;
}

.register-text:hover {
	color: #000000;
}

.signin-text:hover {
	color: #000000;
}

@media ( max-width : 768px) {
	.login-header, .register-header, .modify-header {
		font-size: 1rem;
	}
}
</style>
</head>

<%
request.setCharacterEncoding("utf-8");
%>

<tags:base title="Đăng nhập tài khoản - SHOPLANE"
	css="../../assets/css/index.css">
	<jsp:include page="../header.jsp" />
	<main class="main">
		<div class="container">
			<section id="register">
				<div class="border border-1 rounded register-form">

					<form action="register" method="POST">
						<h1 class="register-header">ĐĂNG KÝ</h1>
						<input class="form-control" type="text" name="fullName"
							placeholder="Họ và tên" required> <input
							class="form-control" type="text" name="phonenumber"
							placeholder="Số điện thoại" required> <input
							class="form-control" type="text" name="address"
							placeholder="Địa chỉ" required> <input
							class="form-control" type="email" name="email"
							placeholder="Email"> <input class="form-control"
							type="password" name="password" placeholder="Password">

						<button class="btn-submit" type="submit" name="registerButton">Đăng
							ký</button>

						<div class="have-account">
							<p>
								Đã có tài khoản?<a class="signin-text" href="./login.jsp">
									Đăng nhập</a>
							</p>
						</div>

					</form>

				</div>

			</section>
		</div>
		<jsp:include page="../footer.jsp" />

	</main>
</tags:base>