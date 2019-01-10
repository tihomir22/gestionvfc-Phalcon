<?php

class AdministradorController extends ControllerBase
{

    public function beforeExecuteRoute($dispatcher)
    {
// controlem login OK
        if (!$this->session->has('clau')) {
            $this->dispatcher->forward(array(
                "controller" => "index",
                "action" => "index"));
            return false; //parem l'execució del controller per a que torne a fer login
        }
        if($this->session->get('tipus')==='U'){

            $this->dispatcher->forward(array(
                "controller" => "usuari",
                "action" => "index"));
            return false;
        }
    }



    public function indexAction()
    {
        $this->view->setTemplateBefore("index");

    }

}

