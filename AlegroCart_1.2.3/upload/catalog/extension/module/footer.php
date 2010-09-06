<?php // AlegroCart 
class ModuleFooter extends Controller {
	function fetch() {
		$config   =& $this->locator->get('config');
		$language =& $this->locator->get('language');	
		$session  =& $this->locator->get('session');
		$request  =& $this->locator->get('request');
		$this->modelCore 	= $this->model->get('model_core');
		
		if ($config->get('footer_status')) {	
			$language->load('extension/module/footer.php');

			$view = $this->locator->create('template');
			$view->set('w3c_status', $this->currentpage($this->modelCore->controller));
			$view->set('store', $config->get('config_store'));
			$view->set('show_version',$config->get('show_version'));
			$view->set('version', $config->get('version'));
			$view->set('text_version', $language->get('text_version'));
			$view->set('text_powered_by', $language->get('text_powered_by',$config->get('config_store'),date('Y')));

			return $view->fetch('module/footer.tpl');
		}
	}
	function currentpage($current_page){  
		switch($current_page){
			case '':
			case 'home':
			case 'information':
			case 'sitemap':
			case 'search':
			case 'contact':
			case 'category':
			case 'product':
			case 'cart':
			$w3c_status = true;
			break;
		default:
			$w3c_status = false;
			break;
		}
		return $w3c_status;
	}	
}
// Check current controller

?>