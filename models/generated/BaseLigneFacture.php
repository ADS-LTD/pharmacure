<?php

/**
 * BaseLigneFacture
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $IdArticle
 * @property integer $IdFacture
 * @property Facture $Facture
 * @property Article $Article
 * 
 * @package    ##PACKAGE##
 * @subpackage ##SUBPACKAGE##
 * @author     ##NAME## <##EMAIL##>
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseLigneFacture extends Doctrine_Record
{
    public function setTableDefinition()
    {
        $this->setTableName('LigneFacture');
        $this->hasColumn('IdArticle', 'integer', null, array(
             'type' => 'integer',
             ));
        $this->hasColumn('IdFacture', 'integer', null, array(
             'type' => 'integer',
             ));
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('Facture', array(
             'local' => 'IdFacture',
             'foreign' => 'id'));

        $this->hasOne('Article', array(
             'local' => 'IdArticle',
             'foreign' => 'id'));
    }
}