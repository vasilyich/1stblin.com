<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="lang" select="'ru'"/>

<xsl:template match="/">
	<xsl:for-each select="content/page[@name='index'][@lang=$lang]/textline">
			<p class="textnormal"><xsl:value-of select="current()"/></p>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet> 	