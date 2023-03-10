<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output method="html" doctype-system="about:legacy-compat"/>
 <xsl:template match="/reservaeventos">
 <html lang="es">

	<head>
		<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
		<meta charset="utf-8"/>
		<meta name="description" content="Página principal" />
		<title>teatro</title>
	</head>

	<body>
		<header>
			<img src= "../img/logotipo.png" alt= "Reservas" />
			<a href="teatro.xml">Teatro</a>
			<a href="restaurante.xml">Restaurante</a>
			<a href="festival.xml">Festival</a>
		</header>
		
		<main class="principal">
			<section class="teatro">
				<h1>PROXIMAS OBRAS DE TEATRO</h1>
				<xsl:apply-templates select="teatro">
					<xsl:sort select="fechahora/@dia ='2023-01'" order ="descending" />
				</xsl:apply-templates>
			</section>
		</main>

		<footer>
			<address>&#169; 2020 desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>

 </xsl:template>
  
 <!--plantilla para el teatro -->
<xsl:template match="teatro">
	<xsl:variable name="ft" select="fechahora/@dia"/>
	
		<ul>
			<li><xsl:value-of select="$ft"/>: </li>
		
	<xsl:choose>
		<xsl:when test = 'precio &lt;"20"'>
		<span class = "obra subrayado"><xsl:value-of select="obra"/></span>
		</xsl:when>
		<xsl:otherwise>
			<xsl:value-of select="obra"/>
		</xsl:otherwise>
	</xsl:choose>
	
	</ul>




	
</xsl:template>




</xsl:stylesheet>