<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
	<xsl:template match="/book_info">
		<html>
		<body>
		
		<xsl:for-each select="books">
		<xsl:if test="year &lt; 1998">
		<div>			
			<strong>Title:</strong><xsl:value-of select="book/@title"></xsl:value-of>
			<strong>Author:</strong><xsl:value-of select="author"></xsl:value-of>
			<strong>Year:</strong><xsl:value-of select="year"></xsl:value-of>
			<strong>Publisher:</strong><xsl:value-of select="publisher"></xsl:value-of>
		</div>
		</xsl:if>
		</xsl:for-each>
		
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>