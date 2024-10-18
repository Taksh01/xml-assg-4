<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/Order_Detail">
		<html>
		<body>
		<table border="1">
		<tr>
		<td>OrderNumber</td>
		<td>Orderate</td>
		<td>OrderAmount</td>
		<td>ItemPrice</td>
		<td>ItemName</td>
		<td>Quantity</td>
		</tr>
		
		<xsl:for-each select="order">
		<tr>
		<td><xsl:value-of select="OrderNumber"></xsl:value-of></td>
		<td><xsl:value-of select="Orderate"></xsl:value-of></td>
		<td><xsl:value-of select="OrderAmount"></xsl:value-of></td>
		<td><xsl:value-of select="ItemPrice"></xsl:value-of></td>
		<td><xsl:value-of select="ItemName"></xsl:value-of></td>
		<td><xsl:value-of select="Quantity"></xsl:value-of></td>
		</tr>
		</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>