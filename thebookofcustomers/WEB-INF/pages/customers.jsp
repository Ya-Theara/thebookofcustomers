<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
		<title>The Book Of Customers</title>
		<link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="<c:url value="/resources/js/jquery-3.2.1.min.js"/>" type="text/javascript"></script>
		<script src="<c:url value="/resources/js/main.js"/>" type="text/javascript"></script>
	</head>
	<body>
		<div class="modal">
			<div class="modal-content">
				<form class="modal-content" action="" method="post">
					<h2>{ Add Customer }</h2>
					<div class="field">
						<input style="display:none;" type="number" name="id" value="0" readonly>
					</div>
					<div class="field">
						<input type="text" id="name" name="name" pattern="[a-zA-Z]{2,}([ ][a-zA-Z]+)*" required>
						<label for="name">Name</label>
					</div>
					<div class="field">
						<input type="email" id="email" name="email" required>
						<label for="email">Email</label>
					</div>
					<div class="field">
						<input type="tel" id="phone" name="phone" pattern="(\d{3}-){2}\d{4}" title="US format: ###-###-####" required>
						<label for="phone">Phone</label>
					</div>
					<div class="field">
						<input type="text" id="street" name="street" pattern="\d+[ ]\w+[ ]\w+[.]?" title="{street number} {street name} {street suffix}" required>
						<label for="street">Street</label>
					</div>
					<div class="field">
						<input type="text" id="city" name="city" pattern="[a-zA-Z]{2,}([ ][a-zA-Z]+)*" required>
						<label for="city">City</label>
					</div>
					<div class="field">
						<input type="text" id="state" name="state" pattern="[a-zA-Z]{2}" title="2 character abbreviation" required>
						<label for="state">State</label>
					</div>
					<div class="field">
						<input type="text" id="zip" name="zip" pattern="\d{5}" title="5-digit code" required>
						<label for="zip">Zip Code</label>
					</div>
					<input type="submit" value="Submit">
				</form>
			</div>
		</div>
		<h1>The Book of Customers</h1>
		
		<table>
			<thead>
				<tr>
					<td><a class="add" href="">Add New Customer</a></td>
				</tr>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Email</th>
					<th>Phone</th>
					<th>Street</th>
					<th>City</th>
					<th>State</th>
					<th>Zip</th>
					<th colspan="2">Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="customer" items="${list}">
					<tr>
						<td class="data">${customer.id}</td>
						<td class="data">${customer.name}</td>
						<td class="data">${customer.email}</td>
						<td class="data">${customer.phone}</td>
						<td class="data">${customer.address.street}</td>
						<td class="data">${customer.address.city}</td>
						<td class="data">${customer.address.state}</td>
						<td class="data">${customer.address.zip}</td>
						<td><a class="update" href="">Update</a></td>
						<td><a href="delcustomer/${customer.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>