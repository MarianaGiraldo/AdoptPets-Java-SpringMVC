<%-- 
    Document   : jsltview_pet
    Created on : 17/02/2022, 08:24:09 AM
    Author     : Mariana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/nav.jsp" %>

<div class="container-contact100">
    <div class="wrap-contact100 m-t-80">
        <h1>Pet</h1>
        <jsp:useBean id="pet" scope="request" class="Models.PetBean" />
        <p class="py-3">
            
            
            <b>Name: </b> <jsp:getProperty name="pet" property="name" /><br/>
            <b>Pet type: </b> <jsp:getProperty name="pet" property="pet_type" /><br/>
            <b>Born Year: </b> <jsp:getProperty name="pet" property="born_year" /><br/>
            <b>Color: </b> <jsp:getProperty name="pet" property="color" /><br/>
            <b>Breed: </b> <jsp:getProperty name="pet" property="breed" /><br/>
            <b>Is adopted?: </b> 
            <c:if test="${pet.getIs_adopted()}">Si</c:if>
            <c:if test="${!pet.getIs_adopted()}">No</c:if><br/>
        </p>
        <br/>
    </div>
</div>
</body>
</html>
