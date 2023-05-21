<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Admin | View Schedule Of Charges</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/materialdesignicons.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/vendor.bundle.base.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/dataTables.bootstrap4.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="<%=request.getContextPath()%>/adminResources/image/favicon.png" />
</head>

<body class="sidebar-light">
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->

		<jsp:include page="header.jsp"></jsp:include>

		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->

			<jsp:include page="menu.jsp"></jsp:include>

			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="card">
						<div class="card-header"
									style="background: linear-gradient(94deg, #5e2572, transparent);">
									<h4 class="text-white m-0">View Schedule Of Charges</h4>
								</div>
						<div class="card-body">
							
							<div class="row">
								<div class="col-12">
									<div class="table-responsive">
										<table id="order-listing" class="table">
											<thead>
											<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
												<tr>
													<th>No.</th>
													<th>Account Type</th>
													<th>Interest Rate</th>
													<th>Amount Range</th>
													<th>Debit Card Charge</th>
													<th>SMS charge</th>
													<th>Same Bank Free Transactions</th>
													<th>Same Bank Service Transaction</th>
													<th>Other Bank Free Transactions</th>
													<th>Other Bank Service Transaction</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach var="i" items="${searchScheduleOfChargesList}" varStatus="j">
												<tr>
													<td>${j.count}</td>
													<td>${i.accountTypeVO.accountType}</td>
													<td>${i.interestRate}</td>
													<td>${i.amountRange}</td>
													<td>${i.debitCardCharge}</td>
													<td>${i.smsCharge}</td>
													<td>${i.sameBankFreeTransaction}</td>
													<td>${i.sameBankServiceTransaction}</td>
													<td>${i.otherBankFreeTransaction}</td>
													<td>${i.otherBankServiceTransaction}</td>
													<td>
														<a href="editScheduleOfCharges?id=${i.scheduleOfChargesId}">
															<i class="mdi mdi-pencil lead"></i>
														</a>
														<a href="deleteScheduleOfCharges?id=${i.scheduleOfChargesId}">
															<i class="mdi mdi-delete lead text-danger ml-3"></i>
														</a>
													</td>
												</tr>		
											</c:forEach>								
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:../../partials/_footer.html -->

				<jsp:include page="footer.jsp"></jsp:include>

				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery.dataTables.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/dataTables.bootstrap4.js"></script>
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/off-canvas.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/hoverable-collapse.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/template.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/settings.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script src="<%=request.getContextPath()%>/adminResources/js/data-table.js"></script>
	<!-- End custom js for this page-->
</body>

</html>