{jrCore_module_url module="jrFlickr" assign="murl"}

{if isset($_items)}
    {foreach from=$_items item="item"}
        {n8Post_process_item item=$item module="jrStore" assign="_item"}
        <div class="list_item">
           <div class="wrap">
               <div class="title">
                   <a href="{$jamroom_url}/{$item.profile_url}/{$murl}/{$item._item_id}/{$item.product_title_url}">
                       {$item.product_title|truncate:55}
                   </a>
               </div>
               <div class="image">
                   <a href="{$jamroom_url}/{$item.profile_url}/{$murl}/{$item._item_id}/{$item.product_title_url}">
                       {jrCore_module_function
                       function="jrImage_display"
                       module=$_item.module
                       type=$_item.image_type
                       item_id=$_item._item_id
                       size="xlarge"
                       crop="2:1"
                       class="img_scale"
                       alt=$_item.title
                       width=false
                       height=false
                       }
                   </a>
               </div>

               <div class="data clearfix">
                   <span>{$item.product_comment_count|jrCore_number_format} {jrCore_lang skin=$_conf.jrCore_active_skin id="109" default="Comments"}</span>
                   <span>{$item.product_like_count|jrCore_number_format} {jrCore_lang skin=$_conf.jrCore_active_skin id="110" default="Likes"}</span>
               </div>
           </div>
        </div>
    {/foreach}
{else}
    {jrCore_include template="no_items.tpl"}
{/if}