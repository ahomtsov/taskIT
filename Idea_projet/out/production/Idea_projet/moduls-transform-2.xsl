<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>

            <body>
                <h1>Топ ставки за сегодня</h1>

                <table>

                    <xsl:apply-templates select="//forecast">
                        <xsl:sort select="./@rate" order="descending" data-type="number"/>
                    </xsl:apply-templates>

                </table>

            </body>
        </html>
    </xsl:template>

    <xsl:template match="forecast">

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