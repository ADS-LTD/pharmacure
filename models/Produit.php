<?php

/**
 * Produit
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @package    ##PACKAGE##
 * @subpackage ##SUBPACKAGE##
 * @author     ##NAME## <##EMAIL##>
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
class Produit extends BaseProduit
{
    public function init($libelle,$prixAT,$prix,$ordonnance,$commentaire,$conditionnement,$idtaxe,$idclasse,$alerte){
        $this->Libelle=$libelle;
        $this->PrixAT =$prixAT;
        $this->Prix =$prix;
        $this->Ordonnance= $ordonnance;
        $this->Conditionnement = $conditionnement;
        $this->Commentaire =$commentaire;
        $this->IdClasse = $idclasse;
        $this->IdTaxe = $idtaxe;
        $this->Alerte = $alerte;  
    }
}