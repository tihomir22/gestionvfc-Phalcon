<?php



class Comandes extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    protected $numero;

    /**
     *
     * @var string
     */
    protected $data;

    /**
     *
     * @var integer
     */
    protected $usuari;

    /**
     *
     * @var double
     */
    protected $total;

    /**
     *
     * @var string
     */
    protected $servida;

    /**
     *
     * @var string
     */
    protected $observaciones;

    /**
     * Method to set the value of field numero
     *
     * @param integer $numero
     * @return $this
     */
    public function setNumero($numero)
    {
        $this->numero = $numero;

        return $this;
    }

    /**
     * Method to set the value of field data
     *
     * @param string $data
     * @return $this
     */
    public function setData($data)
    {
        $this->data = $data;

        return $this;
    }

    /**
     * Method to set the value of field usuari
     *
     * @param integer $usuari
     * @return $this
     */
    public function setUsuari($usuari)
    {
        $this->usuari = $usuari;

        return $this;
    }

    /**
     * Method to set the value of field total
     *
     * @param double $total
     * @return $this
     */
    public function setTotal($total)
    {
        $this->total = $total;

        return $this;
    }

    /**
     * Method to set the value of field servida
     *
     * @param string $servida
     * @return $this
     */
    public function setServida($servida)
    {
        $this->servida = $servida;

        return $this;
    }

    /**
     * Method to set the value of field observaciones
     *
     * @param string $observaciones
     * @return $this
     */
    public function setObservaciones($observaciones)
    {
        $this->observaciones = $observaciones;

        return $this;
    }

    /**
     * Returns the value of field numero
     *
     * @return integer
     */
    public function getNumero()
    {
        return $this->numero;
    }

    /**
     * Returns the value of field data
     *
     * @return string
     */
    public function getData()
    {
        return $this->data;
    }

    /**
     * Returns the value of field usuari
     *
     * @return integer
     */
    public function getUsuari()
    {
        return $this->usuari;
    }

    /**
     * Returns the value of field total
     *
     * @return double
     */
    public function getTotal()
    {
        return $this->total;
    }

    /**
     * Returns the value of field servida
     *
     * @return string
     */
    public function getServida()
    {
        return $this->servida;
    }

    /**
     * Returns the value of field observaciones
     *
     * @return string
     */
    public function getObservaciones()
    {
        return $this->observaciones;
    }

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("ieslluis_gestiovfc");
        $this->setSource("comandes");
        $this->belongsTo('usuari', '\Usuaris', 'id', ['alias' => 'Usuaris']);
        $this->belongsTo('numero', '\LinesComandes', 'ncomanda', ['alias' => 'LinesComandes']);
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'comandes';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Comandes[]|Comandes|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Comandes|\Phalcon\Mvc\Model\ResultInterface
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
