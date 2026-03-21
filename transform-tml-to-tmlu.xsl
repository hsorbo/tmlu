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
                <xsl:when test="local-name() = 'angle'">ag</xsl:when>
                <xsl:when test="local-name() = 'length'">lg</xsl:when>
                <xsl:when test="local-name() = 'TensionCorridor'">tc</xsl:when>
                <xsl:when test="local-name() = 'TensionProfile'">tp</xsl:when>

                <xsl:when test="local-name() = 'hasProfileAzimut'">HPRA</xsl:when>
                <xsl:when test="local-name() = 'hasProfileTilt'">HPRT</xsl:when>
                <xsl:when test="local-name() = 'profileAzimut'">PRAZ</xsl:when>
                <xsl:when test="local-name() = 'profileTilt'">PRT</xsl:when>
                <xsl:when test="local-name() = 'RadiusCollection'">RC</xsl:when>
                <xsl:when test="local-name() = 'RadiusVector'">RV</xsl:when>

                <xsl:when test="local-name() = 'Azimut'">AZ</xsl:when>
                <xsl:when test="local-name() = 'ClosureToID'">CID</xsl:when>
                <xsl:when test="local-name() = 'Color'">CL</xsl:when>
                <xsl:when test="local-name() = 'Comment'">CM</xsl:when>
                <xsl:when test="local-name() = 'Date'">DT</xsl:when>
                <xsl:when test="local-name() = 'Depth'">DP</xsl:when>
                <xsl:when test="local-name() = 'DepthIn'">DPI</xsl:when>
                <xsl:when test="local-name() = 'Down'">D</xsl:when>
                <xsl:when test="local-name() = 'Excluded'">EXC</xsl:when>
                <xsl:when test="local-name() = 'Explorer'">EX</xsl:when>
                <xsl:when test="local-name() = 'FromID'">FRID</xsl:when>
                <xsl:when test="local-name() = 'Inclination'">INC</xsl:when>
                <xsl:when test="local-name() = 'Latitude'">LT</xsl:when>
                <xsl:when test="local-name() = 'Left'">L</xsl:when>
                <xsl:when test="local-name() = 'Length'">LG</xsl:when>
                <xsl:when test="local-name() = 'Locked'">LK</xsl:when>
                <xsl:when test="local-name() = 'Longitude'">LGT</xsl:when>
                <xsl:when test="local-name() = 'Name'">NM</xsl:when>
                <xsl:when test="local-name() = 'Profiletype'">PRTY</xsl:when>
                <xsl:when test="local-name() = 'Right'">R</xsl:when>
                <xsl:when test="local-name() = 'Section'">SC</xsl:when>
                <xsl:when test="local-name() = 'Shape'">SH</xsl:when>
                <xsl:when test="local-name() = 'Type'">TY</xsl:when>
                <xsl:when test="local-name() = 'Up'">U</xsl:when>

                <xsl:when test="local-name() = 'SurveyData'">SRVD</xsl:when>

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
