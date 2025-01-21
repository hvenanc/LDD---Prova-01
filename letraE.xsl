<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-public="XSLT-compat" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Clientes</title>
            </head>
            <body>
                <h1>Lista de Clientes</h1>
                <ul>
                    <xsl:for-each select="/customers/customer">
                        <xsl:sort select="@first_name" order="ascending" />
                        <li>
                            <xsl:value-of select="concat(@first_name, ' ', @last_name)"/>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
