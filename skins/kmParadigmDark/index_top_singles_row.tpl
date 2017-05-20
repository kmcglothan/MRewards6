{if isset($_items)}
    {jrCore_module_url module="jrAudio" assign="murl"}
    <div class="container">
        {foreach from=$_items item="item"}
        {if $item@first || ($item@iteration % 3) == 1}
        <div class="row">
        {/if}
            <div class="col4{if $item@last || ($item@iteration % 3) == 0} last{/if}">
                <div class="center mb15">
                    <a href="{$jamroom_url}/{$item.profile_url}/{$murl}/{$item._item_id}/{$item.audio_title_url}" title="{$item.audio_title}">{jrCore_module_function function="jrImage_display" module="jrAudio" type="audio_image" item_id=$item._item_id size="medium" crop="auto" width="190" height="190" alt=$item.audio_title title=$item.audio_title class="iloutline img_shadow"}</a><br>
                    <br>
                    <h3><a href="{$jamroom_url}/{$item.profile_url}/{$murl}/{$item._item_id}/{$item.audio_title_url}" title="{$item.audio_title}"><span class="hl-3">{$item.audio_title|truncate:20:"...":false}</span></a></h3><br>
                    <h4><a href="{$jamroom_url}/{$item.profile_url}">{$item.profile_name|truncate:20:"...":false}</a></h4><br>
                    <div class="page box_shadow" style="width: 190px;margin:10px auto 10px auto;">

                        <div class="container">
                            <div class="row">
                                <div class="col12 last">
                                    <div class="container">
                                        <div classw="row">
                                            <div class="col2">
                                                <div class="center p5">
                                                {if $item.audio_file_extension == 'mp3'}
                                                    {jrCore_media_player type="jrAudio_button" module="jrAudio" field="audio_file" item=$item image="button_player"}
                                                {else}
                                                    {jrCore_lang skin=$_conf.jrCore_active_skin id="156" default="Download" assign="alttitle"}
                                                    <a href="{$jamroom_url}/{$murl}/download/audio_file/{$item._item_id}">{jrCore_image image="download.png" alt=$alttitle title=$alttitle}</a>
                                                {/if}
                                                </div>
                                            </div>
                                            <div class="col10 last">
                                                <div class="center p5">
                                                    <span class="capital hl-4">{jrCore_lang skin=$_conf.jrCore_active_skin id="51" default="Plays:"}</span>&nbsp;{$item.audio_file_stream_count|default:0}
                                                </div>
                                            </td>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        {if $item@last || ($row@iteration % 3) == 0}
        </div>
        {/if}
        {/foreach}
    </div>
    {if $info.total_pages > 1}
        <div style="float:left; padding-top:9px;padding-bottom:9px;">
            {if $info.prev_page > 0}
                <span class="button-arrow-previous" onclick="jrLoad('#top_singles','{$info.page_base_url}/p={$info.prev_page}');$('html, body').animate({ scrollTop: $('#tsingles').offset().top -100 }, 'slow');return false;">&nbsp;</span>
            {else}
                <span class="button-arrow-previous-off">&nbsp;</span>
            {/if}
            {if $info.next_page > 1}
                <span class="button-arrow-next" onclick="jrLoad('#top_singles','{$info.page_base_url}/p={$info.next_page}');$('html, body').animate({ scrollTop: $('#tsingles').offset().top -100 }, 'slow');return false;">&nbsp;</span>
            {else}
                <span class="button-arrow-next-off">&nbsp;</span>
            {/if}
        </div>
    {/if}
    <div style="float:right; padding-top:9px;">
        <a href="{$jamroom_url}/music" title="More Singles"><div class="button-more">&nbsp;</div></a>
    </div>

    <div class="clear"> </div>
{/if}

