<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- to make output more readable below line is added-->
<xsl:output method="xml" indent="yes"/>
	<xsl:template match="/stud">
		<stud>
		<xsl:apply-templates select="student"></xsl:apply-templates>
		</stud>
	</xsl:template>
	
	<xsl:template match="student">
	<fname id="{id}">
	<xsl:copy-of select="plan/courses"></xsl:copy-of>
	</fname>
	</xsl:template>
</xsl:stylesheet>