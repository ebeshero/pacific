<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <!-- These are "literal" output statements...-->
                <title>Cook's Second Voyage</title>
                <link rel="stylesheet" type="text/css" href="hawkesworth.css"/>
            </head>
            <body>
                <h1>
                   Cook's Second Voyage
                </h1>
                <h3>Guide to color coding:</h3>
                
                <h3><span class="geo">Geocoding: Latitude and Longitude Readings</span></h3>
 
                <xsl:apply-templates select="//div"/>

            </body>
        </html>
    </xsl:template>
  
    

    <xsl:template match="head">
        <h2>
            
            <xsl:apply-templates/>
        </h2>
    </xsl:template>
    
    <xsl:template match="p">
        <p><xsl:apply-templates/></p>
        
    </xsl:template>

    <xsl:template match="pb">
        <em>--page <xsl:value-of select="@n"/>--
        </em>
          
    </xsl:template>

        <xsl:template match="geo">
            <span class="geo">
                <xsl:apply-templates/>
            </span>
        </xsl:template>
     
    <xsl:template match="rs">
        
            <span class="{@subtype}">
                <xsl:apply-templates/>            
            </span>
    </xsl:template>
    
       
        

</xsl:stylesheet>
