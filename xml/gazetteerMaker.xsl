<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
 
 <xsl:output method="text"/>
 
 <xsl:template match="/">
     <xsl:apply-templates select="//role"/>
 </xsl:template>

<xsl:template match="role">
    <xsl:apply-templates select="(ref | text())[1]"/><xsl:text>&#10;</xsl:text>
  </xsl:template>
    
</xsl:stylesheet>