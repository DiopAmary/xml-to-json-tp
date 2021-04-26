<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/"><xsl:text>
    </xsl:text>
        <mondial><xsl:text>
            </xsl:text>
            <xsl:for-each select="mondial/country">
                <country>
                    <pays><xsl:value-of select="name"/></pays>
                    <capital><xsl:value-of select="@capital"/></capital>
                    <population><xsl:for-each select="population">
                        <xsl:if test="position() = last()"><xsl:value-of select="."/></xsl:if>
                    </xsl:for-each></population>
                    <superficie><xsl:value-of select="@area"/></superficie>
                    <xsl:for-each select="religion">
                        <religion><xsl:attribute name="pourcentage"><xsl:value-of select="@percentage"/></xsl:attribute><xsl:value-of select="."/></religion>
                    </xsl:for-each>
                    <xsl:for-each select=".//city">
                        <ville><xsl:value-of select="name"/></ville>
                    </xsl:for-each>
                    <xsl:for-each select="border">
                        <frontière><xsl:value-of select="@country"/></frontière>
                    </xsl:for-each>
                </country><xsl:text>
            </xsl:text>
            </xsl:for-each>
        <xsl:text>
    </xsl:text></mondial>
    </xsl:template>
</xsl:stylesheet>