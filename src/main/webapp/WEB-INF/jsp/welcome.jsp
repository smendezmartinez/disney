<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html lang="en">

<jsp:include page="fragments/headTag.jsp"/>

<body style="background-repeat: no-repeat; background-size: cover; background-image: url(/petclinic/resources/images/map-mfs.jpg)">

<div class="container">
    <jsp:include page="fragments/bodyHeader.jsp"/>
  &nbsp;
    
    <!-- h2><fmt:message key="welcome"/></h2 -->
    <spring:url value="/resources/images/mfs4.png" htmlEscape="true" var="petsImage"/>
    <img src="${petsImage}"/>


	
<p>
    <jsp:include page="fragments/footer.jsp"/>

</div>
</body>

</html>
