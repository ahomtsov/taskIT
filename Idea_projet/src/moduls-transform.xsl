<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>

            <body>
                <h1>Статистика на сегодня</h1>
                <table>
                <xsl:apply-templates select="//change"/>
                </table>
                <h1>Всего ставок за сегодня: <xsl:value-of select="count(//change)"/></h1>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="change">
        <tr>
            <td><a>Время:</a>
                <xsl:value-of select="@time"/>
            </td>
            <td>
                <xsl:value-of select="@currency"/>
            </td>
            <td>
           <xsl:apply-templates select="./forecast"/>
            </td>
        </tr>
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