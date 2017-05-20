<div class="col4 sidebar">

    <div class="page_nav">
        <div class="breadcrumbs">
            {n8ESkin_breadcrumbs nav_mode="jrProfile" profile_url=$profile_url title=$profile_name}
        </div>
    </div>

    <div class="box">
        <ul class="head_tab">
            <li id="profile_tab">
                <a href="#" title="{jrCore_lang skin="n8" id="10" default="Profile"}"></a>
            </li>
        </ul>

        <div class="box_body">
            <div class="wrap">
                <div class="media">
                    <div class="profile_image">
                        {if jrProfile_is_profile_owner($_profile_id)}
                            {jrCore_module_url module="jrProfile" assign="purl"}
                            {jrCore_lang skin="n8" id="27" default="Change Image" assign="hover"}
                            <a href="{$_conf.jrCore_base_url}/{$purl}/settings/profile_id={$_profile_id}">
                                {jrCore_module_function
                                function="jrImage_display"
                                module="jrProfile"
                                type="profile_image"
                                item_id=$_profile_id
                                size="xlarge"
                                class="img_scale img_shadow"
                                alt=$profile_name
                                crop="auto"
                                title=$hover
                                width=false
                                height=false}</a>
                            <div class="profile_hoverimage">
                                <span class="normal">{$hover}</span>&nbsp;{jrCore_item_update_button module="jrProfile" view="settings/profile_id=`$_profile_id`" profile_id=$_profile_id item_id=$_profile_id title="Update Profile"}
                            </div>
                        {else}
                            {jrCore_module_function function="jrImage_display" module="jrProfile" type="profile_image" item_id=$_profile_id size="xxlarge" class="img_scale img_shadow" alt=$profile_name width=false height=false}
                        {/if}
                    </div>
                </div>
            </div>
        </div>
    </div>

    {if strlen($profile_bio) > 0}
        <div class="box">
            <ul class="head_tab">
                <li id="about_tab">
                    <a href="#" title="{jrCore_lang skin="n8" id="12" default="About"} {$profile_name}"></a>
                </li>
            </ul>
            <div class="box_body">
                <div class="wrap">
                    <div class="media">
                        <div class="wrap">
                            <div style=";max-height:350px;overflow:auto;">
                                {$profile_bio|jrCore_format_string:$profile_quota_id}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    {/if}

    {if !jrCore_is_mobile_device()}
        <div class="box">
            <ul class="head_tab">
                <li id="online_tab">
                    <a href="#" title="{jrCore_lang skin="n8" id="11" default="Online Status"}"></a>
                </li>
            </ul>
            <div class="box_body">
                <div class="wrap">
                    <div class="media">
                        {jrUser_online_status profile_id=$_profile_id}
                    </div>
                </div>
            </div>
        </div>
    {/if}

    {if jrUser_is_logged_in() && jrCore_module_is_active('n8Ajax')}
        {jrCore_include template="profile_contact.tpl"}
    {/if}

    <div class="box">
        <ul class="head_tab">
            <li id="stats_tab">
                <a href="#" title="{jrCore_lang skin="n8" id="13" default="Stats"}"></a>
            </li>
        </ul>
        <div class="box_body">
            <div class="wrap">
                <div class="media">
                    <div class="wrap clearfix">
                        {capture name="template" assign="stats_tpl"}
                        {literal}
                            {foreach $_stats as $title => $_stat}
                            {jrCore_module_url module=$_stat.module assign="murl"}
                            <div class="stat_entry_box">
                                <a href="{$jamroom_url}/{$profile_url}/{$murl}"><span class="stat_entry_title">{$title}:</span> <span class="stat_entry_count">{$_stat.count|default:0}</span></a>
                            </div>
                            {/foreach}
                        {/literal}
                        {/capture}
                        {jrProfile_stats profile_id=$_profile_id template=$stats_tpl}
                    </div>
                </div>
            </div>
        </div>
    </div>


    {if !jrCore_is_mobile_device() && isset($profile_influences) && strlen($profile_influences) > 0}
        <div class="box">
            <div class="head">{jrCore_lang skin="n8" id="14" default="Influences"}</div>
            <div class="box_body">
                <div class="wrap">
                    <div class="media">
                        {$profile_influences}
                    </div>
                </div>
            </div>
        </div>
    {/if}


    {if !jrCore_is_mobile_device() && jrCore_module_is_active('jrFollower')}
        {jrCore_list module="jrFollower" search1="follow_profile_id = `$_profile_id`" search2="follow_active = 1" order_by="_item_id desc" limit="16" template="profile_follow.tpl" assign="followers"}
        {if strlen($followers) > 0}
            <div class="box">
                <ul class="head_tab">
                    <li id="followers_tab">
                        <a href="#" title="{jrCore_lang skin="n8" id="15" default="Latest Followers"}"></a>
                    </li>
                </ul>
                <div class="box_body">
                    <div class="wrap">
                        <div class="media">
                           <div class="wrap clearfix">
                               {$followers}
                           </div>
                        </div>
                    </div>
                </div>
            </div>
        {/if}
    {/if}


    {if !jrCore_is_mobile_device()}
        {jrCore_list module="jrRating" profile_id=$_profile_id search1="rating_image_size > 0" order_by="_updated desc" limit="14" assign="rated"}
        {if strlen($rated) > 0}
            <div class="box">
                <ul class="rate_tab">
                    <li id="rating_tab">
                        <a href="#" title=">{jrCore_lang skin="n8" id="15" default="Recently Rated"}"></a>
                    </li>
                </ul>
                <div class="box_body">
                    <div class="wrap">
                        <div class="media">
                            {$rated}
                        </div>
                    </div>
                </div>
            </div>
        {/if}
    {/if}


    {if !jrCore_is_mobile_device()}

        {jrTags_cloud profile_id=$_profile_id height="350" assign="tag_cloud"}
        {if strlen($tag_cloud) > 0}
            <div class="box">
                <ul class="head_tab">
                    <li id="tags_tab">
                        <a href="#" title="{jrCore_lang module="jrTags" id="1" default="Profile Tag Cloud"}"></a>
                    </li>
                </ul>
                <div class="box_body">
                    <div class="wrap">
                        <div class="media">
                            {$tag_cloud}
                        </div>
                    </div>
                </div>
            </div>
        {/if}
    {/if}

</div>