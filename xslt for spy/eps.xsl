<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:ixml="http://invisiblexml.org/NS"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <xsl:template match="/">
        <html>
            
            <head>
                
                <title>
                    <h1>  <xsl:apply-templates select="descendant::title"/></h1>
                    
                </title>
                
            </head>
            
            <body>
                
                
                <div/>
                
                
                <xsl:apply-templates/> 
                
                
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>