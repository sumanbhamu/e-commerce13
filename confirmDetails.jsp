<%-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="content">
		<fieldset>
			<legend>Confirm Details</legend>
			<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			<a href="${flowExecutionUrl}&_eventId_home">Home</a><br /> <br />
			<form:form commandName="us">
				<form:label path="name"> User Name:</form:label>${us.username}
					<br />
				<br />
				<form:label path="password">Password :</form:label>${us.password}
					<br />


				<form:label path="mail">Email:</form:label>${us.emailid}
</form:form> --%>