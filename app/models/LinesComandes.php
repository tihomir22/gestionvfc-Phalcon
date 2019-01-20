<?php



class LinesComandes extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    protected $linea;

    /**
     *
     * @var integer
     */
    protected $ncomanda;

    /**
     *
     * @var string
     */
    protected $producte;

    /**
     *
     * @var integer
     */
    protected $unitats;

    /**
     *
     * @var integer
     */
    protected $pventa;

    /**
     *
     * @var integer
     */
    protected $servit;

    /**
     *
     * @var string
     */
    protected $observacions;

    /**
     * Method to set the value of field linea
     *
     * @param integer $linea
     * @return $this
     */
    public function setLinea($linea)
    {
        $this->linea = $linea;

        return $this;
    }

    /**
     * Method to set the value of field ncomanda
     *
     * @param integer $ncomanda
     * @return $this
     */
    public function setNcomanda($ncomanda)
    {
        $this->ncomanda = $ncomanda;

        return $this;
    }

    /**
     * Method to set the value of field producte
     *
     * @param string $producte
     * @return $this
     */
    public function setProducte($producte)
    {
        $this->producte = $producte;

        return $this;
    }

    /**
     * Method to set the value of field unitats
     *
     * @param integer $unitats
     * @return $this
     */
    public function setUnitats($unitats)
    {
        $this->unitats = $unitats;

        return $this;
    }

    /**
     * Method to set the value of field pventa
     *
     * @param integer $pventa
     * @return $this
     */
    public function setPventa($pventa)
    {
        $this->pventa = $pventa;

        return $this;
    }

    /**
     * Method to set the value of field servit
     *
     * @param integer $servit
     * @return $this
     */
    public function setServit($servit)
    {
        $this->servit = $servit;

        return $this;
    }

    /**
     * Method to set the value of field observacions
     *
     * @param string $observacions
     * @return $this
     */
    public function setObservacions($observacions)
    {
        $this->observacions = $observacions;

        return $this;
    }

    /**
     * Returns the value of field linea
     *
     * @return integer
     */
    public function getLinea()
    {
        return $this->linea;
    }

    /**
     * Returns the value of field ncomanda
     *
     * @return integer
     */
    public function getNcomanda()
    {
        return $this->ncomanda;
    }

    /**
     * Returns the value of field producte
     *
     * @return string
     */
    public function getProducte()
    {
        return $this->producte;
    }

    /**
     * Returns the value of field unitats
     *
     * @return integer
     */
    public function getUnitats()
    {
        return $this->unitats;
    }

    /**
     * Returns the value of field pventa
     *
     * @return integer
     */
    public function getPventa()
    {
        return $this->pventa;
    }

    /**
     * Returns the value of field servit
     *
     * @return integer
     */
    public function getServit()
    {
        return $this->servit;
    }

    /**
     * Returns the value of field observacions
     *
     * @return string
     */
    public function getObservacions()
    {
        return $this->observacions;
    }

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("ieslluis_gestiovfc");
        $this->setSource("lines_comandes");
        $this->hasMany('ncomanda', 'Comandes', 'numero', ['alias' => 'Comandes']);
        $this->hasMany('producte', 'Productes', 'codi', ['alias' => 'Productes']);
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'lines_comandes';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return LinesComandes[]|LinesComandes|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return LinesComandes|\Phalcon\Mvc\Model\ResultInterface
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
