<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xi="http://www.w3.org/2001/XInclude" 
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    exclude-result-prefixes="xsl xi fn tei #default"
    version="1.0">
    
    <xsl:output encoding="UTF-8" method="xml" omit-xml-declaration="yes"/>
 
    <xsl:key name="ids" match="//*" use="@xml:id"/>
    
    <xsl:template match="/" priority="99">
        <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div/tei:div[@type='opening']"/>
    </xsl:template>
    
    <xsl:template match="tei:body">
        <xsl:apply-templates />
    </xsl:template>
    
    <xsl:template match="tei:div[@type='opening']">
        <div class="opening">
            <xsl:apply-templates />
        </div>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='verso']">
        <div class="verso">
            <xsl:apply-templates />
        </div>
    </xsl:template>
    
    <xsl:template match="tei:div[@type='recto']">
        <div class="recto">
            <xsl:apply-templates />
        </div>
    </xsl:template>
    
    <xsl:template match="tei:pb">
        <span class="page_number"><xsl:value-of select="@n"/></span>
    </xsl:template>
    
    <xsl:template match="tei:head">
        <h1 class="{@rend}"><xsl:value-of select="node()"/></h1>
    </xsl:template>
    
    <xsl:template match="tei:lg">
        <div class="linegroup">
            <xsl:apply-templates />
        </div>
    </xsl:template>
    
    <xsl:template match="tei:l">
        <span class="line {@rend}"><xsl:apply-templates /></span>
    </xsl:template>
    
    <xsl:template match="tei:hi">
        <xsl:choose>
            <xsl:when test="@rend = 'sc'">
                <span class="smallcaps"><xsl:apply-templates/></span>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="tei:app">
        <xsl:apply-templates select="tei:lem"/>
    </xsl:template>
    
    <xsl:template match="tei:lem">
        <span class="lem" data-app="{@wit}"><xsl:apply-templates/></span>
    </xsl:template>
    
</xsl:stylesheet>