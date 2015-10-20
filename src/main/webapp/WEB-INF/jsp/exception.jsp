<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<jsp:include page="fragments/headTag.jsp"/>

<body>
<div class="container">
    <jsp:include page="fragments/bodyHeader.jsp"/>
    <!-- spring:url value="/resources/images/imgad3.jpg" var="petsImage"/ -->
    <!--  img src="${petsImage}"/-->
    
        <div id="box" style="background-repeat: no-repeat; background-size: cover; background-image: url(/petclinic/resources/images/imgad3.jpg)">
&nbsp;
<div style="color: #FFF;padding:20px; margin:20px; width:700px; background: rgba(0, 0, 0, 0.72) none repeat scroll 0% 0% padding-box; border-radius: 0.352941em; 
box-shadow: 0px 0px 15px 0px rgba(0, 0, 0, 0.5);">

    <h2>Something happened...</h2>

    <p>${exception.message}</p>

    <!-- Exception: ${exception.message}.
		  	<c:forEach items="${exception.stackTrace}" var="stackTrace"> 
				${stackTrace} 
			</c:forEach>
	  	-->

    </div>
&nbsp;&nbsp; testing
	</div>
    <jsp:include page="fragments/footer.jsp"/>

</div>
</body>

</html>
