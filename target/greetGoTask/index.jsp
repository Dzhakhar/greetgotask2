<html>

	<jsp:include page="/header.jsp" />

	<body>

		<div class="container messages">
			<div class="alert alert-danger">
				<a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
			<strong>Error!</strong> Something went wrong.
			</div>
			<div class="alert alert-success">
				<a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>
			<strong>Success!</strong> Successfully added a row to the database.
			</div>
			</div>

			<div class="first_section container">
			<form role="form" id="addStudent">
				<div class="form-group">
				<label for="name">
					Name
				<input type="text" id="au_name" class="form-control"/>
				</label>
				<label for="name">
					Surname
				<input type="text" id="au_surname" class="form-control"/>
				</label>
				<label for="Email">
					Email
				<input type="email" id="au_email" class="form-control"/>
				</label>
				<input type="submit" class="btn btn-primary" value="Add student">
				</div>
			</form>
			</div>
			<div class="container">
				<table class="table table-hover table-bordered">
					<thead>
						<tr>
						<th>Name</th>
						<th>Surname</th>
						<th>Email</th>
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>

		<!--<form action="/greetGoTask/signin/" method="POST">
			<input type="text" name="username" required placeholder="username">
			<input type="password" name="password" required placeholder="password">
			<input type="submit" value="Sign in">
		</form>-->

		<jsp:include page="/footer.jsp" />

	</body>
</html>
