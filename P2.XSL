<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
<xsl:template match="/employees">
<html>
<body>
	<h2>Employees List (Sorted by Salary)</h2>
	<table border="1">
	<tr>
	<th>Name</th>
	<th>Department</th>
	<th>Salary</th>
	<th>Joining Year</th>
	</tr>
	<xsl:for-each select="employee">
	<xsl:sort select="salary" order="descending" data-type="number"/>
 		<tr>
			<td><xsl:value-of select="name"/></td>
			<td><xsl:value-of select="department"/></td>
			<td><xsl:value-of select="salary"/></td>
			<td><xsl:value-of select="joining-year"/></td>
		</tr>
	</xsl:for-each>
	</table>
	
	<h2>Employees List (Salary-Year Condition)</h2>
	<table border="1">
	<tr>
	<th>Name</th>
	<th>Department</th>
	<th>Salary</th>
	<th>Joining Year</th>
	</tr>
	<xsl:for-each select="employee">
	<xsl:if test="salary &gt;= 60000 or joining-year &gt;= 2015">
 		<tr>
			<td><xsl:value-of select="name"/></td>
			<td><xsl:value-of select="department"/></td>
			<td><xsl:value-of select="salary"/></td>
			<td><xsl:value-of select="joining-year"/></td>
		</tr>
	</xsl:if>
	</xsl:for-each>
	</table>
	
	<h2>Employees List (Message Display)</h2>
	<table border="1">
	<tr>
	<th>Name</th>
	<th>Department</th>
	<th>Salary</th>
	<th>Joining Year</th>
	<th>Msg</th>
	</tr>
	<xsl:for-each select="employee">
 	<tr>
			<td><xsl:value-of select="name"/></td>
			<td><xsl:value-of select="department"/></td>
			<td><xsl:value-of select="salary"/></td>
			<td><xsl:value-of select="joining-year"/></td>
			<td><xsl:if test="salary &gt;= 70000">High Earner</xsl:if></td>
	</tr>
	</xsl:for-each>
	</table>
	
	<h2>Employees List (Group By Dept)</h2>
	<table border="1">
	<tr>
	<th>Name</th>
	<th>Department</th>
	<th>Salary</th>
	<th>Joining Year</th>
	</tr>
	
	<xsl:for-each select="employee">
	<xsl:sort select="department" order="descending"></xsl:sort>
 		<tr>
			<td><xsl:value-of select="name"/></td>
			<td><xsl:value-of select="department"/></td>
			<td><xsl:value-of select="salary"/></td>
			<td><xsl:value-of select="joining-year"/></td>
		</tr>
	</xsl:for-each>
	</table>
	
</body>
</html>
</xsl:template>
</xsl:stylesheet>