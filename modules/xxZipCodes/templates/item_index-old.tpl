{jrCore_module_url module="xxZipCodes" assign="murl"}

<div class="block">

    <div class="title">
        <div class="block_config">
            {jrCore_item_index_buttons module="xxZipCodes" profile_id=$_profile_id}
        </div>
        <h1>{jrCore_lang module="xxZipCodes" id="10" default="Zip_Codes"}</h1>
        <div class="breadcrumbs">
            <a href="{$jamroom_url}/{$profile_url}">{$profile_name}</a> &raquo; <a href="{$jamroom_url}/{$profile_url}/{$murl}">{jrCore_lang module="xxZipCodes" id="10" default="Zip_Codes"}</a>
        </div>
    </div>

<div class="block_content">

{jrCore_list module="xxZipCodes" profile_id=$_profile_id order_by="_created desc" pagebreak="8" page=$_post.p pager=true}

</div>

</div>
