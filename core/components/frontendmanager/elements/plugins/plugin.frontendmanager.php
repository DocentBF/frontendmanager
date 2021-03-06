<?php
if (!$modx->user->hasSessionContext('mgr')) return;
switch ($modx->event->name) {
    case 'OnWebPagePrerender':
		$frontendManager = $modx->getService('frontendmanager','frontendManager', MODX_CORE_PATH . 'components/frontendmanager/model/frontendmanager/', array());
        if(!$frontendManager) die('error load frontendmanager');
        $modx->resource->_output .=  $frontendManager->initialize($modx->context->key);
        break;
    case 'OnBeforeManagerPageInit':
        if ($_GET['frame']) {
			$modx->regClientCSS(MODX_ASSETS_URL.'components/frontendmanager/css/mgr/'.$modx->getOption('frontendmanager_manager_css', NULL, 'manager.css'));
			$modx->regClientStartupScript(MODX_ASSETS_URL.'components/frontendmanager/js/mgr/'.$modx->getOption('frontendmanager_manager_js', NULL, 'manager.js'));
        }
        break;
    default:
        break;
}
return;
