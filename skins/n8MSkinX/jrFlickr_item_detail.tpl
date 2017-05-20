{jrCore_module_url module="jrFlickr" assign="murl"}
{assign var="_data" value=$item.flickr_data|json_decode:TRUE}
{jrProfile_disable_header}
{jrProfile_disable_sidebar}

<div class="page_nav clearfix">
    <div class="breadcrumbs">
        {n8MSkinX_breadcrumbs nav_mode="jrFlickr" profile_url=$item.profile_url profile_name=$item.profile_name page="detail" item=$item}
    </div>
    <div class="action_buttons">
        {jrCore_item_detail_buttons module="jrFlickr" item=$item}
    </div>
</div>

<div class="col8">
    <div class="box">
        <ul class="head_tab">
            <li id="gallery_tab">
                <a href="#" title="{jrCore_lang module="jrFlickr" id="1" default="Flickr"}"></a>
            </li>
        </ul>
        <div class="box_body">
            <div class="wrap detail_section">
                <div class="media">
                    <div>
                        <a href="{jrCore_server_protocol}://www.flickr.com/photos/{$_data.owner.nsid}/{$_data.attributes.id}" target="_blank">
                            <img src="{jrCore_server_protocol}://farm{$_data.attributes.farm}.staticflickr.com/{$_data.attributes.server}/{$_data.attributes.id}_{$_data.attributes.secret}.jpg" width="100%" alt="{$item.flickr_title}">
                        </a>
                        <br>
                    </div>
                    {if !empty($item.flickr_caption)}
                        <div class="caption">
                            {$item.flickr_caption}
                        </div>
                    {/if}
                </div>

                {* bring in module features *}
                <div class="action_feedback">
                    {n8MSkinX_feedback_buttons module="jrFlickr" item=$item}
                    {jrCore_item_detail_features module="jrFlickr" item=$item}
                </div>
            </div>
        </div>
    </div>
</div>

<div class="col4 last">
    <div class="box">
        <ul id="actions_tab">
            <li class="solo" id="gallery_tab">
                <a href="#"></a>
            </li>
        </ul>
        <div class="box_body">
            <div class="wrap">
                <div id="list" class="sidebar">
                    {jrCore_list
                    module="jrFlickr"
                    profile_id=$item.profile_id
                    order_by='_created RANDOM'
                    pagebreak=8
                    template="chart_flickr.tpl"}
                </div>
            </div>
        </div>
    </div>
</div>




