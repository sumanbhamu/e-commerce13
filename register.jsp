<%@include file="header.jsp"%>

<html>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<head>
    <title>Spring MVC Form Handling</title>
</head>
<style>
body {
	background-image: url("resources/images/aaa.jpg");
	
}
td {
	font-size: 20px;
}


</style>
<body>
<center>
<h2>Registration</h2>
<form:form method="POST" action="addus" commandName ="user">    
   <table>
    <tr>
        <td><form:label path="username">Name</form:label></td>
        <td><form:input path="username" /></td>
    </tr>
     <tr>
    
    <td><form:label path="emailid">Email id</form:label></td>
        <td><form:input path="emailid" /></td>
    </tr>
   
   
    <tr>
        <td><form:label path="password">Password</form:label></td>
        <td><form:input path="password" /></td>
    </tr>
    <tr>
        <td><form:label path="confirmpassword">Confirm Password</form:label></td>
        <td><form:input path="confirmpassword" /></td>
    </tr>
    <tr>
    <td><form:label path="phno">Phone</form:label></td>
        <td><form:input path="phno" /></td>
    </tr>
    <tr>
    <td >
            <input type="submit" value="Submit"/>
        </td>
        <td colspan="2">
            <input type="reset" value="Cancel"/>
        </td>
    </tr>
</table>  
</form:form>
<br>
<img src="resources/images/pic20.jpg" width="1000" height="300"></img>

</center>
 
</body>
</html>


<%-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="C"%>
 --%><%--<html>
<head>
<title>Registration</title>
<style>
body {
	background: url('resources/images/regis.jpg');
	background-size: cover; /* to stretch image*/
	background-repeat: no-repeat;
}

table {
	margin-left: 750px;
	font-weight: bold;
}

tr {
	font-size: 20px;
}

td {
	font-size: 25;
	padding: 15px;
}
</style>

 --%>
<%-- 


<%@ include file="header.jsp"%>



<center>
	<h1>Registration</h1>
	<p>
		ALREADY REGISTERED? <a href="login">SIGN IN</a>
	</p>
	<a href="${flowExecutionUrl}&_eventId_home">Home</a>
	<form:form commandName="us">

		<table>
			<tr>
				<td>Name</td>
			</tr>
			<form:input type="text" path="username" />
			<!-- to display validation messages -->
			<c:forEach
				items="${flowRequestContext.messageContext.getMessagesBySource('username')}"
				var="err">
				<div>
					<span>${err.text}</span>
				</div>
			</c:forEach>
			<tr>
				<td>Email Id</td>
			</tr>
			<form:input type="email" path="emailid" />
			<!-- to display validation messages -->
			<c:forEach
				items="${flowRequestContext.messageContext.getMessagesBySource('emailid')}"
				var="err">
				<div>
					<span>${err.text}</span>
				</div>
			</c:forEach>



			<tr>
				<td>Enter Password</td>
			</tr>
			<form:input type="password" path="password" />
			<!-- to display validation messages -->
			<c:forEach
				items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
				var="err">
				<div>
					<span>${err.text}</span>
				</div>
			</c:forEach>

			<tr>
				<td>Enter Confirmed Password</td>
			</tr>
			<form:input type="password" path="confirmpassword" />
			<!-- to display validation messages -->
			<c:forEach
				items="${flowRequestContext.messageContext.getMessagesBySource('confirmpassword')}"
				var="err">
				<div>
					<span>${err.text}</span>
				</div>
			</c:forEach>


			<tr>
				<td>Phone no.</td>
			</tr>
			<form:input type="text" path="phno" />
			<!-- to display validation messages -->
			<c:forEach
				items="${flowRequestContext.messageContext.getMessagesBySource('phno')}"
				var="err">
				<div>
					<span>${err.text}</span>
				</div>
			</c:forEach>

			<tr>
				<td><input type="CHECKBOX" NAME="OFFER" CHECKED>I agree
					to receive information about exciting offers</td>
			</tr>
		</table>

		<br />
		<br />

		<div class="center">
			<input type="submit" name="_eventId_submit" value="submit">
		</div>

	</form:form>
</center>
<br />
<%@ include file="footer.jsp"%> --%>







