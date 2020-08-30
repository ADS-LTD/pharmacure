<?php
class ControleurSecurity implements SecurityManager  {
	public static function Check($controller,$action){
		
        $classCheck = AnnotationManager::getClassAnnotation($controller,'Controleur');
        $methodeCheck = AnnotationManager::getMethodAnnotation($controller,$action,'Controleur');
		
		if($classCheck == 'REQUIRED' OR $methodeCheck == 'REQUIRED')
		{
			if(ControleurSecurity::UserCheck()){return true;}else return false;
        }


		if($classCheck == null AND $methodeCheck == null)
		{
         	return true;			
        } 	
	}

	public static function UserCheck(){
		if(isset($_SESSION['user']) && $_SESSION['user']->Type==1)
		{
         	return true;			
        }
        return false;	
	}
}
?>