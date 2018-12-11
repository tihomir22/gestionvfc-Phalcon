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

}

