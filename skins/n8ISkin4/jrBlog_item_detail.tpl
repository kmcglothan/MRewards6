{jrCore_module_url module="jrBlog" assign="murl"}

{jrProfile_disable_header}
{jrProfile_disable_sidebar}

<div class="page_nav">
    <div class="breadcrumbs">
        <a href="{$jamroom_url}/{$item.profile_url}">{$item.profile_name}</a>
        {n8ISkin4_breadcrumbs nav_mode="jrBlog" profile_url=$item.profile_url page="detail" item=$item}
    </div>
    <div class="action_buttons">
        {jrCore_item_detail_buttons module="jrBlog" profile_id=$item._profile_id item=$item}
    </div>
</div>


<div class="col8">
    <div class="box">
        <ul class="head_tab">
            <li id="categories_tab">
                <a href="#" title="{jrCore_lang module="jrBlog" id="24" default="Blog"}"></a>
            </li>
        </ul>
        <div class="box_body">
            <div class="wrap detail_section">
                <div class="media">
                    <div class="wrap clearfix">
                        <span class="title">{$item.blog_title}</span>
                        <span class="date">{$item.blog_publish_date|jrCore_date_format:"%A %B %e %Y, %l:%M %p"}</span>
                        <div class="author clearfix">
                            <div class="author_image">
                                <a href="{$jamroom_url}/{$item.profile_url}">
                                    {jrCore_module_function
                                    function="jrImage_display"
                                    module="jrProfile"
                                    type="profile_image"
                                    item_id=$item._profile_id
                                    size="small"
                                    class="img_scale"
                                    crop="auto"
                                    alt=$item.blog_title
                                    }
                                </a>
                            </div>
                            {jrCore_lang skin=$_conf.jrCore_active_skin id="107" default="follow this author" assign="ft"}
                            <span><a href="{$jamroom_url}/{$item.profile_url}">{$item.profile_name}</a> </span> {jrCore_module_function function="jrFollower_button" class="author_follow" profile_id=$item._profile_id title=$ft}  <br>
                            {$item.quota_jrProfile_name}
                        </div>
                        <div class="blog">
                            {if strlen($item.blog_image_size) > 0}
                                <div class="media_image">
                                    {jrCore_module_function
                                    function="jrImage_display"
                                    module="jrBlog"
                                    type="blog_image"
                                    item_id=$item._item_id
                                    size="xxxlarge"
                                    class="img_scale"
                                    crop="2:1"
                                    alt=$item.blog_title
                                    }
                                </div>
                            {/if}
                            {if strlen($item.blog_caption) > 0}
                                <div class="caption">
                                    {$item.blog_caption}
                                </div>
                            {/if}
                        </div>

                        <div class="media_text blog">
                            {$item.blog_text|jrBlog_readmore|jrCore_format_string:$item.profile_quota_id}
                        </div>
                        <br>
                        {if strlen($_conf.n8ISkin4_featured_story_ids) > 0}
                            <h2>{jrCore_lang skin=$_conf.jrCore_active_skin id="120" default="Recommended"}</h2>
                            <div class="recommended">
                                {jrCore_list module="jrBlog" search="_item_id in `$_conf.n8ISkin4_featured_story_ids`" order_by="_created RANDOM" limit="4" template="blog_recommend.tpl"}
                            </div>
                        {/if}
                    </div>
                </div>

                {* bring in module features *}
                <div class="action_feedback">
                    {n8ISkin4_feedback_buttons module="jrBlog" item=$item}
                    {jrCore_item_detail_features module="jrBlog" item=$item}
                </div>
            </div>
        </div>
    </div>
</div>
<div class="col4 last">
    <div class="box">
        <ul id="actions_tab">
            <li class="solo" id="blog_tab">
                <a href="#"></a>
            </li>
        </ul>
        <span>{jrCore_lang skin=$_conf.jrCore_active_skin id="111" default="You May Also Like"}</span>
        <div class="box_body">
            <div class="wrap">
                <div id="list" class="sidebar">
                    {jrCore_list
                    module="jrBlog"
                    profile_id=$item.profile_id
                    order_by='_created RANDOM'
                    pagebreak=8
                    require_image="blog_image"
                    template="chart_blog.tpl"}
                </div>
            </div>
        </div>
    </div>
</div>






