<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:key name="storeIdKey" match="customer" use="@store_id" />

    <xsl:template match="/">
        <table border="2">
            <thead>
                <tr>
                    <th>Store ID</th>
                    <th>NumberOfClients</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each-group select="/customers/customer" group-by="@store_id">
                    <tr>
                        <td>
                            <xsl:value-of select="current-grouping-key()" />
                        </td>
                        <td>
                            <xsl:value-of select="count(current-group())" />
                        </td>
                    </tr>
                </xsl:for-each-group>
            </tbody>
        </table>
    </xsl:template>
</xsl:stylesheet>