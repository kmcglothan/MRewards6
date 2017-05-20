<div class="container">
    {if isset($_items)}
        {jrCore_module_url module="jrGroup" assign="murl"}
        {foreach from=$_items item="item"}

            {if $item@first || ($item@iteration % 2) == 1}
                <div class="row">
            {/if}
            <div class="col6{if $item@last || ($item@iteration % 2) == 0} last{/if}">
                <a href="{$jamroom_url}/{$item.profile_url}/{$murl}/{$item._item_id}/{$item.group_title_url}">
                    {jrCore_module_function function="jrImage_display" module="jrGroup" type="group_image" item_id=$item._item_id size="icon" crop="square" class="img_scale" style="margin:0" alt=$item.group_title}
                </a>
                <br>
                <a href="{$jamroom_url}/{$item.profile_url}/{$murl}/{$item._item_id}/{$item.group_title_url}">
                    {$item.group_title|truncate:25}
                </a>
            </div>
            {if $item@last || ($item@iteration % 2) == 0}
                </div>
            {/if}

        {/foreach}
    {/if}
</div>
