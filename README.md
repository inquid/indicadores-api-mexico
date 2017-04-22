# indicadores-api-mexico


Esta sencilla librería regresa los indicadores más relevantes de la economía mexicana.
Para devolver el IPC se utiliza Google Finance el cual puede devolver también información de múltiples bolsas de valores del mundo.
# Usage - Uso
```PHP
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Uso de Indicadores</title>
</head>
<body>
<?php
$banxico = new IndicadoresMexico();
echo "<br>";
echo "Cetes a 28 días".$banxico->getTasaBanxico("SF60633");
echo "<br>";
echo "UDIS de BANXICO".$banxico->getUdisBanxico();
echo "<br>";
echo "Acción de Apple: ".$banxico->getGoogleValues("NASDAQ:AAPL");
echo "<br>";
?>
</body>
</html>
```
# Información sobre el webservice de BANXICO:
Información acerca del Webservice “DgieWS”
Banco de México pone a disposición del público general un webservice que facilita la descarga oportuna
de la información más consultada en su sitio Web. El Webservice permite automatizar la extracción de
información, misma que es devuelta en un formato estándar y fácil de interpretar por sistemas
informáticos.
Ubicación
El Webservice denominado “DgieWS” se localiza en la siguiente ruta:
http://www.banxico.org.mx/DgieWSWeb/DgieWS?WSDL
Características



Devuelve el dato oportuno de algunos indicadores publicados por el Banco de México.
Mediante este servicio únicamente se puede obtener el dato más reciente (dato oportuno), no
datos históricos.
El Webservice es SOAP de estilo RPC/Encoded.
Funcionalidad
Las operaciones disponibles en este Webservice no aceptan parámetros. Todas regresan una cadena
de texto en formato XML (estándar SDMX-ML), la cual puede contener más de un indicador.
Los métodos disponibles dentro del Webservice son las siguientes y contienen la siguiente
información:
 reservasInternacionalesBanxico. Devuelve el dato oportuno de las Reservas Internacionales.
o SF43707 Reservas Internacionales.
 tasasDeInteresBanxico. Devuelve los datos oportunos de las Tasas de Interés:
o SF61745 Tasa objetivo.
o SF60648 TIIE a 28 días.
o SF60649 TIIE a 91 días.
o SF60633 Cetes a 28 días.
 tiposDeCambioBanxico. Devuelve los datos oportunos de los Tipos de Cambio:
o SF43718 Pesos por Dólar. FIX.
o SF60653 Pesos por Dólar. Fecha de liquidación.
o SF46410 Euro.
o SF46406 Yen japonés.
o SF46407 Libra esterlina.
o SF60632 Dólar Canadiense.
 udisBanxico. Devuelve el dato oportuno del valor de las UDIS:
o SP68257 Valor de UDIS.
Datos de contacto:
Dirección General de Investigación Económica / Subgerencia de Desarrollo de Sistemas
Teléfono: (55)5237 2000 extensión 3662
Correo: sie@banxico.org.mx
