{assign var="selected" value="contact"}
{assign var="no_inner_div" value="true"}
{jrCore_lang  skin=$_conf.jrCore_active_skin id="68" assign="page_title"}
{jrCore_page_title title=$page_title}
{jrCore_include template="header.tpl"}
<script type="text/javascript">
    $(document).ready(function(){
        jrSkinInit();
     });
</script>

<div class="container">

    <div class="row">

        <div class="col12 last">

            <div class="inner mb8">
                <span class="title">{jrCore_lang  skin=$_conf.jrCore_active_skin id="68" default="Contact Us"}</span>
            </div>

            <div class="page_note">{jrCore_lang  skin=$_conf.jrCore_active_skin id="73" default="Please enter the message you would like to send"}{jrCore_lang  skin=$_conf.jrCore_active_skin id="74" default=" and we will get back to you ASAP."}</div>

            <div class="inner">

                {if jrUser_is_logged_in() && jrCore_module_is_active("jrPrivateNote")}
                    {jrCore_module_url module="jrPrivateNote" assign="notesurl"}
                    {jrCore_form_create_session module="jrPrivateNote" option="new" assign="token"}
                    <div class="page_notice_drop">
                        <div id="jrPrivateNote_new_msg" class="page_notice form_notice"></div>
                    </div>
                    <div class="inner">
                        <form id="jrPrivateNote_new" enctype="multipart/form-data" accept-charset="utf-8" method="post" action="{$jamroom_url}/{$notesurl}/new_save" name="jrPrivateNote_new">
                            <input id="jr_html_form_token" type="hidden" value="{$token}" name="jr_html_form_token">
                            <input type="hidden" name="note_to_id" value="1">
                            <div class="left capital bold" style="width:75%;margin:0 auto;">
                                {jrCore_lang skin=$_conf.jrCore_active_skin id="69" default="subject"}:<br><br>
                                <input id="note_subject" class="form_text" type="text" value="" name="note_subject" style="width:100%;">
                            </div>
                            <br><br>
                            <div class="left capital bold" style="width:75%;margin:0 auto;">
                                {jrCore_lang skin=$_conf.jrCore_active_skin id="70" default="message"}:<br><br>
                                <textarea id="note_text" class="form_textarea" name="note_text" style="width:100%;"></textarea>
                            </div>
                            <br><br>
                            <div class="center capital bold" style="width:75%;margin:0 auto;">
                                <input id="jrPrivateNote_new_submit" class="form_button" type="submit" value="{jrCore_lang skin=$_conf.jrCore_active_skin id="75" default="Send Message"}">&nbsp;
                                &nbsp;<input type="button" value="{jrCore_lang  skin=$_conf.jrCore_active_skin id="85" default="Cancel"}" onclick="jrCore_window_location('{$jamroom_url}');" class="form_button">
                            </div>
                        </form>
                    </div>
                {/if}

            </div>

        </div>

    </div>

</div>

{jrCore_include template="footer.tpl"}

