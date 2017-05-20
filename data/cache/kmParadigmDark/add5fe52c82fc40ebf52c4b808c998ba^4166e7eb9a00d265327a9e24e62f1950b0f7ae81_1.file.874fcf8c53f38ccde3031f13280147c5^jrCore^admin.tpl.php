<?php
/* Smarty version 3.1.30, created on 2017-05-18 20:33:15
  from "/webserver/jamroom5/data/cache/jrCore/874fcf8c53f38ccde3031f13280147c5^jrCore^admin.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_591e677b6f4322_35642033',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4166e7eb9a00d265327a9e24e62f1950b0f7ae81' => 
    array (
      0 => '/webserver/jamroom5/data/cache/jrCore/874fcf8c53f38ccde3031f13280147c5^jrCore^admin.tpl',
      1 => 1495164795,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_591e677b6f4322_35642033 (Smarty_Internal_Template $_smarty_tpl) {
if (function_exists('smarty_function_jrCore_module_url')) { echo smarty_function_jrCore_module_url(array('module'=>"jrCore",'assign'=>"core_url"),$_smarty_tpl); } ?>

<div id="admin_container" class="container">
    <div class="row">

        <div class="col3">
            <div class="item-list">

                <table>
                    <tr>
                        <td class="page_tab_bar_holder">
                            <ul class="page_tab_bar">
                                <li id="dtab" class="page_tab page_tab_first"><a href="<?php echo $_smarty_tpl->tpl_vars['jamroom_url']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['core_url']->value;?>
/dashboard">dashboard</a></li>
                                <?php if (isset($_smarty_tpl->tpl_vars['active_tab']->value) && $_smarty_tpl->tpl_vars['active_tab']->value == 'skins') {?>
                                    <li id="mtab" class="page_tab"><a href="<?php echo $_smarty_tpl->tpl_vars['jamroom_url']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['core_url']->value;?>
/admin/global">modules</a></li>
                                    <li id="stab" class="page_tab page_tab_last page_tab_active"><a href="<?php echo $_smarty_tpl->tpl_vars['jamroom_url']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['core_url']->value;?>
/skin_admin">skins</a></li>
                                <?php } else { ?>
                                    <li id="mtab" class="page_tab page_tab_active"><a href="<?php echo $_smarty_tpl->tpl_vars['jamroom_url']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['core_url']->value;?>
/admin/global">modules</a></li>
                                    <li id="stab" class="page_tab page_tab_last"><a href="<?php echo $_smarty_tpl->tpl_vars['jamroom_url']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['core_url']->value;?>
/skin_admin">skins</a></li>
                                <?php }?>
                            </ul>
                        </td>
                    </tr>
                </table>

                <div id="item-holder">
                    <dl class="accordion">

                    <?php if (isset($_smarty_tpl->tpl_vars['_modules']->value)) {?>

                        
                        <dt class="page_section_header admin_section_header admin_section_search">
                            <input type="text" name="ss" class="form_text form_admin_search" placeholder="Search" onkeypress="if (event && event.keyCode == 13 && this.value.length > 2) { jrCore_window_location('<?php echo $_smarty_tpl->tpl_vars['jamroom_url']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['core_url']->value;?>
/search/ss='+ jrE(this.value));return false; };">
                        </dt>

                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['_modules']->value, '_mods', false, 'category');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['category']->value => $_smarty_tpl->tpl_vars['_mods']->value) {
?>

                            <a href="" class="accordion_section_<?php echo jrCore_url_string($_smarty_tpl->tpl_vars['category']->value);?>
"><dt class="page_section_header admin_section_header"><?php echo $_smarty_tpl->tpl_vars['category']->value;?>
</dt></a>
                            <?php if ($_smarty_tpl->tpl_vars['category']->value == $_smarty_tpl->tpl_vars['default_category']->value) {?>
                            <dd id="c<?php echo $_smarty_tpl->tpl_vars['category']->value;?>
">
                            <?php } else { ?>
                            <dd id="c<?php echo $_smarty_tpl->tpl_vars['category']->value;?>
" style="display:none">
                            <?php }?>

                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['_mods']->value, '_mod', false, 'mod_dir');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['mod_dir']->value => $_smarty_tpl->tpl_vars['_mod']->value) {
?>
                                    <?php if (function_exists('smarty_function_jrCore_get_module_index')) { echo smarty_function_jrCore_get_module_index(array('module'=>$_smarty_tpl->tpl_vars['mod_dir']->value,'assign'=>"url"),$_smarty_tpl); } ?>
                                    <a href="<?php echo $_smarty_tpl->tpl_vars['jamroom_url']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['_mod']->value['module_url'];?>
/<?php echo $_smarty_tpl->tpl_vars['url']->value;?>
" class="tt<?php echo $_smarty_tpl->tpl_vars['mod_dir']->value;?>
">
                                    <?php if (isset($_smarty_tpl->tpl_vars['_post']->value['module']) && $_smarty_tpl->tpl_vars['_post']->value['module'] == $_smarty_tpl->tpl_vars['mod_dir']->value) {?>
                                        <div class="item-row item-row-active">
                                    <?php } else { ?>
                                        <div class="item-row">
                                    <?php }?>
                                        <div class="item-icon">
                                            <?php if (function_exists('smarty_function_jrCore_get_module_icon_html')) { echo smarty_function_jrCore_get_module_icon_html(array('module'=>$_smarty_tpl->tpl_vars['mod_dir']->value,'size'=>32),$_smarty_tpl); } ?>
                                        </div>
                                        <div class="item-entry"><?php echo $_smarty_tpl->tpl_vars['_mod']->value['module_name'];?>
</div>
                                        <div class="item-enabled">
                                        <?php if ($_smarty_tpl->tpl_vars['_mod']->value['module_active'] != '1') {?>
                                            <span class="item-disabled" title="module is currently disabled">D</span>
                                        <?php }?>
                                        </div>
                                    </div>
                                    </a>
                                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>


                            </dd>
                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>


                    <?php } else { ?>

                        
                        <dt class="page_section_header admin_section_header admin_section_search">
                            <input type="text" name="ss" class="form_text form_admin_search" placeholder="Search" onkeypress="if (event && event.keyCode == 13 && this.value.length > 2) { jrCore_window_location('<?php echo $_smarty_tpl->tpl_vars['jamroom_url']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['core_url']->value;?>
/search/sa=skin/skin=<?php echo $_smarty_tpl->tpl_vars['_conf']->value['jrCore_active_skin'];?>
/ss='+ jrE(this.value));return false; };">
                        </dt>

                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['_skins']->value, '_skns', false, 'category');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['category']->value => $_smarty_tpl->tpl_vars['_skns']->value) {
?>

                            <a href="" class="accordion_section_<?php echo jrCore_url_string($_smarty_tpl->tpl_vars['category']->value);?>
"><dt class="page_section_header admin_section_header"><?php echo $_smarty_tpl->tpl_vars['category']->value;?>
</dt></a>
                            <?php if ($_smarty_tpl->tpl_vars['category']->value == $_smarty_tpl->tpl_vars['default_category']->value) {?>
                            <dd id="c<?php echo $_smarty_tpl->tpl_vars['category']->value;?>
">
                            <?php } else { ?>
                            <dd id="c<?php echo $_smarty_tpl->tpl_vars['category']->value;?>
" style="display:none">
                            <?php }?>

                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['_skns']->value, '_skin', false, 'skin_dir');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['skin_dir']->value => $_smarty_tpl->tpl_vars['_skin']->value) {
?>
                                    <a href="<?php echo $_smarty_tpl->tpl_vars['jamroom_url']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['core_url']->value;?>
/skin_admin/info/skin=<?php echo $_smarty_tpl->tpl_vars['skin_dir']->value;?>
" class="tt<?php echo $_smarty_tpl->tpl_vars['skin_dir']->value;?>
">
                                    <?php if ((isset($_smarty_tpl->tpl_vars['_post']->value['skin']) && $_smarty_tpl->tpl_vars['_post']->value['skin'] == $_smarty_tpl->tpl_vars['skin_dir']->value) || (!isset($_smarty_tpl->tpl_vars['_post']->value['skin']) && $_smarty_tpl->tpl_vars['skin_dir']->value == $_smarty_tpl->tpl_vars['_conf']->value['jrCore_active_skin'])) {?>
                                        <div class="item-row item-row-active">
                                    <?php } else { ?>
                                        <div class="item-row">
                                    <?php }?>
                                        <div class="item-icon">
                                            <?php if (function_exists('smarty_function_jrCore_get_skin_icon_html')) { echo smarty_function_jrCore_get_skin_icon_html(array('skin'=>$_smarty_tpl->tpl_vars['skin_dir']->value,'size'=>32),$_smarty_tpl); } ?>
                                        </div>
                                        <div class="item-entry"><?php echo $_smarty_tpl->tpl_vars['_skin']->value['title'];?>
</div>
                                    </div>
                                    </a>
                                <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>


                            </dd>
                        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>


                    <?php }?>

                </div>
            </div>
        </div>

        <div class="col9 last">
            <div id="item-work">
                <?php echo $_smarty_tpl->tpl_vars['admin_page_content']->value;?>

            </div>
        </div>

    </div>
</div>
<?php }
}
