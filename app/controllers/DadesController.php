<?php

class DadesController extends ControllerBase
{

    public function initialize(String $coordinator='administrador')
    {
            $this->view->setTemplateAfter($coordinator);

    }

    public function indexAction()
    {
        
    }

}

