<?php




class Usuaris extends \Phalcon\Mvc\Model
{

    /**
     *
     * @var integer
     */
    protected $id;

    /**
     *
     * @var string
     */
    protected $dni;

    /**
     *
     * @var string
     */
    protected $nom;

    /**
     *
     * @var string
     */
    protected $cognoms;

    /**
     *
     * @var string
     */
    protected $email;

    /**
     *
     * @var string
     */
    protected $contra;

    /**
     *
     * @var string
     */
    protected $datanaixement;

    /**
     *
     * @var string
     */
    protected $cicle;

    /**
     *
     * @var string
     */
    protected $datacaducitat;

    /**
     *
     * @var string
     */
    protected $nacionalitat;

    /**
     *
     * @var string
     */
    protected $adreça;

    /**
     *
     * @var string
     */
    protected $cp;

    /**
     *
     * @var string
     */
    protected $poblacio;

    /**
     *
     * @var string
     */
    protected $provincia;

    /**
     *
     * @var string
     */
    protected $telefon1;

    /**
     *
     * @var string
     */
    protected $telefon2;

    /**
     *
     * @var string
     */
    protected $telefon3;

    /**
     *
     * @var string
     */
    protected $sexe;

    /**
     *
     * @var string
     */
    protected $tipus;

    /**
     *
     * @var string
     */
    protected $foto;

    /**
     *
     * @var string
     */
    protected $fotodni;

    /**
     *
     * @var string
     */
    protected $autoritzacio;

    /**
     *
     * @var string
     */
    protected $observacions;

    /**
     * Method to set the value of field id
     *
     * @param integer $id
     * @return $this
     */
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Method to set the value of field dni
     *
     * @param string $dni
     * @return $this
     */
    public function setDni($dni)
    {
        $this->dni = $dni;

        return $this;
    }

    /**
     * Method to set the value of field nom
     *
     * @param string $nom
     * @return $this
     */
    public function setNom($nom)
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Method to set the value of field cognoms
     *
     * @param string $cognoms
     * @return $this
     */
    public function setCognoms($cognoms)
    {
        $this->cognoms = $cognoms;

        return $this;
    }

    /**
     * Method to set the value of field email
     *
     * @param string $email
     * @return $this
     */
    public function setEmail($email)
    {
        $this->email = $email;

        return $this;
    }

    /**
     * Method to set the value of field contra
     *
     * @param string $contra
     * @return $this
     */
    public function setContra($contra)
    {
        $this->contra = $contra;

        return $this;
    }

    /**
     * Method to set the value of field datanaixement
     *
     * @param string $datanaixement
     * @return $this
     */
    public function setDatanaixement($datanaixement)
    {
        $this->datanaixement = $datanaixement;

        return $this;
    }

    /**
     * Method to set the value of field cicle
     *
     * @param string $cicle
     * @return $this
     */
    public function setCicle($cicle)
    {
        $this->cicle = $cicle;

        return $this;
    }

    /**
     * Method to set the value of field datacaducitat
     *
     * @param string $datacaducitat
     * @return $this
     */
    public function setDatacaducitat($datacaducitat)
    {
        $this->datacaducitat = $datacaducitat;

        return $this;
    }

    /**
     * Method to set the value of field nacionalitat
     *
     * @param string $nacionalitat
     * @return $this
     */
    public function setNacionalitat($nacionalitat)
    {
        $this->nacionalitat = $nacionalitat;

        return $this;
    }

    /**
     * Method to set the value of field adreça
     *
     * @param string $adreça
     * @return $this
     */
    public function setAdreça($adreça)
    {
        $this->adreça = $adreça;

        return $this;
    }

    /**
     * Method to set the value of field cp
     *
     * @param string $cp
     * @return $this
     */
    public function setCp($cp)
    {
        $this->cp = $cp;

        return $this;
    }

    /**
     * Method to set the value of field poblacio
     *
     * @param string $poblacio
     * @return $this
     */
    public function setPoblacio($poblacio)
    {
        $this->poblacio = $poblacio;

        return $this;
    }

    /**
     * Method to set the value of field provincia
     *
     * @param string $provincia
     * @return $this
     */
    public function setProvincia($provincia)
    {
        $this->provincia = $provincia;

        return $this;
    }

    /**
     * Method to set the value of field telefon1
     *
     * @param string $telefon1
     * @return $this
     */
    public function setTelefon1($telefon1)
    {
        $this->telefon1 = $telefon1;

        return $this;
    }

    /**
     * Method to set the value of field telefon2
     *
     * @param string $telefon2
     * @return $this
     */
    public function setTelefon2($telefon2)
    {
        $this->telefon2 = $telefon2;

        return $this;
    }

    /**
     * Method to set the value of field telefon3
     *
     * @param string $telefon3
     * @return $this
     */
    public function setTelefon3($telefon3)
    {
        $this->telefon3 = $telefon3;

        return $this;
    }

