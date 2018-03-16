<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="lang" select="'ru'"/>

<xsl:template match="/">
      <ul class="menu">
          <li class="menu_item"><a href="index.php"><img src="img/home_icon.png" class="icon"/>
          	<xsl:value-of select="content/topmenu/menuitems[@lang=$lang]/item[@id='1']"/>
          </a></li>
          <li class="menu_item"><a href="notes_tabs.php"><img src="img/music_sheet.png" class="musescoreicon"/>
          	<xsl:value-of select="content/topmenu/menuitems[@lang=$lang]/item[@id='2']"/>
          </a></li>
          <li class="menu_item"><a href="refs.html"><img src="img/links_icon.png" class="icon"/>
          	<xsl:value-of select="content/topmenu/menuitems[@lang=$lang]/item[@id='3']"/>
          </a></li>
          <li class="menu_item"><a href="contacts.html"><img src="img/contacts_icon.png" class="icon"/>
          	<xsl:value-of select="content/topmenu/menuitems[@lang=$lang]/item[@id='4']"/>
          </a></li>
      </ul>
</xsl:template>

</xsl:stylesheet>       