<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>

<html lang="en">


<jsp:include page="../fragments/headTag.jsp"/>

<body style="background-repeat: no-repeat; background-size: cover; background-image: url(/petclinic/resources/images/accenture17.jpg)">
<div class="container">
    <jsp:include page="../fragments/bodyHeader.jsp"/>
    
    <!-- div id="box" style="background-repeat: no-repeat; background-size: cover; background-image: url(/petclinic/resources/images/imgad2.jpg)">
&nbsp;
<div style="color: #FFF;padding:20px; margin:20px; width:700px; background: rgba(0, 0, 0, 0.72) none repeat scroll 0% 0% padding-box; border-radius: 0.352941em; 
box-shadow: 0px 0px 15px 0px rgba(0, 0, 0, 0.5);" -->

    <h2>News</h2>

	
    <datatables:table id="vets" data="${vets.vetList}" row="vet" theme="bootstrap2" cssClass="table table-striped" pageable="false" info="false">
        <datatables:column title="Name">
            <c:out value="${vet.firstName} ${vet.lastName}"></c:out>
        </datatables:column>
        <datatables:column title="Specialties">
            <c:forEach var="specialty" items="${vet.specialties}">
                <c:out value="${specialty.name}"/>
            </c:forEach>
            <c:if test="${vet.nrOfSpecialties == 0}">none</c:if>
        </datatables:column>
    </datatables:table>
    
    
    <table class="table-buttons">
        <tr>
            <td>
                <a href="<spring:url value="/vets.xml" htmlEscape="true" />">View as XML</a>
            </td>
            <td>
                <a href="<spring:url value="/vets.atom" htmlEscape="true" />">Subscribe to Atom feed</a>
            </td>
        </tr>
    </table>
    
    <!-- /div -->
&nbsp;
	<!-- /div -->

    <jsp:include page="../fragments/footer.jsp"/>
</div>
</body>

</html>
