<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <div id="financeCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <xsl:for-each select="slides/slide">
        <li data-target="#financeCarousel">
          <xsl:attribute name="data-slide-to">
            <xsl:value-of select="position()-1"/>
          </xsl:attribute>
          <xsl:if test="position()=1">
            <xsl:attribute name="class">active</xsl:attribute>
          </xsl:if>
        </li>
      </xsl:for-each>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <xsl:for-each select="slides/slide">
        <div>
          <xsl:attribute name="class">
            <xsl:choose>
              <xsl:when test="position()=1">item active</xsl:when>
              <xsl:otherwise>item</xsl:otherwise>
            </xsl:choose>
          </xsl:attribute>
          <img>
            <xsl:attribute name="src">
              <xsl:value-of select="image"/>
            </xsl:attribute>
            <xsl:attribute name="alt">
              <xsl:value-of select="title"/>
            </xsl:attribute>
          </img>
          <div class="carousel-caption">
            <h3><xsl:value-of select="title"/></h3>
            <p><xsl:value-of select="description"/></p>
          </div>
        </div>
      </xsl:for-each>
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#financeCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a class="right carousel-control" href="#financeCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
  </div>
</xsl:template>
</xsl:stylesheet>