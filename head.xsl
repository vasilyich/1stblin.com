<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="lang" select="'ru'"/>
<xsl:output method="xml" indent="yes" omit-xml-declaration="yes" />

<xsl:template match="/">
<head>
	<title><xsl:value-of select="content/title[@lang=$lang]"/></title>
	<link rel="stylesheet" href="css/style.css"/>       
	<meta charset="UTF-8"/>
	<xsl:variable name="desc" select="content/meta[@lang=$lang]/desc"/>
	<meta name="description" content="{$desc}"/>
	<xsl:variable name="keywords" select="content/meta[@lang=$lang]/keywords"/>
	<meta name="keywords" content="{$keywords}"/>
	<xsl:variable name="author" select="content/meta[@lang=$lang]/author"/>
	<meta name="author" content="{$author}"/>        
</head>
</xsl:template>

</xsl:stylesheet> 