<?xml version="1.0" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:template match="/">
    <html>
        <body>
            <h1>Ingredients</h1>
            <xsl:for-each select="//ing">
                <xsl:sort select="nom" order="ascending"/>
                <h2><xsl:value-of select="nom"/></h2>
                <xsl:for-each select="//recettes">
                        <xsl:if test="/recettes/recette/ingredients_utiles/ingredient/@ref=/ing/@ref">
                            <a href="#//recettes/recette/@nom">
                                <!--<xsl:value-of select="//recettes/recette/@nom"/>-->
                                <xsl:value-of select="/recettes/recette/ingredients_utiles/ingredient/@ref"/>
                                <br/>
                                <xsl:value-of select="/ing/@ref"/>

                            </a><br/>
                        </xsl:if>
                </xsl:for-each>
            </xsl:for-each>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>