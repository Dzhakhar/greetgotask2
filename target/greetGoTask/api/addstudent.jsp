<jsp:useBean id="Student" class="dbmanage.StudentInsert"/>
<% String name = request.getParameter("name"); %>
<% String surname = request.getParameter("surname"); %>
<% String email = request.getParameter("email"); %>
<%= name %>
<%-- Student.insert(); --%>