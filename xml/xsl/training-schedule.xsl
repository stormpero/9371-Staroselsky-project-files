<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   
   <xsl:template match="/training-schedule">
        <html>
            <head>				
				<title> Тренировки </title>
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
                <h2> Тренировки </h2>
                <table class="table">
                    <tr>
                        <th>Id Клиента</th>
                        <th>Id Тренера</th>
                        <th colspan="2">Дата тренировки</th>
                        <th>Тип тренировки</th>
                        <th>Статус</th>
                    </tr>

                    <xsl:for-each select = "training">
                        <tr>
                            <td><xsl:value-of select = "client/@id"/></td>
                            <td><xsl:value-of select = "instructor/@id"/></td>
                            <xsl:for-each select="training-date">
                                <td><xsl:value-of select = "data"/></td>
                                <td><xsl:value-of select = "time"/></td>
                            </xsl:for-each>                            
                            <td><xsl:value-of select = "training-type"/></td>
                            <td><xsl:value-of select = "status"/></td> 
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 