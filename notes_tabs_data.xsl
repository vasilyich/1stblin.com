<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="lang" select="'ru'"/>
<xsl:output method="xml" indent="yes" omit-xml-declaration="yes" />

<xsl:template match="/">
	<tr>
	<xsl:for-each select="content/page[@name='notes_tabs'][@lang=$lang]/tableheader/item">
			<th><xsl:value-of select="current()"/></th>
	</xsl:for-each>
	</tr>
</xsl:template>

</xsl:stylesheet> 	