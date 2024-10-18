<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/emp_info">
		<html>
		<body>
			<xsl:for-each select="employee">
			<h1>
				Emp_Name:
				<xsl:value-of select="firstname"></xsl:value-of>
				<xsl:text></xsl:text>
				<xsl:value-of select="lastname"></xsl:value-of>
			</h1>
			
			<p style="font-size:small;">
				Employee Number: <xsl:value-of select="emp_name/@empID"></xsl:value-of>
			</p>
			</xsl:for-each>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>