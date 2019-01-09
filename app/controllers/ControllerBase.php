<?php

use Phalcon\Mvc\Controller;

class ControllerBase extends Controller
{




    public function initialize()
    {


            if( $this->session->tipus==="U"){
                $this->view->setTemplateBefore("usuari");
            }else if($this->session->tipus==="A"){
                $this->view->setTemplateBefore("administrador");
            }




    }
}
