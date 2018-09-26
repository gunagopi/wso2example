<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tns="http://com.example.CountryServices/Countries">
	<xsl:template match="/">
	<tns:Countries>
	  <xsl:for-each select="tns:Countries/tns:Country">
      <xsl:sort select="tns:Name"/>
      <tns:Country>
        <tns:Name><xsl:value-of select="tns:Name"/></tns:Name>
        <tns:Capital><xsl:value-of select="tns:Capital"/></tns:Capital>
      </tns:Country> 
      </xsl:for-each>
      </tns:Countries>
	</xsl:template>
</xsl:stylesheet>