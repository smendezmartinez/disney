<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="en">

<jsp:include page="../fragments/headTag.jsp"/>

<body>
<div class="container">
    <jsp:include page="../fragments/bodyHeader.jsp"/>

<!-- div id="box" style="background-repeat: no-repeat; background-size: cover; background-image: url(/petclinic/resources/images/mfs3.jpg)">
&nbsp;
<div style="color: #FFF;padding:20px; margin:20px; width:500px; background: rgba(0, 0, 0, 0.72) none repeat scroll 0% 0% padding-box; border-radius: 0.352941em; 
box-shadow: 0px 0px 15px 0px rgba(0, 0, 0, 0.5);" -->
    <h2>Online Services</h2>

 <spring:url value="/owners.html" var="formUrl"/>
    <form:form modelAttribute="owner" action="${fn:escapeXml(formUrl)}" method="get" class="form-horizontal"
               id="search-owner-form">
        <fieldset>
            <div class="control-group" id="userid">
                <label class="control-label">User ID </label>
                <form:input path="userid" size="30" maxlength="80"/>
                <span class="help-inline"><form:errors path="*"/></span>
            </div>
           
           
           <div class="control-group" id="password">
                <label class="control-label">Password </label>
                <form:input path="password" size="30" maxlength="80"/>
                <span class="help-inline"><form:errors path="*"/></span>
            </div>
            
            <div class="form-actions">
                <button  
                type="submit">Login</button>
            </div>
        </fieldset>
    </form:form>

<!-- /div>
&nbsp;
	</div -->
	
		
    <br/>
    <a href='<spring:url value="/owners/new" htmlEscape="true"/>'>Add Owner</a>

    <jsp:include page="../fragments/footer.jsp"/>

</div>
</body>

</html>
