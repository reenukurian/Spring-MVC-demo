<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Customer Confirmation</title>
</head>

<body>
The Customer is confirmed : ${customer.firstName} ${customer.lastName}
<br><br>
The free Passes :${customer.freePasses}

<br><br>
The Postal Code :${customer.postalCode}
<br><br>
The Course Code :${customer.courseCode}
</body>
</html>