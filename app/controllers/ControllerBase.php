<?php

use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{




    public function initialize()
    {
            $this->view->setTemplateBefore("index");
            if( $this->session->tipus==="U"){
                $this->view->setTemplateBefore("usuari");
            }else if($this->session->tipus==="A"){
                $this->view->setTemplateBefore("administrador");
            }

    }
}
