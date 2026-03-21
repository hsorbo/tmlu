<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="*">
        <xsl:variable name="new-name">
            <xsl:choose>
                <xsl:when test="local-name() = 'ag'">angle</xsl:when>
                <xsl:when test="local-name() = 'lg'">length</xsl:when>
                <xsl:when test="local-name() = 'tc'">TensionCorridor</xsl:when>
                <xsl:when test="local-name() = 'tp'">TensionProfile</xsl:when>

                <xsl:when test="local-name() = 'HPRA'">hasProfileAzimut</xsl:when>
                <xsl:when test="local-name() = 'HPRT'">hasProfileTilt</xsl:when>
                <xsl:when test="local-name() = 'PRAZ'">profileAzimut</xsl:when>
                <xsl:when test="local-name() = 'PRT'">profileTilt</xsl:when>
                <xsl:when test="local-name() = 'RC'">RadiusCollection</xsl:when>
                <xsl:when test="local-name() = 'RV'">RadiusVector</xsl:when>

                <xsl:when test="local-name() = 'AZ'">Azimut</xsl:when>
                <xsl:when test="local-name() = 'CID'">ClosureToID</xsl:when>
                <xsl:when test="local-name() = 'CL'">Color</xsl:when>
                <xsl:when test="local-name() = 'CM'">Comment</xsl:when>
                <xsl:when test="local-name() = 'DT'">Date</xsl:when>
                <xsl:when test="local-name() = 'DP'">Depth</xsl:when>
                <xsl:when test="local-name() = 'DPI'">DepthIn</xsl:when>
                <xsl:when test="local-name() = 'D'">Down</xsl:when>
                <xsl:when test="local-name() = 'EXC'">Excluded</xsl:when>
                <xsl:when test="local-name() = 'EX'">Explorer</xsl:when>
                <xsl:when test="local-name() = 'FRID'">FromID</xsl:when>
                <xsl:when test="local-name() = 'INC'">Inclination</xsl:when>
                <xsl:when test="local-name() = 'LT'">Latitude</xsl:when>
                <xsl:when test="local-name() = 'L'">Left</xsl:when>
                <xsl:when test="local-name() = 'LG'">Length</xsl:when>
                <xsl:when test="local-name() = 'LK'">Locked</xsl:when>
                <xsl:when test="local-name() = 'LGT'">Longitude</xsl:when>
                <xsl:when test="local-name() = 'NM'">Name</xsl:when>
                <xsl:when test="local-name() = 'PRTY'">Profiletype</xsl:when>
                <xsl:when test="local-name() = 'R'">Right</xsl:when>
                <xsl:when test="local-name() = 'SC'">Section</xsl:when>
                <xsl:when test="local-name() = 'SH'">Shape</xsl:when>
                <xsl:when test="local-name() = 'TY'">Type</xsl:when>
                <xsl:when test="local-name() = 'U'">Up</xsl:when>

                <xsl:when test="local-name() = 'SRVD'">SurveyData</xsl:when>

                <xsl:otherwise>
                    <xsl:value-of select="local-name()"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>

        <xsl:element name="{$new-name}" namespace="{namespace-uri()}">
            <xsl:apply-templates select="@*|node()"/>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>
