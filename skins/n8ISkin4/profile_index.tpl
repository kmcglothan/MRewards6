{* default index for profile *}
{jrCore_include template="profile_sidebar.tpl"}
<div class="col8">
    <div style="margin-left: 10px">
        {if $_conf.n8ISkin4_bio_right == 'on' && strlen($profile_bio) > 0}
            {jrCore_include template="profile_bio.tpl"}
            {$bio_right = '1'}
        {/if}
        {jrCore_include template="item_index.tpl" module="jrAction"}
    </div>
</div>


