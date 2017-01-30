<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
  
        <html>
            <head>
                <title>Collection: English References to the Pacific</title>
           <link rel="stylesheet" type="text/css" href="EccoBib.css"/>
           <script type="text/javascript" src="ElegyJSColorNotes.js" xml:space="preserve">  </script>
        
            </head>
            <body> 
            <div id="sidebar">
                
                
                <div id="legend">
                    <div id="fieldset">
                        <fieldset>
                            <legend>Click to Highlight:</legend>
                            <input type="checkbox"
                                id="CHARtoggle"
                                onclick="toggle('character')"
                                style="cursor:pointer"/>
                            <span class="Testchars">Persons, Groups, and Mythic Entities</span>
                            <br/>
                            <input type="checkbox"
                                id="PLtoggle"
                                onclick="toggle('place')"
                                style="cursor:pointer"/>
                            <span class="Testplaces">Places</span>
                            <br/>
                            <input type="checkbox"
                                id="OBtoggle"
                                onclick="toggle('object')"
                                style="cursor:pointer"/>
                            <span class="Testobjects">Objects, Flora, and Fauna
                            </span>
                            <br/>
                            <input type="checkbox"
                                id="Concepttoggle"
                                onclick="toggle('concept')"
                                style="cursor:pointer"/>
                            <span class="Testconcepts">Abstract Concepts</span>
                            <br/>
                            <hr/>
                            
                            Cultural Interactions:<br/>
                            <input type="checkbox"
                                id="CItoggle"
                                onclick="toggle('interact')"
                                style="cursor:pointer"/>
                            <span class="Testinteract">All Interactions</span>
                            <br/>
                            <input type="checkbox"
                                id="Conflicttoggle"
                                onclick="toggle('conflict')"
                                style="cursor:pointer"/>
                            <span class="Testconflict">Conflict</span>
                            <br/>
                            <input type="checkbox"
                                id="Bloodtoggle"
                                onclick="toggle('blood')"
                                style="cursor:pointer"/>
                            <span class="Testblood">Bloodshed</span>
                            <br/>
                            <input type="checkbox"
                                id="Sextoggle"
                                onclick="toggle('sex')"
                                style="cursor:pointer"/>
                            <span class="Testsex">Sex</span>
                            <br/>
                            <input type="checkbox"
                                id="Imptoggle"
                                onclick="toggle('imp')"
                                style="cursor:pointer"/>
                            <span class="Testimp">Empire Building</span>
                            <br/>
                            <input type="checkbox"
                                id="Tradetoggle"
                                onclick="toggle('trade')"
                                style="cursor:pointer"/>
                            <span class="Testtrade">Trade</span>
                            <br/>
                            <input type="checkbox"
                                id="Certoggle"
                                onclick="toggle('cer')"
                                style="cursor:pointer"/>
                            <span class="Testcer">Rituals and Ceremonies</span>
                            <br/>
                           
                            <input type="checkbox"
                                id="Affintoggle"
                                onclick="toggle('affin')"
                                style="cursor:pointer"/>
                            <span class="Testaffin">Affinity (Friendship, Respect, Attraction)</span>
                            <br/>
                        </fieldset>
                    </div>
                    
                </div>
            </div>
            
                <div id="banner">
                    <a href="index.html">
                        <img src="banner7.jpg" alt="Digital Archives and Pacific Cultures"/>
                    </a>
                </div>
                <div id="navigation">
                    <ul class="drop_menu">
                        <li>
                            <b>
                                <a href="index.html">home</a> |</b>
                        </li>
                        <li>
                            <b>
                                <a href="about.html">about</a> |</b>
                        </li>
                        <li>
                            <b>
                                <a href="voyages.html">voyage publications</a> |</b>
                            <ul>
                                <li>
                                    <a href="HawkesworthWallis.html">Hawkesworth: Wallis</a> * <a href="HwksV2Ch4-8PNum.xml">TEI</a> *</li>
                                <li>
                                    <a href="Cookvoy1.html">Hawkesworth: Cook Voyage 1</a>
                                    <br/>* <a href="Cookvoy1.xml">TEI</a> *
                                    <br/>* <a href="CookVoy1graph.html">Graph of Cultural Markup in Cook Voyage 1: Book 1, Chs. X-XV (Tahiti)</a> *</li>
                                <li>
                                    <a href="ForsterGeorgComplete.html">Georg Foster: Cook Voyage 2</a>
                                    <br/>* <a href="ForsterGeorgComplete.xml">TEI</a> *</li>
                                <li>Johann Forster: Cook Voyage 2 <span class="tiny">[coming]</span>
                                </li>
                                <li>
                                    <a href="cookSecVoyageAll.html">James Cook: Cook Voyage 2</a>
                                    <br/>* <a href="cookVoy2Pnum.xml">TEI</a> *</li>
                                <li>Cook Voyage 3 <span class="tiny">[coming]</span>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <b>
                                <a href="maps.html">voyage maps</a> |</b>
                            <ul>
                                <li>
                                    <a href="HwksWallisMap.html">KML: Wallis in the South Pacific</a>
                                </li>
                                <li><a href="HistOverlay.html">Historic Map Overlay: Society Islands in 1769</a></li>
                                <li>Coming: Cook's First Voyage</li>
                                <li>
                                    <a href="CookVoy2Map.html">KML: Cook's Second Voyage</a>
                                </li>
                                <li><a href="CookGeorgVoyageComp.html">KML: Forster and Cook Compared: Cook's Second Voyage</a></li>
                                
                            </ul>
                        </li>
                        <li>
                            <b>
                                <a href="poems.html">cultural responses</a> |</b>
                            <ul>
                                <li>
                                    <a href="EccoLocSortDate.html">Scrapbook of Pacific References</a>
                                    * <a href="eccoBibSnips.xml">TEI</a> *</li>
                                <li>
                                    <a href="InjuredIsland.html">The Injured Islanders (1779)</a> * <a href="InjuredIsland.xml">TEI</a> *</li>
                                <li>
                                    <a href="CookElegy1780.html">Elegy on Captain Cook (1780)</a> * <a href="ElegyCook.xml">TEI</a> *</li>
                                <li>
                                    <a href="PoemsGrphAnlys.xhtml">Graph of Cultural Interactions in the Poems</a>
                                </li>
                                <li>Omai: or a Trip Around the World <span class="tiny">[coming]</span>
                                </li>
                                <li><a href="siteIndex.html">Named People and Places</a></li>
                                
                            </ul>
                        </li>
                        
                        
                        <li>
                            <b>
                                <a href="http://www.pitt.edu/~ebb8/DHDS/">course</a>
                            </b>
                        </li>
                    </ul>
                </div>
               
                <div id="mainPage">
                    <h1><xsl:apply-templates select="TEI//titleStmt/title"/></h1>
                        <hr/> 
                    <h2> Introduction:</h2>
                    <xsl:apply-templates select="TEI//notesStmt/note"/>
                    
                    <a id="sort"/><h3>Sorted by Genre: Philosophy, Politics, Plays, Poetry, Novels</h3>
                    
                    <h3>Remix: <a href="EccoLocSortDate.html#sort">Click to Sort by Date of Publication</a></h3>
              
                    <h2>Philosophy</h2>
                    
                <ul>
                    <xsl:apply-templates select="TEI//text//listBibl/bibl[@type='philosophy']">
                        <xsl:sort select="date" data-type="number"/>
                    </xsl:apply-templates>
                </ul>
                
                <h2>Politics</h2>
                <ul>
                    <xsl:apply-templates select="TEI//text//listBibl/bibl[@type='politics']">
                        <xsl:sort select="date" data-type="number"/>
                    </xsl:apply-templates>
                    
                </ul>
                    
                    <h2>Plays</h2>
                    <ul>
                        <xsl:apply-templates select="TEI//text//listBibl/bibl[@type='play']">
                            <xsl:sort select="date" data-type="number"/>
                        </xsl:apply-templates>
                        
                    </ul>
                    
                    <h2>Poetry</h2>
                    <ul>
                        <xsl:apply-templates select="TEI//text//listBibl/bibl[@type='poem']">
                            <xsl:sort select="date" data-type="number"/>
                        </xsl:apply-templates>
                        
                    </ul>
                    
                    <h2>Novels</h2>
                    <ul>
                        <xsl:apply-templates select="TEI//text//listBibl/bibl[@type='novel']">
                            <xsl:sort select="date" data-type="number"/>
                        </xsl:apply-templates>
                        
                    </ul>
                    
   
                </div>
            </body>
        </html>
    </xsl:template>



    <xsl:template match="listBibl/bibl">
       
        <li>
            
            <b><xsl:value-of select="date"/><xsl:text>: </xsl:text></b>
            
            <xsl:if test="exists(author/text())">
                
                <span class="author">
                    <xsl:apply-templates select="author"/>
                    <xsl:text>. </xsl:text>
                </span>
            </xsl:if>
            
           
            
            <xsl:if test="exists(title[@level='a'])">
                <span class="{title/parent::bibl/@type}"><xsl:text>"</xsl:text><xsl:apply-templates select="title"/><xsl:text>"</xsl:text></span><xsl:text>. </xsl:text>
            
            </xsl:if>
            
            <xsl:if test="exists(title[not(@level='a')])">
                <span class="{title/parent::bibl/@type}"><i><xsl:apply-templates select="title"/></i></span><xsl:text>. </xsl:text>   
            </xsl:if>
           
            
            <xsl:if test="exists(editor/text())">
                <xsl:text>Ed. </xsl:text><span class="editor"><xsl:apply-templates select="editor"/></span>
            </xsl:if>
           
       
            <xsl:if test="exists(pubPlace/text())">                
             <span class="pubPlace"><xsl:apply-templates select="pubPlace"/><xsl:text>: </xsl:text></span>
            </xsl:if>
            
            <xsl:if test="exists(publisher/text())">
                <span class="publisher"><xsl:apply-templates select="publisher"></xsl:apply-templates><xsl:text>. </xsl:text></span>
            </xsl:if>
           
          
           <xsl:if test="exists(biblScope)">
               <span class="passage"><xsl:apply-templates select="biblScope"/><xsl:text>. </xsl:text></span>
           </xsl:if>
        
          <xsl:apply-templates select="note"/>
            
           
            <hr/>
      
             
        </li> 
        
    </xsl:template>
    
    <xsl:template match="note">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="note/bibl/biblScope">
        <span class="passage"><xsl:apply-templates/><xsl:text>. </xsl:text></span>
        
    </xsl:template>
    
    <xsl:template match="note//title[@level='a']">
        <xsl:text>"</xsl:text><xsl:apply-templates/><xsl:text>"</xsl:text>
        
    </xsl:template>
    <xsl:template match="note//title[not(@level='a')]">
        <i><xsl:apply-templates/></i>
        
    </xsl:template>

