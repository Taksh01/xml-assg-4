<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" indent="yes"></xsl:output>
<xsl:template match="/Info">
<html>
<body>
<xsl:for-each select="Student">
	<div>
		<p><strong>RollNo:</strong><xsl:value-of select="Roll_no"></xsl:value-of></p>
		<p><strong>Name:</strong> <xsl:value-of select="Name"/></p>
        <p><strong>Marks:</strong> <xsl:value-of select="Marks"/></p>
        <p><strong>Rank:</strong> <xsl:value-of select="Rank"/></p>
        <p><strong>Result</strong>
        <xsl:choose>
        <xsl:when test="Marks &gt;= 70">dist</xsl:when>
        <xsl:when test="Marks &lt; 70 and Marks &gt;= 60">first</xsl:when>
        <xsl:when test="Marks &lt; 60 and Marks &gt;= 40">second</xsl:when>
        <xsl:otherwise>fail</xsl:otherwise>
        </xsl:choose>
        </p>
	</div>		
</xsl:for-each>
</body>
</html>
</xsl:template>
</xsl:stylesheet>