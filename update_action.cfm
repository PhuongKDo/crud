<html>
<head>
<title>Update Employee</title>
</head>
<body>
<cfif not isdefined("Form.Contract")>
<cfset form.contract = "No">
<cfelse>
<cfset form.contract = "Yes">
</cfif>
<!--- cfquery requires date formatting when retrieving from
Access. Use the left function when setting StartDate to trim
the ".0" from the date when it first appears from the
Access database --->
<cfquery name="UpdateEmployee" datasource="cfdocexamples">
UPDATE Employee
SET FirstName = '#Form.Firstname#',
LastName = '#Form.LastName#',
Dept_ID = #Form.Dept_ID#,
StartDate = '#left(Form.StartDate,19)#',
Salary = #Form.Salary#
WHERE Emp_ID = #Form.Emp_ID#
</cfquery>
<h1>Employee Updated</h1>
<cfoutput>
You have updated the information for
#Form.FirstName# #Form.LastName#
in the employee database.
</cfoutput>
</body>
</html>

#-----------------------------------------------------#
<html>
<head> <title>Input form</title> </head>
<body>
<!--- If the Contractor check box is clear,
set the value of the Form.Contract to "No" --->
<cfif not isdefined("Form.Contract")>
<cfset Form.Contract = "N">
</cfif>
<!--- Insert the new record --->
<cfinsert datasource="cfdocexamples" tablename="EMPLOYEE">
<h1>Employee Added</h1>
<cfoutput> You have added #Form.FirstName# #Form.Lastname# to the employee database.
</cfoutput>
</body>
</html>
