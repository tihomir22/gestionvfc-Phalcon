<?php

class PagamentsController extends ControllerBase
{

    public function indexAction()
    {

        $usuari=Usuaris::find();
        $pagaments=Pagaments::find('usuari' === $this->session->get('clau'));
        $this->view->setVar("arrayPagaments",$pagaments);
    }

}

