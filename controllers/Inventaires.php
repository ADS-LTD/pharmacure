<?php
 
class Inventaires extends Controller{
    /**
     * @Admin('REQUIRED')
     */
    function index(){
        
        $d['view'] = array("titre" => "Gestion des Inventaires");
        $this->set($d); 
        $this->render('index');
    }

    function data(){
        
        $ProduitTable = new ProduitTable();
        //$ProduitTable = Doctrine_Core::getTable('Produit_index')->findAll();
        $ProduitTable = Doctrine_Core::getTable('ProduitTable')->find($id);

        $ProduitTable = $q->execute();
        
        for ($i=0; $i < $ProduitTable->count() ; $i++) { 
            $ProduitTable[$i]->id =$ProduitTable[$i]->Produit->Libelle;
            if( strlen($ProduitTable[$i]->id) <=2){
            	$ProduitTable[$i]->id = "Sans informations produit";
            	//die();
            } 
        }

        $ProduitTable = $ProduitTable->toArray(false);
         $data = array('data' =>$ProduitTable);
//        var_dump($data);
        $text = json_encode($data);
        echo $text;
//        $this->render('test');  
    }

    function infos($id){
        
        $ProduitTable = new Produit();
        $ProduitTable = Doctrine_Core::getTable('Produit_index')->find($id);
        $d['view'] = array("titre" => "Inventaire produit","produit" => $ProduitTable);
        $this->set($d); 
        $this->render('infos');
    }
}
?>