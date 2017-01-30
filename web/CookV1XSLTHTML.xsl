<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="xml" indent="yes"/>
  
 
  
    <xsl:template match="/">
        <html>
            <head>
               
                <title>Cook's First Voyage</title>
                <link rel="stylesheet" type="text/css" href="forstersidebar.css"/>
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
                   Cook's First Voyage
                </h1>
                    <h3><a href="CookVoy1graph.html">Graph of Cultural Markup in Book I, Chapters X - XV (Tahiti / Transit of Venus)</a></h3>
                <h3>Guide to color coding:</h3>
                
                <h3><span class="geo">Geocoding: Latitude and Longitude Readings</span></h3>
                
           <xsl:apply-templates select="//div[@type='contents']"/>
               <!-- <xsl:variable name="toc" select="//div[@type='contents']"/>
                         -->
                
              
                        
              
                
                
                <xsl:apply-templates select="//div[@type='introduction']"/>
               
               <xsl:apply-templates select="//div[@type='book']"/>
         
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="div[@type='book']/div[@type='chapter']">
          <xsl:apply-templates/>
        
    </xsl:template>
    <xsl:template match="div[@type='contents']//list">
        <ul><xsl:apply-templates/></ul>
        
    </xsl:template>
    <xsl:template match="div[@type='contents']//list//item">
       <li><xsl:apply-templates/></li>
        
    </xsl:template>
  
  <xsl:template match="div[@type='contents']//list//item/label">
     <a href="#{@type}{@n}"><xsl:apply-templates/></a>
      
  </xsl:template>
    
    <xsl:template match="head">
        <h2>
            
            <a id="{./parent::div/@type}{./parent::div/@n}"/><xsl:apply-templates/>
        </h2>
    </xsl:template>
   <!-- <xsl:template match="div[@type='introduction']">
        <h2>
            
            <a id="{@type}"/><xsl:apply-templates select="head"/>
        </h2>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="div[@type='book']">
        <h2>
            
            <a id="{@type}{@n}"/><xsl:apply-templates select="head"/>
        </h2>
        <xsl:apply-templates/>
    </xsl:template>
    <xsl:template match="div[@type='chapter']">
        <h2>
            
            <a id="{@type}{@n}"/><xsl:apply-templates select="head"/>
        </h2>
        <xsl:apply-templates/>
    </xsl:template>-->
    
    <xsl:template match="p">
        <p><xsl:apply-templates/>
        
           <xsl:apply-templates select="pb"/>
            <em>--page <xsl:value-of select="@n"/> </em>
        </p>
        
        
        
    </xsl:template>

  <!--  <xsl:template match="div/pb">
       
          
                
            <p> <em>-\-page <xsl:value-of select="@n"/>-\-
            </em></p>
          
    </xsl:template>-->
    
    
    <xsl:template match="div[not(@type='contents')]//list">
    
            <ul>
                <xsl:apply-templates/>
            </ul>
    
    </xsl:template>
    <xsl:template match="div[not(@type='contents')]//item">
        
        <li>
            <xsl:apply-templates/>
        </li>
        
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
