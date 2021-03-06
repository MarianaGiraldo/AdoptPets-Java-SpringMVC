<%-- 
    Document   : jsltform_pet
    Created on : 17/02/2022, 08:13:13 AM
    Author     : Mariana
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="components/nav.jsp" %>

<div class="container-contact100">
            <div class="wrap-contact100 m-t-80">
                <form:form commandName="pet" cssClass="contact100-form validate-form" method="POST">
                    <span class="contact100-form-title m-b-0">
                        Pet
                    </span>
                    <form:errors path="*" element="div" cssClass="alert alert-danger" />
                    <div class="wrap-input100 validate-input" data-validate="Name is required">
                        <form:label path="name" cssClass="label-input100">Name</form:label>
                        <form:input path="name" cssClass="input100" type="text" placeholder="Enter the pet's name" />
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate = "Born year is required: ex@abc.xyz">
                        <form:label path="born_year" cssClass="label-input100">Born year</form:label>
                        <form:input path="born_year" cssClass="input100" type="number" placeholder="Enter the pet's born year" value="" min="1960" max="2022"/>
                        <span class="focus-input100"></span>
                    </div>
                    
                    <div class="wrap-input100 validate-input" data-validate = "Color is required">
                        <form:label path="color" cssClass="label-input100">Color</form:label>
                        <form:input path="color" cssClass="input100" type="text" placeholder="Enter the pet's color" />
                        <span class="focus-input100"></span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate = "Breed is required">
                        <form:label path="breed" cssClass="label-input100">Breed</form:label>
                        <form:input path="breed" cssClass="input100" type="text" placeholder="Enter the pet's breed" />
                        <span class="focus-input100"></span>
                    </div>
                    
                    <div class="wrap-input100 input100-select">
                        <form:label path="pet_type" cssClass="label-input100">Pet type</form:label>
                        <div class="select2">
                            <form:select path="pet_type" cssClass="form-select selection-2-pettype fs-18">
                                <option selected disabled>Select a type of pet</option>
                                <option value="Cat">Cat</option>
                                <option value="Dog">Dog</option>
                                <option value="Hamster">Hamster</option>
                                <option value="Bird">Bird</option>
                                <option value="Reptil">Reptil</option>
                                <option value="Other">Other</option>
                            </form:select>
                        </div>
                        <span class="focus-input100"></span>
                    </div>
                    
                    <div class="wrap-input100 input100-select">
                        <form:label path="is_adopted" cssClass="label-input100">Is adopted?</form:label>
                        <div>
                            <form:select path="is_adopted" cssClass="selection-2-isadopted form-select fs-18">
                                <option selected disabled>Select if is adopted</option>
                                <option value="true">Yes</option>
                                <option value="false">No</option>
                            </form:select>
                        </div>
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
        <div id="dropDownSelect1"></div>
        <div id="dropDownSelect2"></div>
        <script>
            $(".selection-2-pettype").select2({
                minimumResultsForSearch: 20,
                dropdownParent: $('#dropDownSelect1')
            });
            $(".selection-2-isadopted").select2({
                minimumResultsForSearch: 20,
                dropdownParent: $('#dropDownSelect2')
            });
        </script>
    </body>
</html>

