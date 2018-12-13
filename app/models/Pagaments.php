<?php


class Pagaments extends \Phalcon\Mvc\Model
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
    protected $import;

    /**
     *
     * @var string
     */
    protected $observacions;

    /**
     *
     * @var string
     */
    protected $tipus;

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
     * Method to set the value of field import
     *
     * @param double $import
     * @return $this
     */
    public function setImport($import)
    {
        $this->import = $import;

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
     * Method to set the value of field tipus
     *
     * @param string $tipus
     * @return $this
     */
    public function setTipus($tipus)
    {
        $this->tipus = $tipus;

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
     * Returns the value of field import
     *
     * @return double
     */
    public function getImport()
    {
        return $this->import;
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
     * Returns the value of field tipus
     *
     * @return string
     */
    public function getTipus()
    {
        return $this->tipus;
    }

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("ieslluis_gestiovfc");
        $this->setSource("pagaments");
        $this->belongsTo('usuari', '\Usuaris', 'id', ['alias' => 'Usuaris']);
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'pagaments';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Pagaments[]|Pagaments|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Pagaments|\Phalcon\Mvc\Model\ResultInterface
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
