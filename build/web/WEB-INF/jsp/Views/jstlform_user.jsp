<%-- 
    Document   : jsltform_user
    Created on : 17/02/2022, 08:13:56 AM
    Author     : Mariana
--%>

<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/nav.jsp" %>

<div class="container-contact100">
    <div class="wrap-contact100 m-t-80">
        <form:form commandName="user" cssClass="contact100-form validate-form" method="POST">
            <span class="contact100-form-title m-b-0">
                Welcome!
            </span>
            <p class="text-muted mt-0">
                <%
                    try {
                        %>
                        <sql:setDataSource driver="com.mysql.jdbc.Driver"
                                           url="jdbc:mysql://localhost:3306/adopt_pets_db"
                                           user="root"
                                           password=""/>
                        Conexión a base de datos exitosa
                <%
                    } catch (Exception ex) {
                        out.print("Conexion a Base de datos fallida: " + ex.getMessage());
                    }
                %>
            </p>
            <form:errors path="*" element="div" cssClass="alert alert-danger mt-0" />
            <br/>
            <div class="wrap-input100 validate-input" data-validate="Name is required">
                <form:label path="name" cssClass="label-input100">Your Name</form:label>
                <form:input path="name" cssClass="input100" type="text" placeholder="Enter your name" />
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                <form:label path="email" cssClass="label-input100">Email</form:label>
                <form:input path="email" cssClass="input100" type="email" placeholder="Enter your email addess" />
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100 validate-input" data-validate = "Phone number is required">
                <form:label path="phoneNumber" cssClass="label-input100">Phone Number</form:label>
                <form:input path="phoneNumber" cssClass="input100" type="tel" placeholder="Enter your phone number" value="" pattern="[0-9]{10}" title="Phone Number invalid: Only numbers allowed"/>
                <span class="focus-input100"></span>
            </div>
            <div class="wrap-input100 validate-input" data-validate = "Phone number is required">
                <form:label path="id" cssClass="label-input100">Identification Number</form:label>
                <form:input path="id" cssClass="input100" type="text" placeholder="Enter your ID"  value="" pattern="[0-9]{10}" />
                <span class="focus-input100"></span>
            </div>

            <div class="container-contact100-form-btn">
                <div class="wrap-contact100-form-btn">
                    <div class="contact100-form-bgbtn"></div>
                    <form:button name="Submit" class="contact100-form-btn">
                        <span>
                            Submit
                            <i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
                        </span>
                    </form:button>
                </div>
            </div>
        </form:form>
    </div>
</div>

</body>
</html>
