{*
* 2007-2013 PrestaShop
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
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2013 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<!-- Rich Snippets -->
{if $page_name=='product'}
<div class="hidden">
    <!-- Schema.org markup for Google+ -->
    <div itemscope itemtype="http://schema.org/Product">
        <span itemprop='sku'>{$product->reference|escape:'htmlall':'UTF-8'}</span>
        <span itemprop="name">{$product->name|escape:'htmlall':'UTF-8'}</span>
        <span itemprop="description">{if $meta_description}{$meta_description|escape:html:'UTF-8'}{/if}</span>
        {if isset($image->id)}
            <img itemprop="image" src="{$link->getImageLink($product->link_rewrite, $image->id, 'large_default')|escape:'html'}" title="{$product->name|escape:'htmlall':'UTF-8'}" width="600" height="600" />
        {else}
            <img itemprop="image" src="{$img_prod_dir}{$lang_iso}-default-large_default.jpg" title="{$product->name|escape:'htmlall':'UTF-8'}" width="600" height="600" />
        {/if}
        <span itemprop="brand">{$manufacturer->name|escape:html:'UTF-8'}</span>
        <div itemprop="offers" itemscope itemtype="http://schema.org/Offer">
            <span itemprop="price">{$price}</span>
            <span itemprop="priceCurrency">{$currency->iso_code}</span>
            <span itemprop="itemCondition">{$product->condition}</span>
        </div>
    </div>
</div>
{/if}
<!-- /Rich Snippets -->
