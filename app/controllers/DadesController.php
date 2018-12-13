<?php

class DadesController extends ControllerBase
{

    public function initialize(String $coordinator='usuari')
    {
            $this->view->setTemplateAfter($coordinator);

    }

    public function indexAction()
    {
        $this->session->clau=1;
        $usuari=Usuaris::findFirstById($this->session->clau);
        $this->view->setVar("usuari",$usuari);
    }

    public function guardaAction()
    {
        if ($this->request->isPost()) { //comprovem que les dades venen pel formulari en post(seguretat)
            $usuari = Usuaris::findFirstById($this->session->clau); //cerquem l'usuari a modificar en la BD
//$usuari->setNom($this->request->getPost("nom")); //si volem assignar camp a camp
//$this->request->getPost() ens dona tots els camps del formulari
        }
            foreach ($this->request->getPost() as $key => $value) {
                $usuari->$key = $value; //assignem cada camp del formulari al seu de la BD(model)
            }
            //pujar arxiu foto del dni
            $arxiu = $_FILES['btDNI']['name']; //obtenim el nom de l'arxiu pujat
            if ($arxiu) { //ha canviat l'arxiu de foto...
                $arxiu = $this->session->clau . $arxiu; //a l'arxiu li concatemen l'id
//la destinació(ruta) ha de ser la del Sit. operatiu
                if (move_uploaded_file($_FILES['btDNI']['tmp_name'], "/home/di/www/gestiovfc/public/files/dni/" .
                    $arxiu)) {
                    $usuari->setFotodni($arxiu); //assignem el nou arixu al camp de la BD
                } else {
                    $this->view->missatge = "No ha estat possible carregar la foto"; // error a la vista
                }
            }//fi de canvi de foto

            if ($usuari->save()) { //guardem les dades en la BD
                $this->view->missatge = "Dades guardades amb èxit!";
            } else {
                $this->view->errors = $usuari->getMessages(); //recuperem errors del model
            }
//falta upload de l’autorització…
//tornem a index, vista principal del formulari
            $this->dispatcher->forward(array(
                'action' => 'index'
            )); //dispacher serveix per a seleccionar el controlador, action i params on volem anar

    }
}

