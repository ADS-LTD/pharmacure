<?php

/**
 * User
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @package    ##PACKAGE##
 * @subpackage ##SUBPACKAGE##
 * @author     ##NAME## <##EMAIL##>
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
class User extends BaseUser
{
	public function init($password,$nom,$prenom,$mail,$tel,$login,$typeU){
        $this->Password =$password;
        $this->Nom =$nom;
        $this->Prenom =$prenom;
        $this->Mail =$mail;
        $this->Tel =$tel;
        $this->Login =$login;
        $this->Type =$typeU;
   }

}
?>