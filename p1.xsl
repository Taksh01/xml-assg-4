<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/books">
<html>
<body>
	
<table border="1">
<caption>Price in Ascending Order</caption>
<tr>
	<td>title</td>
	<td>author</td>
	<td>price</td>
</tr>

<xsl:for-each select="book">
<xsl:sort select="price" order="ascending" data-type="number"></xsl:sort>
<tr>
	<td><xsl:value-of select="title"></xsl:value-of></td>
	<td><xsl:value-of select="author"></xsl:value-of></td>
	<td><xsl:value-of select="price"></xsl:value-of></td>
</tr>
</xsl:for-each>
</table>

<table border="1">
<caption>Price GreaterThan 10</caption>
<tr>
	<td>title</td>
	<td>author</td>
	<td>price</td>
</tr>

<xsl:for-each select="book">
<xsl:if test="price &gt;= 10">
<tr>
	<td><xsl:value-of select="title"></xsl:value-of></td>
	<td><xsl:value-of select="author"></xsl:value-of></td>
	<td><xsl:value-of select="price"></xsl:value-of></td>
</tr>
</xsl:if>
</xsl:for-each>
</table>

<table border="1">
<caption>Title,Author,Year and Style</caption>
<tr>
	<td style="color:blue;">title</td>
	<td style="color:blue;">author</td>
	<td style="color:blue;">year</td>
</tr>

<xsl:for-each select="book">
<tr>
	<td style="color:red;"><xsl:value-of select="title"></xsl:value-of></td>
	<td style="color:red;"><xsl:value-of select="author"></xsl:value-of></td>
	<td style="color:red;"><xsl:value-of select="year"></xsl:value-of></td>
</tr>
</xsl:for-each>
</table>

<table border="1">
<caption>Year in Descending Order</caption>
<tr>
	<td>title</td>
	<td>author</td>
	<td>year</td>
</tr>

<xsl:for-each select="book">
<xsl:sort select="year" order="descending"></xsl:sort>
<tr>
	<td><xsl:value-of select="title"></xsl:value-of></td>
	<td><xsl:value-of select="author"></xsl:value-of></td>
	<td><xsl:value-of select="year"></xsl:value-of></td>
</tr>
</xsl:for-each>
</table>

<table border="1">
<caption>Year after 1950 or Price greater than 10</caption>
<tr>
	<td>title</td>
	<td>author</td>
	<td>year</td>
	<td>price</td>
	
</tr>

<xsl:for-each select="book">
<xsl:if test="price &gt;= 10 or year &gt;= 1950">
<tr>
	<td><xsl:value-of select="title"></xsl:value-of></td>
	<td><xsl:value-of select="author"></xsl:value-of></td>
	<td><xsl:value-of select="year"></xsl:value-of></td>
	<td><xsl:value-of select="price"></xsl:value-of></td>
</tr>
</xsl:if>
</xsl:for-each>
</table>

<table border="1">
<caption>Price greater than 11; Pricey Book</caption>
<tr>
	<td>title</td>
	<td>author</td>
	<td>price</td>
	<td>year</td>
	<td>Desc.</td>
</tr>

<xsl:for-each select="book">
<tr>
	<td><xsl:value-of select="title"></xsl:value-of></td>
	<td><xsl:value-of select="author"></xsl:value-of></td>
	<td><xsl:value-of select="price"></xsl:value-of></td>
	<td><xsl:value-of select="year"></xsl:value-of></td>
	<td><xsl:if test="price &gt;= 11">Pricey Book</xsl:if></td>
</tr>

</xsl:for-each>
</table>


</body>
</html>
</xsl:template>
</xsl:stylesheet>