<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <xsl:text>[</xsl:text>
      <xsl:for-each select="mondial/country">
          <xsl:if test="position() != last()">
              <xsl:text>{</xsl:text>
                <xsl:text>"pays" : "</xsl:text><xsl:value-of select="name"/><xsl:text>",
                </xsl:text>
                <xsl:text>"capital" : "</xsl:text><xsl:value-of select="@capital"/><xsl:text>",
                </xsl:text>
                <xsl:text>"population" : "</xsl:text><xsl:for-each select="population">
                    <xsl:if test="position() = last()"><xsl:value-of select="."/></xsl:if>
                </xsl:for-each><xsl:text>",
                </xsl:text>
                <xsl:text>"superficie" : "</xsl:text><xsl:value-of select="@area"/><xsl:text>",
                </xsl:text>
                <xsl:text>"religions" : {</xsl:text><xsl:for-each select="religion">
                    <xsl:if test="position() != last()">
                        <xsl:text>"</xsl:text><xsl:value-of select="."/><xsl:text>" : </xsl:text><xsl:value-of select="@percentage"/><xsl:text>,</xsl:text>
                    </xsl:if>
                    <xsl:if test="position() = last()">
                        <xsl:text>"</xsl:text><xsl:value-of select="."/><xsl:text>" : </xsl:text><xsl:value-of select="@percentage"/>
                    </xsl:if>
                </xsl:for-each><xsl:text>},
                </xsl:text>
              <xsl:text>"ville" : [</xsl:text><xsl:for-each select=".//city">
                  <xsl:if test="position() != last()">
                      <xsl:text>"</xsl:text><xsl:value-of select="name"/><xsl:text>",</xsl:text>
                  </xsl:if>
                  <xsl:if test="position() = last()">
                      <xsl:text>"</xsl:text><xsl:value-of select="name"/><xsl:text>"</xsl:text>
                  </xsl:if>
              </xsl:for-each><xsl:text>],
              </xsl:text>
              <xsl:text>"frontières" : [</xsl:text><xsl:for-each select=".//border">
                  <xsl:if test="position() != last()">
                      <xsl:text>"</xsl:text><xsl:value-of select="@country"/><xsl:text>",</xsl:text>
                  </xsl:if>
                  <xsl:if test="position() = last()">
                      <xsl:text>"</xsl:text><xsl:value-of select="@country"/><xsl:text>"</xsl:text>
                  </xsl:if>
              </xsl:for-each><xsl:text>]
              </xsl:text>
              <xsl:text>},
              </xsl:text>
          </xsl:if>
          <xsl:if test="position() = last()">
              <xsl:text>{</xsl:text>
              <xsl:text>"pays" : "</xsl:text><xsl:value-of select="name"/><xsl:text>",
              </xsl:text>
              <xsl:text>"capital" : "</xsl:text><xsl:value-of select="@capital"/><xsl:text>",
              </xsl:text>
              <xsl:text>"population" : "</xsl:text><xsl:for-each select="population">
                  <xsl:if test="position() = last()"><xsl:value-of select="."/></xsl:if>
              </xsl:for-each><xsl:text>",
              </xsl:text>
              <xsl:text>"superficie" : "</xsl:text><xsl:value-of select="@area"/><xsl:text>",
              </xsl:text>
              <xsl:text>"religions" : {</xsl:text><xsl:for-each select="religion">
                  <xsl:if test="position() != last()">
                      <xsl:text>"</xsl:text><xsl:value-of select="."/><xsl:text>" : </xsl:text><xsl:value-of select="@percentage"/><xsl:text>,</xsl:text>
                  </xsl:if>
                  <xsl:if test="position() = last()">
                      <xsl:text>"</xsl:text><xsl:value-of select="."/><xsl:text>" : </xsl:text><xsl:value-of select="@percentage"/>
                  </xsl:if>
              </xsl:for-each><xsl:text>},
              </xsl:text>
              <xsl:text>"ville" : [</xsl:text><xsl:for-each select=".//city">
                  <xsl:if test="position() != last()">
                      <xsl:text>"</xsl:text><xsl:value-of select="name"/><xsl:text>",</xsl:text>
                  </xsl:if>
                  <xsl:if test="position() = last()">
                      <xsl:text>"</xsl:text><xsl:value-of select="name"/><xsl:text>"</xsl:text>
                  </xsl:if>
              </xsl:for-each><xsl:text>],
              </xsl:text>
              <xsl:text>"frontières" : [</xsl:text><xsl:for-each select=".//border">
                  <xsl:if test="position() != last()">
                      <xsl:text>"</xsl:text><xsl:value-of select="@country"/><xsl:text>",</xsl:text>
                  </xsl:if>
                  <xsl:if test="position() = last()">
                      <xsl:text>"</xsl:text><xsl:value-of select="@country"/><xsl:text>"</xsl:text>
                  </xsl:if>
              </xsl:for-each><xsl:text>]
              </xsl:text>
              <xsl:text>}</xsl:text>
          </xsl:if>
      </xsl:for-each>
    <xsl:text>]</xsl:text>
  </xsl:template>
</xsl:stylesheet>
