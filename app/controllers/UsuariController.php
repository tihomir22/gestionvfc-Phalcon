<?php

class UsuariController extends ControllerBase
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
        if($this->session->get('tipus')==='A'){

            $this->dispatcher->forward(array(
                "controller" => "administrador",
                "action" => "index"));
            return false;
        }
    }

    public function indexAction()
    {
        $this->view->setTemplateBefore("index");
    }

}

