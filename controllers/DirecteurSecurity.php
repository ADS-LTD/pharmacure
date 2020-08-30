<?php
class DirecteurSecurity implements SecurityManager  {
	public static function Check($controller,$action){
		
        $classCheck = AnnotationManager::getClassAnnotation($controller,'Directeur');
        $methodeCheck = AnnotationManager::getMethodAnnotation($controller,$action,'Directeur');
		
		if($classCheck == 'REQUIRED' OR $methodeCheck == 'REQUIRED')
		{
			if(DirecteurSecurity::UserCheck()){return true;}else return false;
        }


		if($classCheck == null AND $methodeCheck == null)
		{
         	return true;			
        } 	
	}

	public static function UserCheck(){
		if(isset($_SESSION['user']) && $_SESSION['user']->Type==4)
		{
         	return true;			
        }
        return false;	
	}
}
?>