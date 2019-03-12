<html>
<head>
<title>Input form</title>
</head>
<body>
<!--- If the Contractor check box is clear), set the value of the Form.Contract
to "No" --->
<cfif not isdefined("Form.Contract")>
<cfset Form.Contract = "No">
</cfif>
<!--- Insert the new record --->
<cfquery name="AddEmployee" datasource="cfdocexamples">
INSERT INTO Employee
VALUES (#Form.Emp_ID#, '#Form.FirstName#',
'#Form.LastName#', #Form.Dept_ID#,
'#Form.StartDate#', #Form.Salary#, '#Form.Contract#')
</cfquery>
<h1>Employee Added</h1>
<cfoutput>You have added #Form.FirstName# #Form.Lastname# to the employee database.
</cfoutput>
</body>
</html>

#---------------------------------------------------#
<html>
<head>
<title>Input form</title>
</head>

<body>
<!-- if box is not checked, set to No -->
<cfif not isdefined("Form.Contract")>
  <cfset Form.Contract = "No">
</cfif>

<!-- Insert the new record -->
<cfinsert datasource="cfdocexamples" tablename="EMPLOYEE">

<h1><Employee Added</h1>
<cfoutput> You have added #Form.FirstName# #Form.Lastname# to the employee database.
</cfoutput>

</body>
</html>
