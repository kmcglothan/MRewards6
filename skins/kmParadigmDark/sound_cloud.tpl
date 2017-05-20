{assign var="selected" value="music"}
{assign var="no_inner_div" value="true"}
{jrCore_lang skin=$_conf.jrCore_active_skin id="154" default="SoundCloud" assign="page_title"}
{jrCore_page_title title=$page_title}
{jrCore_include template="header.tpl"}
<script type="text/javascript">
    $(document).ready(function(){
        jrSetActive('#default');
     });
</script>

{if isset($_post.option) && $_post.option == 'by_plays'}
    {assign var="order_by" value="soundcloud_stream_count NUMERICAL_DESC"}
{elseif isset($_post.option) && $_post.option == 'by_ratings'}
    {assign var="order_by" value="soundcloud_rating_1_average_count NUMERICAL_DESC"}
{else}
    {assign var="order_by" value="_created desc"}
{/if}


<div class="container">
    <div class="row">

        <div class="col9">

            <div class="body_1 mr5">

                <div class="container">
                    <div class="row">
                        <div class="col12 last">
                            <h2>{jrCore_lang skin=$_conf.jrCore_active_skin id="154" default="SoundCloud"}</h2>
                            <div class="body_1">
                                <div class="br-info capital" style="margin-bottom:10px;">
                                    {if !isset($_post.option) || $_post.option == 'by_newest'}
                                    {jrCore_lang skin=$_conf.jrCore_active_skin id="11" default="newest"}&nbsp;
                                    {else}
                                    <a href="{$jamroom_url}/sound_cloud/by_newest{if isset($_post._1) && strlen($_post._1) > 0}/{$_post._1}{/if}">{jrCore_lang skin=$_conf.jrCore_active_skin id="11" default="newest"}</a>&nbsp;
                                    {/if}

                                    <span class="separator">&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;

                                    {if isset($_post.option) && $_post.option == 'by_plays'}
                                    {jrCore_lang skin=$_conf.jrCore_active_skin id="59" default="by plays"}
                                    {else}
                                    <a href="{$jamroom_url}/sound_cloud/by_plays{if isset($_post._1) && strlen($_post._1) > 0}/{$_post._1}{/if}">{jrCore_lang skin=$_conf.jrCore_active_skin id="59" default="by plays"}</a>
                                    {/if}

                                    {if jrCore_module_is_active('jrRating')}
                                    <span class="separator">&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;

                                    {if isset($_post.option) && $_post.option == 'by_ratings'}
                                    {jrCore_lang skin=$_conf.jrCore_active_skin id="60" default="by rating"}
                                    {else}
                                    <a href="{$jamroom_url}/sound_cloud/by_ratings{if isset($_post._1) && strlen($_post._1) > 0}/{$_post._1}{/if}">{jrCore_lang skin=$_conf.jrCore_active_skin id="60" default="by rating"}</a>
                                    {/if}
                                    {/if}
                                </div>
                                &raquo;&nbsp;
                            {* prep our array for looping through and constructing our letter chooser *}
                            {jrCore_array name="alpha" value=$_conf.kmParadigmDark_letter_alphabet explode="true" separator=","}
                            {foreach from=$alpha item="char"}
                                <a href="{$jamroom_url}/sound_cloud{if isset($_post.option) && strlen($_post.option) > 0}/{$_post.option}{else}/by_newest{/if}/{$char}"><span class="capital">{$char}</span></a>&nbsp;
                            {/foreach}
                                &laquo;&nbsp;<a href="{$jamroom_url}/sound_cloud{if isset($_post.option) && strlen($_post.option) > 0}/{$_post.option}{/if}">{jrCore_lang skin=$_conf.jrCore_active_skin id="141" default="Reset"}</a>
                                <br><br>

                                {jrCore_list module="jrSoundCloud" order_by=$order_by template="sound_cloud_row.tpl" search="soundcloud_title like `$_post._1`%" pagebreak="8" page=$_post.p}
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

        <div class="col3 last">
            <div class="body_1">
                {jrCore_include template="side_home.tpl"}
            </div>
        </div>

    </div>
</div>

{jrCore_include template="footer.tpl"}