<xsl:template match="persName">
    <span class="character"><xsl:apply-templates/></span>
</xsl:template>

    <xsl:template match="placeName">
        <span class="place"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="emph">
        <em><xsl:apply-templates/></em>
    </xsl:template>
    <xsl:template match="note/p">
        <br/>
        <xsl:apply-templates/><br/>
        
    </xsl:template>
    <xsl:template match="lg">
        <br/><br/><span class="poetryBlock">
            <xsl:apply-templates/>
         </span>    
    </xsl:template>

    
    <xsl:template match="l">
        <span class="line">
         <!--   <xsl:value-of select="@n"/>-->
            <xsl:text> </xsl:text>
            
            <xsl:apply-templates/><br/></span> 
    </xsl:template>
   
    
 
    
    <xsl:template match="geo">
        <span class="place">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
   <!-- <xsl:template match="rs">
        <xsl:if test="exists(@type)">
        <span class="{@type}">
        <xsl:if test="exists(@subtype)">
            <span class="{@subtype}">
                <xsl:if test="exists(@role)">
                <span class="{@role}">
                    <xsl:apply-templates/>            
                    
                </span>
                </xsl:if>
            </span>
        </xsl:if>
        </span>
        </xsl:if>
    </xsl:template>-->
    
    <xsl:template match="rs[@type][not(@type='person')][not(@type='org')]">
        <span class="{@type}">
    <xsl:choose>            
    <xsl:when test="exists(@subtype)">        
           <span class="{@subtype}"><xsl:apply-templates/></span>
            </xsl:when>
        <xsl:when test="exists(@role)">
            <span class="{@role}"><xsl:apply-templates/></span>
        </xsl:when>
            <xsl:otherwise>
                <xsl:apply-templates/>
            </xsl:otherwise>
    </xsl:choose>
        </span>
    </xsl:template>
    
    <xsl:template match="rs[@type='person']">
        <span class="character">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="name">
        <span class="character">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="rs[@type='org']">
        <span class="character">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="orgName">
        <span class="character">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="foreign">
        <span class="foreign_{@xml:lang}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
   

</xsl:stylesheet>