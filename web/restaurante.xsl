<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output method="html" doctype-system="about:legacy-compat"/>
 
 <xsl:template match="/reservaeventos">
<html lang="es">

    <head>
		<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
		<meta charset="utf-8"/>
		<meta name="description" content="Página principal" />
		<title>Restaurantes</title>
	</head>

    <body>
		<header>
			<img src= "../img/logotipo.png" alt= "Reservas" />
			<a href="teatro.xml">Teatro</a>
			<a href="restaurante.xml">Restaurante</a>
			<a href="festival.xml">Festival</a>
		</header>

        <main>
        <h1>
         <xsl:apply-templates select="//restaurante"/>
        </h1>
	
        </main>

		<footer>
			<address>&#169; 2020 desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>

</xsl:template>
 <!--plantilla para el restaurante -->
  <xsl:template match="restaurante">
<xsl:variable name="rest" select="nombrerestaurante"/>
      <h1>
        <a href="{informacion[@tipo='web']}">
          <xsl:value-of select="$rest"/>
        </a> - 
        <xsl:value-of select="ciudad"/>
      </h1>
      
      <h3>Menús:</h3>
      <ul>
        <xsl:apply-templates select="menu"/>
      </ul>

  </xsl:template>




  <xsl:template match="menu">
    <li><xsl:value-of select="@tipo"/>: <xsl:apply-templates/></li>
  </xsl:template>

  <xsl:template match="plato">
    <xsl:value-of select="."/><br/>
  </xsl:template>



</xsl:stylesheet>