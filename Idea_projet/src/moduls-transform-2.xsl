<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>

            <body>
                <h1>Топ 3 ставок</h1>

                <table>

                    <xsl:apply-templates select="//change">
                        <xsl:sort select="//@rate" order="descending" data-type="number"/>
                    </xsl:apply-templates>

                </table>

            </body>
        </html>
    </xsl:template>

    <xsl:template match="change">

        <tr>
            <td><a>Имя:</a>
                <xsl:value-of select="@name"/>
            </td>
            <td>
                <xsl:value-of select="@rate"/>
            </td>
        </tr>

    </xsl:template>


</xsl:stylesheet>