<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="lang" select="'ru'"/>
<xsl:param name="page" select="'index.php'"/>
<xsl:param name="par" select="''"/>
<xsl:output method="xml" indent="yes" omit-xml-declaration="yes" />

<xsl:template match="/">
			<div class="flags">
				<xsl:variable name="flagruText" select="content/topmenu/flags[@lang=$lang]/ru"/>
				<a href="{$page}?lang=ru{$par}" title="{$flagruText}" class="langru"><img src="img/ru.png" alt="{$flagruText}"/></a>
				<xsl:variable name="flagenText" select="content/topmenu/flags[@lang=$lang]/en"/>
				<a href="{$page}?lang=en{$par}" title="{$flagenText}" class="langeng"><img src="img/en.png" alt="{$flagenText}"/></a>
			</div>	
</xsl:template>

</xsl:stylesheet> 			