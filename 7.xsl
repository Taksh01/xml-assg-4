<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" indent="yes"></xsl:output>
<xsl:template match="/Info">
<html>
<body>
	<xsl:for-each select="Student">

	<div>
    <p><strong>Roll No:</strong> <xsl:value-of select="Roll_no"/></p>
    <p><strong>Name:</strong> <xsl:value-of select="Name"/></p>
    <p><strong>Marks:</strong> <xsl:value-of select="Marks"/></p>
    <p><strong>Rank:</strong> <xsl:value-of select="Rank"/></p>
	<p>
    <strong>Status:</strong>
    <xsl:choose>
	<xsl:when test="Rank &lt;= 5">Top Students</xsl:when>
	<xsl:when test="Rank &gt; 5 and Rank &lt;= 10">Top 10 Students</xsl:when>
	<xsl:otherwise>Average Students</xsl:otherwise>
    </xsl:choose>
	</p>
    </div>
	</xsl:for-each>
	</body>
	</html>
	</xsl:template>
</xsl:stylesheet>