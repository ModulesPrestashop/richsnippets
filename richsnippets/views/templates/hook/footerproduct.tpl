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