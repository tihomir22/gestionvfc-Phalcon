<?php

class PagamentsController extends ControllerBase
{

    public function indexAction()
    {
        $pagaments=Pagaments::find('usuari' === $this->session->get('clau'));
        $this->view->setVar("arrayPagaments",$pagaments);
    }

    public function pagoAction($numpago){

        $pago=Pagaments::findFirst('numero' === $numpago);
       $this->view->setVar("pago",$pago);
    }

}

