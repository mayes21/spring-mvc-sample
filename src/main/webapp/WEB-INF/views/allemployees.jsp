<%--
  User: amabb
  Date: 02/02/16
  Time: 11:34
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link href="<c:url value="/resources/css/bootstrap/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/select2/select2.min.css" />" rel="stylesheet">



    <title>University Enrollments</title>

</head>


<body>
<h2>List of Employees</h2>
<table class="table table-striped table-hover">
    <tr>
        <td><i class="glyphicon glyphicon-user"></i> NAME</td>
        <td>Joining Date</td>
        <td>Salary</td>
        <td>SSN</td>
        <td></td>
    </tr>
    <c:forEach items="${employees}" var="employee">
        <tr>
            <td>${employee.name}</td>
            <td>${employee.joiningDate}</td>
            <td>${employee.salary}</td>
            <td><a href="<c:url value='/edit-${employee.ssn}-employee' />">${employee.ssn}</a></td>
            <td><a href="<c:url value='/delete-${employee.ssn}-employee' />">delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/>
<a href="<c:url value='/new' />">Add New Employee</a>

<br>

<select class="js-example-basic-single">
    <c:forEach items="${employees}" var="employee">
    <option value="${employee.ssn}">${employee.name}</option>
    </c:forEach>
</select>


<script type="application/javascript" src="<c:url value="/resources/js/lib/jquery-1.12.0.min.js" />" ></script>
<script type="application/javascript" src="<c:url value="/resources/js/select2/select2.full.min.js" />" ></script>

<script type="application/javascript">
    $(document).ready(function() {
        $(".js-example-basic-single").select2();
    });
</script>

</body>
</html>
