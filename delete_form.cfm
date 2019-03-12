https://help.adobe.com/en_US/ColdFusion/10.0/Developing/coldfusion_10_dev.pdf
pg 439

<html>
<head>
<title>Insert Data Form</title>
</head>

<body>
<h2>Delete Data Form</h2>

<table>
<!-- begin html form; put action page -->
<form action="delete_action.cfm" method="post">
<tr>
  <td>Employee ID:</td>
  <td><input type="text" name="Emp_ID" size="4" maxlength="4"></td>
</tr>
<tr>
  <td>First Name:</td>
  <td><input type="text" name="FirstName" size="35" maxlength="50"></td>
</tr>
<tr>
  <td>Last Name:</td>
  <td><input type="text" name="LastName" size="35" maxlength="50"></td>
</tr>
<tr>
  <td>Start Date:</td>
  <td><input type="text" name="StartDate" size="16" maxlength="14"></td>
</tr>
<tr>
  <td>Salary:</td>
  <td><input type="Text" name="Salary" size="10" maxlength="10"></td>
</tr>
<tr>
  <td><&nbsp;</td>
  <td><input type="Submit" value="Submit>&nbsp;<input type="Reset" value="Clear Form"></td>
</tr>
</form>
</table>
</body>
<html>
