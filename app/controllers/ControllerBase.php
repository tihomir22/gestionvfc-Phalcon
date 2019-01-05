<?php

use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{
    public function initialize()
    {
        $this->session->tipus="U";
        if( $this->session->tipus==="U"){
            $this->view->setTemplateBefore("usuari");
        }else{
            $this->view->setTemplateBefore("administrador");
        }
    }
}
