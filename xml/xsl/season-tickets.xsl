<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   
   <xsl:template match="/season-tickets">
        <html>
            <head>				
				<title> Виды Абонементов </title>
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
                <h2> Виды Абонементов </h2>
                <table class="table">
                    <tr>
                        <th>Id Абонемента</th>
                        <th>Длительность абонемента</th>
                        <th>Время посещения</th>
                    </tr>

                    <xsl:for-each select = "season-ticket">
                        <tr>
                            <td><xsl:value-of select = "@id"/></td>                           
                            <td><xsl:value-of select = "duration"/></td>
                            <td><xsl:value-of select = "visit-time"/></td>                                       
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 