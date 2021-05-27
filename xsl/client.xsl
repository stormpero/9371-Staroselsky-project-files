<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   
   <xsl:template match="/clients">
        <html>
            <head>				
				<title> Список Клиентов </title>
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
                <h2>Список Клиентов</h2>
                <table class="table">
                    <tr>
                        <th>Id Клиента</th>
                        <th>ФИО</th>
                        <th>Дата Рождения</th>
                        <th>Пол</th>
                        <th>Возраст</th>
                        <th>Номер телефона</th> 
                        <th>E-mail</th>
                        <th>Адрес</th>
                        <th>Паспорт</th>
                        <th>Id Абонемента</th>
                        <th>Номер договора</th>
                        <th>Id Инструктора</th>
                    </tr>

                    <xsl:for-each select = "client">
                        <tr>
                            <td><xsl:value-of select = "client-id/@id"/></td>
                            <xsl:for-each select="fullname">
                                <td>
                                    <xsl:value-of select = "surname"/><xsl:text> </xsl:text>
                                    <xsl:value-of select = "name"/><xsl:text> </xsl:text>
                                    <xsl:value-of select = "patronymic"/> 
                                </td>
                            </xsl:for-each>                            
                            <td><xsl:value-of select = "birthdate"/></td>
                            <td><xsl:value-of select = "gender"/></td>
                            <td><xsl:value-of select = "age"/></td>
                            <td><xsl:value-of select = "phone-number"/></td>
                            <td><xsl:value-of select = "email"/></td>
                            <td><xsl:value-of select = "address"/></td>
                            <td><xsl:value-of select = "passport"/></td>
                            <td><xsl:value-of select = "season-ticket/@id"/></td>
                            <td><xsl:value-of select = "contract-number"/></td>
                            <td><xsl:value-of select = "instructor/@id"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet> 