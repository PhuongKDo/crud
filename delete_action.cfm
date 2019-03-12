<html>
<head>
<title>Delete Employee Record</title>
</head>
<body>
<cfquery name="DeleteEmployee"
datasource="cfdocexamples">
DELETE FROM Employee
WHERE Emp_ID = #Form.Emp_ID#
</cfquery>
<h1>The employee record has been deleted.</h1>
<cfoutput>
You have deleted #Form.FirstName# #Form.LastName# from the employee database.
</cfoutput>
</body>
</html>
