<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="lang" select="'ru'"/>
<xsl:output method="xml" indent="yes" omit-xml-declaration="yes" />

<xsl:template match="/">
	<xsl:for-each select="content/page[@name='refs'][@lang=$lang]/header">
			<p class="textheader"><xsl:value-of select="headertext"/></p>
      <ul class="textnormal">
			<xsl:for-each select="item">
		      <xsl:variable name="url" select="url"/>
          <li><a href="{$url}"><xsl:value-of select="name"/></a></li>
      </xsl:for-each>
      </ul>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet>