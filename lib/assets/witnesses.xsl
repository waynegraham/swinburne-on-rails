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
        <xsl:apply-templates select="//tei:listWit"/>
    </xsl:template>
    
    <xsl:template match="tei:listWit">
        <xsl:apply-templates />
    </xsl:template>
    
    <xsl:template match="tei:witness">
        <witness>
            <code><xsl:value-of select="@xml:id"/></code>
            <note><xsl:value-of select="node()"/></note>
        </witness>
    </xsl:template>
    
</xsl:stylesheet>