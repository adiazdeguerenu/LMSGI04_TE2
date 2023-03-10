<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output method="html" doctype-system="about:legacy-compat"/>
 <xsl:template match="/reservaeventos">
 <html lang="es">

	<head>
		<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
		<meta charset="utf-8"/>
		<meta name="description" content="Página principal" />
		<title>festival</title>
	</head>

	<body>
		<header>
			<img src= "../img/logotipo.png" alt= "Reservas" />
			<a href="teatro.xml">Teatro</a>
			<a href="restaurante.xml">Restaurante</a>
			<a href="festival.xml">Festival</a>
		</header>

		<section class="festival">
			<h1>Festivales de rock</h1>
				<table>
                    <tr>
                        <th>FESTIVAL</th>
                        <th>CONCIERTO</th>
                        <th>FECHA</th>
                        <th>HORA</th>
                        <th>LUGAR</th>
                    </tr>
                    <!-- Aplicar plantilla de conciertos por tipo de música "rock" -->
                    <xsl:apply-templates select="//concierto[grupo/@tipomusica='rock']"/>
                </table>
		</section>
		<footer>
			<address>&#169; 2020 desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>
</xsl:template>
<!-- Plantilla de concierto -->
  <xsl:template match="concierto">
    <tr>
            <td><xsl:value-of select="../preceding-sibling::nombrefesti[1]"/></td>
            <td><xsl:value-of select="grupo"/></td>
            <td><xsl:value-of select="fecha"/></td>
            <td><xsl:value-of select="hora"/></td>
            <td><xsl:value-of select="../following-sibling::lugar[1]"/></td>


    </tr>
  </xsl:template>

</xsl:stylesheet>