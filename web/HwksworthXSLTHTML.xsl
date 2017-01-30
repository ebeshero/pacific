<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <!-- These are "literal" output statements...-->
                <title>Hawkesworth Vol 2: Wallis's Voyage</title>
                <link rel="stylesheet" type="text/css" href="hawkesworth.css"/>
            </head>
            <body>
                <h1>
                   Hawkesworth Vol 2: Chapters 4-8. Wallis's Voyage
                </h1>
                <h2>Guide to Color Coding:</h2>
               <ul>
                   <li><span class="geo">Geocoding: Matched Latitude and Longitude Readings</span></li>
                   <li><span class="place">Named Places</span></li>
                   <li><span class="health">Sailors' Health</span></li>
                   <li><span class="food">Food and Provisions</span></li>
                   <li><span class="storm">Storms</span></li>
                   <li><span class="weather">Weather Commentary</span></li>
                   <li><span class="repair">Ship Repairs</span></li>
                   <li><span class="animalsighting">Animal Sightings</span></li>
                   <li><span class="landsighting">Land Sightings</span></li>
                   <li><span class="island">Island Discoveries</span></li>
                   <li><span class="natives">Commentary on Natives</span></li>
                   <li><span class="contact">Cultural First Contact</span></li>
                   <li><span class="trade">Trade and Exchange</span></li>
                   <li><span class="violence">Violence</span></li>
                   <li><span class="punishment">Disciplinary Actions and Punishments</span></li>
               </ul>
 
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

        
     
    <xsl:template match="rs">
        
            <span class="{@subtype}">
                <xsl:apply-templates/>            
            </span>
    </xsl:template>
    <xsl:template match="geo">
        <span class="geo">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
       
        
</xsl:stylesheet>
