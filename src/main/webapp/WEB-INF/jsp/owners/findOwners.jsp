<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="en">

<jsp:include page="../fragments/headTag.jsp"/>
 
<!-- body style="background-repeat: no-repeat; background-size: cover; background-image: url(/petclinic/resources/images/accenture14.jpg)" -->
<body style="background-repeat: no-repeat; background-size: cover; background-image: url(/petclinic/resources/images/accenture9.jpg)">
<div class="container">
    <jsp:include page="../fragments/bodyHeader.jsp"/>
  
    <h2>Online Services</h2>
    
<p>&nbsp;</p>
 <spring:url value="/owners.html" var="formUrl"/>
    <form:form modelAttribute="owner" action="${fn:escapeXml(formUrl)}" method="post" class="form-horizontal"
               id="search-owner-form">
        <fieldset style="padding-left:100px;">
            <div class="control-group" id="userid">
                <label class="control-label">User ID </label>
                <form:input path="userid" size="30" maxlength="80"/>
                <span class="help-inline"><form:errors path="*"/></span>
            </div>
           
           
           	<div class="control-group" id="passwd">
                <label class="control-label">Password </label>
                <form:input path="passwd" size="30" maxlength="80" type="password"/>
                <span class="help-inline"><form:errors path="*"/></span>
            </div>
            
            <!-- div class="control-group" id="token">
                <label class="control-label">Token </label>
                <form:input path="token" size="30" maxlength="80" type="password"/>
                <span class="help-inline"><form:errors path="*"/></span>
            </div -->
            
            <div class="form-actions">
                <button  
                type="submit">Login</button>
            </div>
        </fieldset>
    </form:form>

<!-- /div>
&nbsp;&nbsp;&nbsp;
	</div -->
	
	<!-- CHANGE ROOT -->
	<!-- div>
	<img src="https://www.mfs.com/subs/home-microsite/img/nav/logo_mfs.png" alt="testing" >   
	</div -->
    
    <a href='<spring:url value="/owners/new" htmlEscape="true"/>'>Add Owner</a>

    <jsp:include page="../fragments/footer.jsp"/>

</div>
</body>

</html>
