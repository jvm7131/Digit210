<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" 
    xmlns="http://www.w3.org/2000/svg"
    exclude-result-prefixes="xs math"
    version="3.0">
   
    <xsl:variable name="hallwayCount"
        select="count(//stage[@where='hallway']//sp[@who='Momo'])"/>
    
    <xsl:variable name="hospitalCount"
        select="count(//stage[@where='hospital']//sp[@who='Momo'])"/>
    
    <xsl:variable name="classroomCount"
        select="count(//stage[@where='classroom']//sp[@who='Momo'])"/>
   
    
    <!-- Hallway -->
    <svg>
        <rect width="60" 
            x="130"
            y="{250 - ($hallwayCount * 30)}"
            height="{$hallwayCount * 30}"
            class="bar">
            
        </rect>
    </svg>
    
    
    <svg> <text x="130" y="270" fill="black">Hallway</text>
        <text x="145" y="{245 - ($hallwayCount * 30)}">
            <xsl:value-of select="$hallwayCount"/></text></svg>
    
    
    <!-- Hospital -->
    <svg>
        <rect width="60" 
            x="250"
            y="{250 - ($hospitalCount * 30)}"
            height="{$hospitalCount * 30}"
            class="bar" >
             </rect>
    </svg>
    
    <svg>
        <text x="245" y="270" fill="black" >Hospital </text>
        <text x="265" y="{245 - ($hospitalCount * 30)}" >
            <xsl:value-of select="$hospitalCount"/>
        </text>
    </svg>
    
    
    <!-- Classroom -->
    <svg>
        <rect width="60"
            x="370"
            y="{250 - ($classroomCount * 30)}"
            height="{$classroomCount * 30}"
            class="bar"
            >
              </rect>
    </svg>
    
    <svg>
        <text x="365" y="270" fill="black" >Classroom</text>
        <text x="385" y="{245 - ($classroomCount * 30)}">
            <xsl:value-of select="$classroomCount"/>
        </text>
    </svg>
    
     
    <!-- title -->
    <svg>
        <text x="160" y="25" font-weight="bold" fill="black" > Momo’s Speaking Turns by Location</text>
    </svg>
    
    
</xsl:stylesheet>