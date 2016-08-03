<html>

	<jsp:include page="../header.jsp" />

	<body>
		<jsp:useBean id="User" class="beans.User"/>
		<% if(User.login(request, response)){ %>
		<b>Successfully logged in</b>
		<% } else { %>
		<b> incorrect username or password </b>
		<% } %>
    <jsp:include page="../footer.jsp" />

	</body>
</html>
