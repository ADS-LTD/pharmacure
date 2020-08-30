<?php
 
class Alertes extends Controller{


    /**
     * @Admin('REQUIRED')
     */
    function index(){
        
        $d['view'] = array("titre" => "Gestion des Alertes");
        $this->set($d); 
        $this->render('index');
    }
}
?>