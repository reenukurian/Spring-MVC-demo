<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<title>Student Registration Form</title>
</head>
<body>
<form:form action="processForm" modelAttribute="student">
First Name:<form:input path="firstName"/>
<br><br>
Last Name:<form:input path="lastName"/>

<br><br>
<form:select path="country">
<form:options items="${student.countryOptions}"/>

</form:select>
<br><br>
Favorite Language::
<form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}"  />
<br><br>
Operating Systems ::
Linux<form:checkbox path="operatingSystems" value="Linux"/>
Mac<form:checkbox path="operatingSystems" value="Mac"/>
Windows<form:checkbox path="operatingSystems" value="Windows"/>
<br><br>

<input type="submit" value="Submit">
</form:form>


</body>
</html>