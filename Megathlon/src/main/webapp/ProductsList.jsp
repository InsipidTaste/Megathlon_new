<%@page import="java.util.ArrayList"%>

<%@page import="com.Megathlon.Beans.Product"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Product</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<script src="https://kit.fontawesome.com/52adbacfd8.js"
	crossorigin="anonymous"></script>
<!-- Theme style -->
<link rel="stylesheet" href="css/adminlte.min.css">
</head>

<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<%@include file="../inc/NavBar.jsp"%>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>Products</h1>
						</div>
					</div>
					<div class="row mb-2 justify-content-end">
						<div class="col-sm-6 m">
							<a href="/Megathlon/CreateProduct"
								class="btn btn-primary float-right">Add Product</a>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->


			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<!-- left column -->
						<div class="col-md-12">
							<!-- general form elements -->
							<div class="card card-primary">
								<div class="card-header">
									<h3 class="card-title">Products</h3>
								</div>
								<!-- /.card-header -->
								<!-- form start -->
								<div>
									<table class="table">
										<thead class="thead-light">
											<tr>
												<th scope="col" style="width: fit-content">No</th>
												<th scope="col">Product Name</th>
												<th scope="col">Description</th>
												<th scope="col">Price</th>
												<th scope="col">Quantity</th>
												<th scope="col">Brand</th>
												<th scope="col">Supplier</th>
												<th scope="col" style="width: fit-content">Action</th>
											</tr>
										</thead>
										<tbody>
											<%
											ArrayList<Product> ProductList = (ArrayList<Product>) request.getAttribute("ProductList");

											for (int i = 0; i < ProductList.size(); ++i) {
											%>

											<tr>
												<th scope="row"><%=i + 1%>.</th>
												<td><%=ProductList.get(i).getProductName()%></td>
												<td><%=ProductList.get(i).getDescription()%></td>
												<td><%=ProductList.get(i).getPrice()%></td>
												<td><%=ProductList.get(i).getQuantity()%></td>
												<td><%=ProductList.get(i).getBrand()%></td>
												<td><%=ProductList.get(i).getSupplier()%></td>
												<td><a
													href="/Megathlon/ProductEdit?productID=<%=ProductList.get(i).getProductID()%>"
													class="btn btn-primary btn-lg btn-block btn-sm m-1">Edit</a>
													<form method="POST" action="/Megathlon/ProductList">
														<input type="hidden" name="productID"
															value="<%=ProductList.get(i).getProductID()%>">
														<button type="submit"
															class="btn btn-danger btn-lg btn-block btn-sm m-1">Delete</button>
													</form></td>
											</tr>

											<%
											}
											%>
										</tbody>
									</table>
								</div>
							</div>
							<!-- /.card -->
						</div>
						<!-- /.card-body -->
					</div>
					<!-- /.card -->
				</div>
				<!--/.col (right) -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="float-right d-none d-sm-block">
				<b>Version</b> 3.2.0
			</div>
			<strong>Copyright &copy; 2014-2021 <a
				href="https://adminlte.io">Megathlon</a>.
			</strong> All rights reserved.
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="js/bootstrap.bundle.min.js"></script>
	<!-- bs-custom-file-input -->
	<!-- <script src="js/bs-custom-file-input.min.js"></script> -->
	<!-- AdminLTE App -->
	<script src="js/adminlte.min.js"></script>

	<!-- Page specific script -->
	<script>
		$(function() {
			bsCustomFileInput.init();
		});
	</script>
</body>

</html>