<?xml version="1.0" encoding="UTF-8"?>



<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="xhtml" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
              
                <title>Georg Forster on Cook's Second Voyage</title>
                <link rel="stylesheet" type="text/css" href="forstersidebar.css"/>
                <script type="text/javascript" src="ForsterJSNotes.js"></script>
                
            </head>      
          <body>
              <div id="banner">
                 <a href="index.html"> <img src="banner7.jpg" alt="Digital Archives and Pacific Cultures"/></a>
              </div>
              <div id="navigation"> 
                  
                  <ul class="drop_menu">
                      <li> <h2><a href="index.html">home</a> |</h2> </li>
                      <li> <h2><a href="about.html">about</a> |</h2></li> 
                      <li> <h2><a href="voyages.html">voyage publications</a> |</h2> 
                          <ul><li><a href="HawkesworthWallis.html">Hawkesworth: Wallis</a> * <a href="HwksV2Ch4-8PNum.xml">TEI</a> *</li>
                              <li><a href="Cookvoy1.html">Hawkesworth: Cook Voyage 1</a> <br/>* <a href="Cookvoy1.xml">TEI</a> *
                                  <br/>* <a href="CookVoy1graph.html">Graph of Cultural Markup in Cook Voyage 1: Book 1, Chs. X-XV (Tahiti)</a> *</li>
                              <li><a href="ForsterGeorgComplete.html">Georg Foster: Cook Voyage 2</a><br/>* <a href="ForsterGeorgComplete.xml">TEI</a> *</li>
                              <li>Johann Forster: Cook Voyage 2 <span class="tiny">[coming]</span></li>
                              <li><a href="cookSecVoyageAll.html">James Cook: Cook Voyage 2</a> <br/>* <a href="cookVoy2Pnum.xml">TEI</a> *</li>
                              <li>Cook Voyage 3 <span class="tiny">[coming]</span></li>
                          </ul>
                      </li>
                      <li> <h2><a href="poems.html">cultural responses</a> |</h2> 
                          <ul><li><a href="InjuredIsland.html">The Injured Islanders (1779)</a> * <a href="InjuredIsland.xml">TEI</a> *</li>
                              <li><a href="CookElegy1780.html">Elegy on Captain Cook (1780)</a> * <a href="ElegyCook.xml">TEI</a> *</li>
                              <li><a href="PoemsGrphAnlys.xhtml">Graph of Cultural Interactions in the Poems</a></li>
                              <li>Omai: or a Trip Around the World <span class="tiny">[coming]</span></li>
                              <li><a href="EccoLocSortDate.html">Scrapbook of Pacific References</a>
                                  * <a href="eccoBibSnips.xml">TEI</a> *</li>
                              
                          </ul>
                          
                      </li>
                      <li> <h2><a href="maps.html">maps</a> |</h2>
                          <ul>
                              <li><a href="HwksWallisMap.html">KML: Wallis in the South Pacific</a></li>
                              <li><a href="CookVoy2Map.html">KML: Cook Voyage 2</a></li>
                              
                          </ul>
                      </li>
                      <li> <h2> <a href="siteIndex.html">site index</a> |</h2></li>
                      <li> <h2><a href="http://www.pitt.edu/~ebb8/DHDS/">course</a></h2></li>
                  </ul>
                  
                  
              </div>
              <div id="mainPage">
              
              
                <h1>
                    A Voyage Round the World in His Majesty's Sloop, Resolution, commanded by Capt. James Cook, during the Years 1772, 3, 4, 5.
                </h1>
                <h2>Georg Forster</h2>
                <h3>Guide to color coding:</h3>
                
                <h3><span class="geo">Geocoding: Latitude and Longitude Readings</span></h3>
                <h3><span class="placeName">Names of Places</span></h3>
                <h3><span class="persName">Names of People</span></h3>
                <h3><span class="date">Dates</span></h3>
 
                
                <xsl:apply-templates select="//body/div"/>     
               
              </div>
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
    <xsl:template match="//body/div/head">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="l">
        <xsl:apply-templates/><br/>
       
    </xsl:template>
    
    <xsl:template match="q">
        <q><xsl:apply-templates/>
        </q>
        
    </xsl:template>

        <xsl:template match="geo">
            <span class="geo">
                <xsl:apply-templates/>
            </span>
        </xsl:template>
    
    <xsl:template match="placeName">
        <span class="placeName">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="persName">
        <span class="persName">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="date">
        <span class="date">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="emph">
        <i><xsl:apply-templates/></i>
    </xsl:template>
    
    <xsl:template match="ref">
        <span id="N{substring-after(@target,'#')}" class="anchor">[<xsl:value-of select="count (preceding::ref)+ 1"/>]
      
    
            <span class="note" id="{note/@xml:id}">
                
                <xsl:apply-templates select="note"/>
             
                </span> 
        </span>
    </xsl:template>
    
 
     
    <!--<xsl:template match="rs">
        
            <span class="{@subtype}">
                <xsl:apply-templates/>            
            </span>
    </xsl:template>-->
      

</xsl:stylesheet>
