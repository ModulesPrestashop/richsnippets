{*
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
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2014 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<!-- Rich Snippets -->
{if $page_name=='product'}
    <!-- Open Graph data -->
    <meta property="og:type" content="product" />
    <meta property="og:title" content="{$meta_title|escape:html:'UTF-8'}" />
    <meta property="og:description" content="{$meta_description|escape:html:'UTF-8'}" />
    <meta property="og:url" content="{$request|escape:'html'}" />
    <meta property="og:site_name" content="{$shop_name|escape:html:'UTF-8'}" />

    {if isset($image->id)}
        <meta property="og:image" content="{$link->getImageLink($product->link_rewrite, $image->id, 'large_default')|escape:'html'}" />
    {else}
        <meta property="og:image" content="{$img_prod_dir|escape:'html'}{$lang_iso|escape:'html'}-default-large_default.jpg" />
    {/if}
    <meta property="og:price:amount" content="{$price|escape:'html'}" />
    <meta property="og:price:currency" content="{$currency->iso_code|escape:'html'}" />

    <!-- Twitter Card data -->
    <meta name="twitter:card" content="product" />
    <meta name="twitter:site" content="@espirometros" />
    <meta name="twitter:title" content="{$meta_title|escape:html:'UTF-8'}" />
    <meta name="twitter:description" content="{$meta_description|escape:html:'UTF-8'}" />
    <meta name="twitter:creator" content="@jorgevrgs1" />
    {if isset($image->id)}
        <meta name="twitter:image" content="{$link->getImageLink($product->link_rewrite, $image->id, 'large_default')|escape:'html'}" />
    {else}
        <meta name="twitter:image" content="{$img_prod_dir|escape:'html'}{$lang_iso|escape:'html'}-default-large_default.jpg" />
    {/if}
    <meta name="twitter:data1" content="{$price|escape:'html'}" />
    <meta name="twitter:label1" content="Price" />
    <meta name="twitter:data2" content="{$currency->iso_code|escape:'html'}" />
    <meta name="twitter:label2" content="Currency" />
    <meta name="twitter:domain" content="{$request|escape:'html'}" />
{elseif $page_name=='index'}
    <!-- Open Graph data -->
    <meta property="og:type" content="website" />
    <meta property="og:title" content="{$meta_title|escape:html:'UTF-8'}" />
    <meta property="og:description" content="{$meta_description|escape:html:'UTF-8'}" />
    <meta property="og:url" content="{$request|escape:'html'}" />
    <meta property="og:site_name" content="{$shop_name|escape:html:'UTF-8'}" />

    <meta property="og:image" content="{$logo_url|escape:'html'}" />

    <!-- Twitter Card data -->
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="@espirometros" />
    <meta name="twitter:title" content="{$meta_title|escape:html:'UTF-8'}" />
    <meta name="twitter:description" content="{$meta_description|escape:html:'UTF-8'}" />
    <meta name="twitter:creator" content="@jorgevrgs1" />
    <meta property="twitter:image:src" content="{$logo_url|escape:'html'}" />
    <meta name="twitter:domain" content="{$request|escape:'html'}" />
{/if}
<!-- /Rich Snippets -->
