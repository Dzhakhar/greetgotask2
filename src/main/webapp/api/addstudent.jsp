<jsp:useBean id="Student" class="dbmanage.StudentInsert"/>
<% Student.insert(request.getParameter("name"), request.getParameter("surname"), request.getParameter("email")); %>