<?php

class IndexController extends ControllerBase
{




    public function indexAction()
    {
        //$this->view->disable(); /*deshabilita les vistes, funciona com php normal */
      //  $usuari = Usuaris::find(); /* accedim directament al model, i a una funció */
        //echo '<h2>Nº usuaris: </h2>'.$usuari->count();

        if(!$this->session->has('clau')){
            $this->dispatcher->forward(array('action'=>'login'));

        }else{

            if($this->session->tipus==="U"){
              $this->dispatcher->forward(array('controller'=>'dades'));
            }elseif ($this->session->tipus==="A"){
                $this -> session->tipus="A";
                $this->dispatcher->forward(array('controller'=>'dades'));
            }else{
                $this->session->destroy();
                $this->dispatcher->forward(array(
                    'action'=>'login'
                ));
            }

        }
    }
    public function loginAction()
    {
        $this->session->start();
    }

    public function comprovaLoginAction(){
        if($this->request->isPost()){
            $pass=$this->request->getPost("password");
            $email=$this->request->getPost("email");

        }else{
            $this->view->setVar("errores","Error en les dades");
            $this->dispatcher->forward(array('action'=>'login'));
            return false;
        }

        $usuari = Usuaris::findFirstByEmail($email);

        if(isset($usuari)){
            if($this->security->checkHash($pass,$usuari->contra)){

                $this->session->clau=$usuari->getId();
                if($usuari->getTipus()=='U'){
                    $this->session->tipus='U';
                    $this->dispatcher->forward(array('action' => 'index'));
                }else if($usuari->getTipus()=="A"){
                    $this->session->tipus='A';
                    $this->dispatcher->forward(array('action' => 'index'));
                }else{
                    $this->view->setVar("error","Tipus de usuario no definido");
                }
            }else {
                $this->view->setVar("error", "Usuari/password incorrecte");
                $this->security->hash(rand());//cambiamos el hash para que sea más dificil la fuerza bruta
            }
        }else{
            $this->view->setVar("error","Usuari/password incorrecte");
        }

        $this->dispatcher->forward(array('action'=>'index'));


    }

    public function logoutAction(){
        $this->session->remove('clau');
        $this->session->remove('tipus');

        $this->session->destroy();

        $this->dispatcher->forward(array('controller'=>'index','action'=>'index'));
        $this->view->setTemplateBefore("index");
    }

    public function contraAction($id, $contra) //$id -> ide de l’usuaria canviar pass
    { //$pass -> contrasenya a encriptar
        echo 'entramos...';
        $this->view->disable();
        $us = Usuaris::findFirstById($id);
        $us->setContra($this->security->hash($contra));
        $us->save();

    }



}

