<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
 
 <xsl:output method="text"/>
    <xsl:variable name="filename" select="tokenize(base-uri(), '/')[last()] ! substring-before(., '.')"/>
    <xsl:variable name="litcoll" as="document-node()+" select="collection('literary/?select=*.xml')"/>
    <xsl:variable name="voycoll" as="document-node()+" select="collection('voyages/?select=*.xml')"/>
    <xsl:variable name="allcoll" as="document-node()+" select="($litcoll | $voycoll)"/>
    
 <xsl:template match="/">
     <xsl:result-document method="text" href="orgs.txt">
    
      
         <xsl:variable name="orgs" select="$allcoll//text//orgName/text()[1] ! translate(., '()', '') ! normalize-space() => distinct-values() => sort()"/>
         <xsl:for-each select="$orgs">
             <xsl:value-of select="current()"/><xsl:text>&#10;</xsl:text>  
         </xsl:for-each>
         
     </xsl:result-document>
    
 </xsl:template>
    

    
</xsl:stylesheet>