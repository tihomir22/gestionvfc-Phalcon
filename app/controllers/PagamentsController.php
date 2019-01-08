<?php

class PagamentsController extends ControllerBase
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
    }


    public function indexAction()
    {
        $pagaments=Pagaments::find('usuari' === $this->session->get('clau'));
        $this->view->setVar("arrayPagaments",$pagaments);
    }

    public function pagoAction($numpago){

        $pago=Pagaments::findFirst($numpago);
        $this->view->setVar("pago",$pago);
    }

}

