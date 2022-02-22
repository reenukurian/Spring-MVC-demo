<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--  for each tag-->
<!DOCTYPE html>
<html>
<head>
<title>Student Confirmation</title>
</head>
<body>

The student is confirmed:: ${student.firstName} ${student.lastName}
<br><br>
The selected country is :: ${student.country}
<br><br>
Favorite Language is ::${student.favoriteLanguage}
<br><br>
Operating Systems ::
<ul>
<c:forEach var="temp" items="${student.operatingSystems}">
<li>${temp}</li>
</c:forEach>
</ul>

</body>
</html>