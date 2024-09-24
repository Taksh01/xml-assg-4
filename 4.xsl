<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:template match="/stud_info">
		<html>
		<body>
		<table border="1">
		<tr>
		<td>name</td>
		<td>add</td>
		<td>bday</td>
		<td>gender</td>
		<td>mobileNo</td>
		<td>add</td>
		<td>result</td>
		</tr>
		
		<xsl:for-each select="stud">
		<xsl:sort select="name" order="ascending"></xsl:sort>
		<tr>
		<td><xsl:value-of select="name"></xsl:value-of></td>
		<td><xsl:value-of select="personal_info/add"></xsl:value-of></td>
		<td><xsl:value-of select="personal_info/bday"></xsl:value-of></td>
		<td><xsl:value-of select="personal_info/gender"></xsl:value-of></td>
		<td><xsl:value-of select="personal_info/mobileNo"></xsl:value-of></td>
		<td><xsl:value-of select="personal_info/add"></xsl:value-of></td>
		<td><xsl:value-of select="result"></xsl:value-of></td>
		</tr>
		</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>