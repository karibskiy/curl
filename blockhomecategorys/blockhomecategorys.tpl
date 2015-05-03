{if isset($subcategories)}
  <h2>{l s='Categorys' mod='blockhomecategorys'}</h2>

  <div id="subcategories">
    <ul>
      {foreach from=$subcategories item=subcategory}
      <li>
        <a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'htmlall':'UTF-8'}" title="{$subcategory.name|escape:'htmlall':'UTF-8'}">
        {if $subcategory.id_image}
        <img src="{$link->getCatImageLink($subcategory.link_rewrite, $subcategory.id_image, 'medium_default')}" alt="" width="{$mediumSize.width}" height="{$mediumSize.height}" />
        {else}
        <img src="{$img_cat_dir}default-medium_default.jpg" alt="" width="{$mediumSize.width}" height="{$mediumSize.height}" />
        {/if}
        </a>
        <a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'htmlall':'UTF-8'}">{$subcategory.name|escape:'htmlall':'UTF-8'}</a>
      </li>
      {/foreach}
    </ul>
    <br/>
  </div>
{/if}

