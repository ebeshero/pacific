<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns="http://www.opengis.net/kml/2.2"
  version="2.0">
  <xsl:output method="xml" indent="yes"/>
  <xsl:template match="/">
    <kml>
      <Folder>
        <name>
          <xsl:apply-templates select="//body/div/head"/>
        </name>
        <Folder>
          <xsl:apply-templates select="//rs[@subtype='place']"/>
        </Folder>
      </Folder>
    </kml>
  </xsl:template>
  <xsl:template match="rs">
    <Placemark>
      <name>
        <xsl:text>[No name given]</xsl:text>
      </name>
      <description>
        <xsl:value-of select="."/>
      </description>
      <Point>
        <xsl:variable name="geo" select="normalize-space(@ana)"/>
        <xsl:variable name="lat" select="substring-before($geo,' ')"/>
        <xsl:variable name="long" select="substring-after($geo,' ')"/>
        <coordinates>
          <xsl:value-of select="$long"/>
          <xsl:text>,</xsl:text>
          <xsl:value-of select="$lat"/>
          <xsl:text>,0</xsl:text>
          <!--This needs to be rewritten to reflect our new form of geo coding-->
          <!--When we redo this, we'll need to concatenate these, three items, lat, space, and long, and then plunk into attribute.-->
          <!--If it it says 60 degrees 14 minutes, Use a reg ex to capture the shape, and use XPath to convert to a decimal value. 
            do xsl-value-of and do the math.-->
        </coordinates>
      </Point>
    </Placemark>
  </xsl:template>
</xsl:stylesheet>
