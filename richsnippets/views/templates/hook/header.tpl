<!-- Rich Snippets -->
{if $page_name=='product'}
    <!-- Open Graph data -->
    <meta property="og:type" content="product" />
    <meta property="og:title" content="{$meta_title|escape:html:'UTF-8'}" />
    <meta property="og:description" content="{$meta_description|escape:html:'UTF-8'}" />
    <meta property="og:url" content="{$request}" />
    <meta property="og:site_name" content="{$shop_name|escape:html:'UTF-8'}" />

    {if isset($image->id)}
        <meta property="og:image" content="{$link->getImageLink($product->link_rewrite, $image->id, 'large_default')|escape:'html'}" />
    {else}
        <meta property="og:image" content="{$img_prod_dir}{$lang_iso}-default-large_default.jpg" />
    {/if}
    <meta property="og:price:amount" content="{$price}" />
    <meta property="og:price:currency" content="{$currency->iso_code}" />

    <!-- Twitter Card data -->
    <meta name="twitter:card" content="product" />
    <meta name="twitter:site" content="@espirometros" />
    <meta name="twitter:title" content="{$meta_title|escape:html:'UTF-8'}" />
    <meta name="twitter:description" content="{$meta_description|escape:html:'UTF-8'}" />
    <meta name="twitter:creator" content="@jorgevrgs1" />
    {if isset($image->id)}
        <meta name="twitter:image" content="{$link->getImageLink($product->link_rewrite, $image->id, 'large_default')|escape:'html'}" />
    {else}
        <meta name="twitter:image" content="{$img_prod_dir}{$lang_iso}-default-large_default.jpg" />
    {/if}
    <meta name="twitter:data1" content="{$price}" />
    <meta name="twitter:label1" content="Price" />
    <meta name="twitter:data2" content="{$currency->iso_code}" />
    <meta name="twitter:label2" content="Currency" />
    <meta name="twitter:domain" content="{$request}" />
{elseif $page_name=='index'}
    <!-- Open Graph data -->
    <meta property="og:type" content="website" />
    <meta property="og:title" content="{$meta_title|escape:html:'UTF-8'}" />
    <meta property="og:description" content="{$meta_description|escape:html:'UTF-8'}" />
    <meta property="og:url" content="{$request}" />
    <meta property="og:site_name" content="{$shop_name|escape:html:'UTF-8'}" />

    <meta property="og:image" content="{$logo_url}" />

    <!-- Twitter Card data -->
    <meta name="twitter:card" content="summary_large_image" />
    <meta name="twitter:site" content="@espirometros" />
    <meta name="twitter:title" content="{$meta_title|escape:html:'UTF-8'}" />
    <meta name="twitter:description" content="{$meta_description|escape:html:'UTF-8'}" />
    <meta name="twitter:creator" content="@jorgevrgs1" />
    <meta property="twitter:image:src" content="{$logo_url}" />
    <meta name="twitter:domain" content="{$request}" />
{/if}
<!-- /Rich Snippets -->