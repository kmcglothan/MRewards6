{jrCore_module_url module="xxArtistsAlliance" assign="murl"}
<div class="p5">
    <span class="action_item_title">
    {if $item.action_mode == 'create'}
        {jrCore_lang module="xxArtistsAlliance" id="11" default="Posted a new artistsalliance"}:
    {else}
        {jrCore_lang module="xxArtistsAlliance" id="12" default="Updated a artistsalliance"}:
    {/if}
    <br>
    <a href="{$jamroom_url}/{$item.profile_url}/{$murl}/{$item.action_item_id}/{$item.action_data.artistsalliance_title_url}" title="{$item.action_data.artistsalliance_title|jrCore_entity_string}">{$item.action_data.artistsalliance_title}</a>
    </span>
</div>