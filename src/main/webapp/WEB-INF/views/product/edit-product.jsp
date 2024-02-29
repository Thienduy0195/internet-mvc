<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update service</title>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/create-product.css" />"
	rel="stylesheet">
</head>
<body style="background-color: #121212;">

	<%@ include file="../commons/header.jsp"%>

	<div class="container-fluid d-flex justify-content-center">
		<div class="login-form">
			<h3 class="text-center text-white">UPDATE SERVICE</h3>
			<form:form
				action="${pageContext.request.contextPath}/product/${product.productId}"
				method="post" modelAttribute="product">
				<div class="row my-4">
					<div class="hidden">
						<form:input path="productId" type="text"
							class="form-control input" id="full-name" placeholder="Họ và tên"
							autocomplete="off" value="${product.productId}" />
					</div>
					<div class="col-md-6" style="padding-right: 15px">
						<div class="form-floating textbox mb-4">

							<form:input path="productName" type="text"
								class="form-control input" id="full-name"
								placeholder="Họ và tên" autocomplete="off"
								value="${product.productName}" />
							<label for="full-name" style="color: white"> Service name
								<span class="text-danger">*</span>
							</label>
							<form:errors path="productName" cssClass="text-danger" />
						</div>
					</div>
					<div class="col-md-6" style="padding-right: 15px">
						<div class="form-floating textbox mb-4">
							<form:input path="price" type="text" class="form-control input"
								id="address" placeholder="Họ và tên" autocomplete="off"
								value="${product.price}" />
							<label for="date-of-birth" style="color: white"> Price <span
								class="text-danger">*</span>
							</label>
							<form:errors path="price" cssClass="text-danger" />
						</div>
					</div>
				</div>
				<div class="row my-4">
					<div class="col-md-6" style="padding-right: 15px">
						<div class="form-floating textbox mb-4">
							<form:input path="unit" type="text" class="form-control input"
								id="unit" placeholder="example@gmail.com" autocomplete="off"
								value="${product.unit}" />
							<label for="unit" style="color: white"> Unit <span
								class="text-danger">*</span>
							</label>
							<form:errors path="unit" cssClass="text-danger" />
						</div>
					</div>
					<div class="col-md-6 " style="padding-right: 15px">
						<div class="form-floating textbox mb-4">
							<form:input path="image" type="text" class="form-control input"
								id="image" placeholder="Họ và tên" autocomplete="off"
								value="${product.image}" />

							<label for="image" style="color: white"> Image url <span
								class="text-danger">*</span>
							</label>
							
							<form:errors path="image" cssClass="text-danger" />
						</div>
					</div>
				</div>

				<div class="row my-4">
					<div class="col-md-4 my-4"></div>
					<div class="col-md-4" style="text-align: center; width: 100%">
						<button name="button" class="btn btn-primary btn-responsive w-25"
							style="height: 40px">Update</button>

						<a href="${pageContext.request.contextPath}/product/list">
							<button
								class="btn btn-outline-light btn-responsive
        w-25 ms-3"
								style="height: 40px">Cancel</button>
						</a>

					</div>
					<div class="col-md-4"></div>
				</div>
			</form:form>
		</div>
	</div>

	<%@ include file="../commons/footer.jsp"%>
</body>


</html>