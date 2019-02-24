<?php
namespace inquid\indicadoresmexico;
/**
 * Class IndicadoresMexico
 * @author Inquid
 * @author @gogl92
 */
class IndicadoresMexico
{
    const banxicourl = 'http://www.banxico.org.mx:80/DgieWSWeb/DgieWS?WSDL';
    const nameSpaceUrl = 'http://ws.dgie.banxico.org.mx';
    const prefix = 'bm';
    const googleFinanceUrl = 'http://www.google.com/finance/info?client=ig&q=';
    private $_client;
    private $_debug = false;

    /**
    *
    */
    public static function actionGetInflacion()
    {
        return 4.86;
    }

    /**
    *
    */
    public static function actionGetPetroleo()
    {
        return 48.72;
    }


    /**
     * SP68257 Valor de UDIS.
     * @return null|string
     */
    public function getUdisBanxico()
    {
        $client = $this->_getClient();
        try {
            $result = $client->udisBanxico();
        } catch (SoapFault $e) {
            return $e->getMessage();
        }
        if (!empty($result)) {
            $dom = new DOMDocument();
            $dom->loadXML($result);
            $xpath = new DOMXPath($dom);
            $xpath->registerNamespace(self::prefix, self::nameSpaceUrl);
            $val = $xpath->evaluate("//*[@IDSERIE='SP68257']/*/@OBS_VALUE");
            return ($val->item(0)->value);
        }
        return null;
    }

    /**
     * SF43707 Reservas Internacionales.
     * @return null|string
     */
    public function getReservasInternacionalesBanxico()
    {
        $client = $this->_getClient();
        try {
            $result = $client->reservasInternacionalesBanxico();
        } catch (SoapFault $e) {
            return $e->getMessage();
        }
        if (!empty($result)) {
            $dom = new DOMDocument();
            $dom->loadXML($result);
            $xpath = new DOMXPath($dom);
            $xpath->registerNamespace(self::prefix, self::nameSpaceUrl);
            $val = $xpath->evaluate("//*[@IDSERIE='SF43707']/*/@OBS_VALUE");
            return ($val->item(0)->value);
        }
        return null;
    }

    /**
     * @param $serie
     * SF43718 Pesos por Dólar. FIX.
     * SF60653 Pesos por Dólar. Fecha de liquidación.
     * SF46410 Euro.
     * SF46406 Yen japonés.
     * SF46407 Libra esterlina.
     * SF60632 Dólar Canadiense.
     * @return null|string
     */
    public function getTipoCambioBanxico($serie)
    {
        $client = $this->_getClient();
        try {
            $result = $client->tiposDeCambioBanxico();
        } catch (SoapFault $e) {
            return $e->getMessage();
        }
        if (!empty($result)) {
            $dom = new DOMDocument();
            $dom->loadXML($result);
            $xpath = new DOMXPath($dom);
            $xpath->registerNamespace(self::prefix, self::nameSpaceUrl);
            $val = $xpath->evaluate("//*[@IDSERIE='" . $serie . "']/*/@OBS_VALUE");
            return ($val->item(0)->value);
        }
        return null;
    }

    /**
     * @param $tasa
     * SF61745 Tasa objetivo.
     * SF60648 TIIE a 28 días.
     * SF60649 TIIE a 91 días.
     * SF60633 Cetes a 28 días.
     * @return null|string
     */
    public function getTasaBanxico($tasa)
    {
        $client = $this->_getClient();
        try {
            $result = $client->tasasDeInteresBanxico();
        } catch (SoapFault $e) {
            return $e->getMessage();
        }
        if (!empty($result)) {
            $dom = new DOMDocument();
            $dom->loadXML($result);
            $xpath = new DOMXPath($dom);
            $xpath->registerNamespace(self::prefix, self::nameSpaceUrl);
            $val = $xpath->evaluate("//*[@IDSERIE='" . $tasa . "']/*/@OBS_VALUE");
            return ($val->item(0)->value);
        }
        return null;
    }

    /**
     * @param $key
     * Grupo México S.A. de C.V. (BMV:GMEXICOB)
     * Grupo Bimbo S.A.B. de C.V.(BMV:BIMBOA)
     *
     * @return null
     */
    public function getGoogleValues($key)
    {
        //this isn't the most accurate as it's only taking into account 2 data points. However, I'm using this one as it was requested specifically as far as I can tell. An alternate treatment is in comments above.
        //get url for this symbol
        $infoUrl = self::googleFinanceUrl . $key;
        //get contents, remove //
        $infoObj = str_replace('//', '', file_get_contents($infoUrl));
        if ($infoObj) {
            //clean control chars and convert to asc array
            $infoObj = json_decode(utf8_encode($infoObj), true);
            $final = $infoObj[0]['l_fix'];
            //output row
            return $final;
        }
        return null;
    }


    /**
     * @return SoapClient
     */
    private function _getClient()
    {
        if (empty($this->_client)) {
            $this->_client = $this->_setClient();
        }
        return $this->_client;
    }

    /**
     * @return SoapClient
     */
    private function _setClient()
    {
        return new SoapClient(null,
            array('location' => self::banxicourl,
                'uri' => 'http://DgieWSWeb/DgieWS?WSDL',
                'encoding' => 'ISO-8859-1',
                'trace' => $this->_getDebug()
            ));
    }

    private function _getDebug()
    {
        return $this->_debug;
    }


}
