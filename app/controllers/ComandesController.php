<?php

class ComandesController extends ControllerBase
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


        $comandes=[];
        $idUsuario=$this->session->get('clau');
        $comandes=Comandes::find("usuari = ".$idUsuario."");
        $arr=array();

        if(sizeof($comandes)>0){
            foreach ($comandes as $comanda){
                $lineacomanda=LinesComandes::find("ncomanda = ".$comanda->getNumero()."");
                $idcomanda=$comanda->getNumero();
                $arr[$idcomanda]=$lineacomanda->count();
            }
        }
        $this->view->setVar("arrayComandes", $comandes);
        $this->view->setVar("arrayLineas",$arr);


    }

    public function verAction($numcomanda){
        $lineacomanda=LinesComandes::find("ncomanda = ".$numcomanda."");
        $this->view->setVar("lineacomanda",$lineacomanda);
        $this->view->setVar("num",$numcomanda);
    }
    public function modificarcomandaAction($numcomanda){
        $comanda=Comandes::findFirst($numcomanda);
        $this->view->setVar("comanda",$comanda);
    }



}

