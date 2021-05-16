<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   
   <xsl:template match="/visit-list">
        <html>
            <head>				
				<title> Посещения Клиентов </title>
                <style type="text/css">
                    .table{
                        border-collapse: collapse;
                    }
                    .table tr td, th{
                        padding: 10px;
                        border: 1px solid black;
                        text-align: center;
                    }
                    .table th{
                        background: #90ee90;
                  </style>
			</head>	
            <body>
                <h2> Посещения Клиентов </h2>
                <table class="table">
                    <tr>
                        <th>Id Клиента</th>
                        <th colspan="2">Дата Входа</th>
                        <th colspan="2">Дата Выхода</th>
                        <th>Время в зале</th>
                    </tr>

                    <xsl:for-each select = "visit">
                        <tr>
                            <td><xsl:value-of select = "client-id/@id"/></td>
                            <xsl:for-each select="entry-date">
                                <td><xsl:value-of select = "data"/></td>
                                <td><xsl:value-of select = "time"/></td>
                            </xsl:for-each>                            
                            <xsl:for-each select="exit-data">
                                <td><xsl:value-of select = "data"/></td>
                                <td><xsl:value-of select = "time"/></td>
                            </xsl:for-each>  
                            <td><xsl:value-of select = "duration"/></td>   
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 