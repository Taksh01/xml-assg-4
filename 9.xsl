<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" indent="yes"></xsl:output>
<xsl:template match="/Info">
<html>
<body>
<xsl:for-each select="Student">
<xsl:if test="starts-with(Roll_no,'1')">
	<div>
	<p>Roll_no:<xsl:value-of select="Roll_no"></xsl:value-of></p>
	<p>Name:<xsl:value-of select="Name"></xsl:value-of></p>
	<p>Marks:<xsl:value-of select="Marks"></xsl:value-of></p>
	<p>Rank:<xsl:value-of select="Rank"></xsl:value-of></p>
	<p>__________________________________________________</p>
	</div>
</xsl:if>
</xsl:for-each>
</body>
</html>
</xsl:template>
</xsl:stylesheet>