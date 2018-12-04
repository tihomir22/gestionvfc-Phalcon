<?php

class IndexController extends ControllerBase
{

    public function indexAction()
    {
        //$this->view->disable(); /*deshabilita les vistes, funciona com php normal */
        $usuari = Usuaris::find(); /* accedim directament al model, i a una funció */
        echo '<h2>Nº usuaris: </h2>'.$usuari->count(); /* objete que ereda
moltes funcions(mètodes) */
    }

}

