<?php
/**
* 2007-2014 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author    PrestaShop SA <contact@prestashop.com>
*  @copyright 2007-2014 PrestaShop SA
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*/
    
if (!defined('_PS_VERSION_'))
    exit;
    
class RichSnippets extends PaymentModule
{
    public function __construct()
    {
        $this->name = 'richsnippets';
        $this->tab = 'seo';
        $this->author = 'jorgevrgs';
        $this->version = '0.1';
        $this->need_instance = 1;
        $this->module_key = '';
            
        parent::__construct();
            
        $this->displayName = 'Rich Snippets';
        $this->description = 'Add meta data for rich snippets';
            
        $this->confirmUninstall = $this->l('Are you sure you want to uninstall?');
            
        $this->ps_versions_compliancy = array('min' => '1.5.0.1', 'max' => '1.6.0.0');
    }
        
    /* Install */
    public function install()
    {
        if (Shop::isFeatureActive())
            Shop::setContext(Shop::CONTEXT_ALL);
        
        return (parent::install() && 
        $this->registerHook('header') && 
        $this->registerHook('productfooter'));
    }
        
    /* Uninstall */
    public function uninstall()
    {
        if (!parent::uninstall())
            return false;
        return true;
    }
    
    public function displayBlock($display = 'header')
    {
        $id_lang = $this->context->language->id;
        $id_shop = $this->context->shop->id;
        
        $product = new Product((int)Tools::getValue('id_product'), false, $id_lang, $id_shop);
        
        if (Validate::isLoadedObject($product))
        {
            $manufacturer = new Manufacturer($product->id_manufacturer, $id_lang);
            
            //image of the product
            $id_image = Product::getCover((int)Tools::getValue('id_product'));
            if (count($id_image) > 0)
                $image = new Image($id_image['id_image']);

            $this->context->smarty->assign(array(
                'product' => $product,
                'image' => $image,
                'manufacturer' => $manufacturer,
                ));
                
            // Shows tpl file
            if ($display == 'header')
                return $this->display(__FILE__, 'header.tpl');
            elseif ($display == 'footerproduct')
                    return $this->display(__FILE__, 'footerproduct.tpl');
        }
        else
            return $this->display(__FILE__, 'header.tpl');

    }
    
    public function hookDisplayHeader()
    {
        return $this->displayBlock('header');
    }
    
    public function hookDisplayFooterProduct()
    {
        return $this->displayBlock('footerproduct');
    }
        
}