    /**
     * Method to set the value of field sexe
     *
     * @param string $sexe
     * @return $this
     */
    public function setSexe($sexe)
    {
        $this->sexe = $sexe;

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
     * Method to set the value of field foto
     *
     * @param string $foto
     * @return $this
     */
    public function setFoto($foto)
    {
        $this->foto = $foto;

        return $this;
    }

    /**
     * Method to set the value of field fotodni
     *
     * @param string $fotodni
     * @return $this
     */
    public function setFotodni($fotodni)
    {
        $this->fotodni = $fotodni;

        return $this;
    }

    /**
     * Method to set the value of field autoritzacio
     *
     * @param string $autoritzacio
     * @return $this
     */
    public function setAutoritzacio($autoritzacio)
    {
        $this->autoritzacio = $autoritzacio;

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
     * Returns the value of field id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Returns the value of field dni
     *
     * @return string
     */
    public function getDni()
    {
        return $this->dni;
    }

    /**
     * Returns the value of field nom
     *
     * @return string
     */
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * Returns the value of field cognoms
     *
     * @return string
     */
    public function getCognoms()
    {
        return $this->cognoms;
    }

    /**
     * Returns the value of field email
     *
     * @return string
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Returns the value of field contra
     *
     * @return string
     */
    public function getContra()
    {
        return $this->contra;
    }

    /**
     * Returns the value of field datanaixement
     *
     * @return string
     */
    public function getDatanaixement()
    {
        return $this->datanaixement;
    }

    /**
     * Returns the value of field cicle
     *
     * @return string
     */
    public function getCicle()
    {
        return $this->cicle;
    }

    /**
     * Returns the value of field datacaducitat
     *
     * @return string
     */
    public function getDatacaducitat()
    {
        return $this->datacaducitat;
    }

    /**
     * Returns the value of field nacionalitat
     *
     * @return string
     */
    public function getNacionalitat()
    {
        return $this->nacionalitat;
    }

    /**
     * Returns the value of field adreça
     *
     * @return string
     */
    public function getAdreça()
    {
        return $this->adreça;
    }

    /**
     * Returns the value of field cp
     *
     * @return string
     */
    public function getCp()
    {
        return $this->cp;
    }

    /**
     * Returns the value of field poblacio
     *
     * @return string
     */
    public function getPoblacio()
    {
        return $this->poblacio;
    }

    /**
     * Returns the value of field provincia
     *
     * @return string
     */
    public function getProvincia()
    {
        return $this->provincia;
    }

    /**
     * Returns the value of field telefon1
     *
     * @return string
     */
    public function getTelefon1()
    {
        return $this->telefon1;
    }

    /**
     * Returns the value of field telefon2
     *
     * @return string
     */
    public function getTelefon2()
    {
        return $this->telefon2;
    }

    /**
     * Returns the value of field telefon3
     *
     * @return string
     */
    public function getTelefon3()
    {
        return $this->telefon3;
    }

    /**
     * Returns the value of field sexe
     *
     * @return string
     */
    public function getSexe()
    {
        return $this->sexe;
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
     * Returns the value of field foto
     *
     * @return string
     */
    public function getFoto()
    {
        return $this->foto;
    }

    /**
     * Returns the value of field fotodni
     *
     * @return string
     */
    public function getFotodni()
    {
        return $this->fotodni;
    }

    /**
     * Returns the value of field autoritzacio
     *
     * @return string
     */
    public function getAutoritzacio()
    {
        return $this->autoritzacio;
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
     * Validations and business logic
     *
     * @return boolean
     */
    public function validation()
    {
        $validator = new Validation();

        $validator->add(
            'email',
            new EmailValidator(
                [
                    'model'   => $this,
                    'message' => 'Please enter a correct email address',
                ]
            )
        );

        return $this->validate($validator);
    }

    /**
     * Initialize method for model.
     */
    public function initialize()
    {
        $this->setSchema("ieslluis_gestiovfc");
        $this->setSource("usuaris");
        $this->hasMany('id', 'Vendes', 'usuari', ['alias' => 'Vendes']);
        $this->belongsTo('cicle', '\Cicles', 'codi', ['alias' => 'Cicles']);
    }

    /**
     * Returns table name mapped in the model.
     *
     * @return string
     */
    public function getSource()
    {
        return 'usuaris';
    }

    /**
     * Allows to query a set of records that match the specified conditions
     *
     * @param mixed $parameters
     * @return Usuaris[]|Usuaris|\Phalcon\Mvc\Model\ResultSetInterface
     */
    public static function find($parameters = null)
    {
        return parent::find($parameters);
    }

    /**
     * Allows to query the first record that match the specified conditions
     *
     * @param mixed $parameters
     * @return Usuaris|\Phalcon\Mvc\Model\ResultInterface
     */
    public static function findFirst($parameters = null)
    {
        return parent::findFirst($parameters);
    }

}
