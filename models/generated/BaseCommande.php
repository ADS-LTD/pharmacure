<?php

/**
 * BaseCommande
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $IdUser
 * @property integer $IdUserModif
 * @property integer $IdFournisseur
 * @property integer $IdEtat
 * @property User $User
 * @property User $UserModif
 * @property Fournisseur $Fournisseur
 * @property Etat $Etat
 * @property Doctrine_Collection $BordereauCommande
 * @property Doctrine_Collection $LigneCommandeCommande
 * 
 * @package    ##PACKAGE##
 * @subpackage ##SUBPACKAGE##
 * @author     ##NAME## <##EMAIL##>
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseCommande extends Doctrine_Record
{
    public function setTableDefinition()
    {
        $this->setTableName('Commande');
        $this->hasColumn('IdUser', 'integer', null, array(
             'type' => 'integer',
             ));
        $this->hasColumn('IdUserModif', 'integer', null, array(
             'type' => 'integer',
             ));
        $this->hasColumn('IdFournisseur', 'integer', null, array(
             'type' => 'integer',
             ));
        $this->hasColumn('IdEtat', 'integer', null, array(
             'type' => 'integer',
             ));
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('User', array(
             'local' => 'IdUser',
             'foreign' => 'id',
             'onDelete' => 'SET NULL'));

        $this->hasOne('User as UserModif', array(
             'local' => 'IdUserModif',
             'foreign' => 'id',
             'onDelete' => 'SET NULL'));

        $this->hasOne('Fournisseur', array(
             'local' => 'IdFournisseur',
             'foreign' => 'id',
             'onDelete' => 'SET NULL'));

        $this->hasOne('Etat', array(
             'local' => 'IdEtat',
             'foreign' => 'id',
             'onDelete' => 'SET NULL'));

        $this->hasMany('Bordereau as BordereauCommande', array(
             'local' => 'id',
             'foreign' => 'IdCommande'));

        $this->hasMany('LigneCommande as LigneCommandeCommande', array(
             'local' => 'id',
             'foreign' => 'IdCommande'));

        $timestampable0 = new Doctrine_Template_Timestampable(array(
             'created' => 
             array(
              'name' => 'Date',
             ),
             'updated' => 
             array(
              'name' => 'DateModif',
             ),
             ));
        $this->actAs($timestampable0);
    }
}