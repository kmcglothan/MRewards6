<?php
/* Smarty version 3.1.30, created on 2017-05-18 20:27:44
  from "149f26b528982cbd5172850bba90477014c0b5ec" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_591e66301781a5_75612490',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '149f26b528982cbd5172850bba90477014c0b5ec' => 
    array (
      0 => '149f26b528982cbd5172850bba90477014c0b5ec',
      1 => true,
      2 => 'string',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_591e66301781a5_75612490 (Smarty_Internal_Template $_smarty_tpl) {
?>


<?php if (isset($_smarty_tpl->tpl_vars['_items']->value)) {?>
<div class="container">
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['_items']->value, 'row', true);
$_smarty_tpl->tpl_vars['row']->iteration = 0;
$_smarty_tpl->tpl_vars['row']->index = -1;
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['row']->value) {
$_smarty_tpl->tpl_vars['row']->iteration++;
$_smarty_tpl->tpl_vars['row']->index++;
$_smarty_tpl->tpl_vars['row']->first = !$_smarty_tpl->tpl_vars['row']->index;
$_smarty_tpl->tpl_vars['row']->last = $_smarty_tpl->tpl_vars['row']->iteration == $_smarty_tpl->tpl_vars['row']->total;
$__foreach_row_0_saved = $_smarty_tpl->tpl_vars['row'];
?>
    <?php if ($_smarty_tpl->tpl_vars['row']->first || ($_smarty_tpl->tpl_vars['row']->iteration%6) == 1) {?>
    <div class="row">
    <?php }?>
        <div class="col2<?php if ($_smarty_tpl->tpl_vars['row']->last || ($_smarty_tpl->tpl_vars['row']->iteration%6) == 0) {?> last<?php }?>">
            <div class="center" style="padding:10px;">
                <a href="<?php echo $_smarty_tpl->tpl_vars['jamroom_url']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['row']->value['profile_url'];?>
"><?php if (function_exists('smarty_function_jrCore_module_function')) { echo smarty_function_jrCore_module_function(array('function'=>"jrImage_display",'module'=>"jrProfile",'type'=>"profile_image",'item_id'=>$_smarty_tpl->tpl_vars['row']->value['_profile_id'],'size'=>"medium",'crop'=>"auto",'alt'=>$_smarty_tpl->tpl_vars['row']->value['profile_name'],'title'=>$_smarty_tpl->tpl_vars['row']->value['profile_name'],'class'=>"iloutline img_shadow img_scale",'style'=>"max-width:190px;"),$_smarty_tpl); } ?></a>
            </div>
        </div>
    <?php if ($_smarty_tpl->tpl_vars['row']->last || ($_smarty_tpl->tpl_vars['row']->iteration%6) == 0) {?>
    </div>
    <?php }?>
    <?php
$_smarty_tpl->tpl_vars['row'] = $__foreach_row_0_saved;
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

</div>
<?php if ($_smarty_tpl->tpl_vars['info']->value['total_pages'] > 1) {?>
<div style="float:left; padding-top:9px;padding-bottom:9px;">
    <?php if ($_smarty_tpl->tpl_vars['info']->value['prev_page'] > 0) {?>
    <span class="button-arrow-previous" onclick="jrLoad('#newest_artists','<?php echo $_smarty_tpl->tpl_vars['info']->value['page_base_url'];?>
/p=<?php echo $_smarty_tpl->tpl_vars['info']->value['prev_page'];?>
');$('html, body').animate({ scrollTop: $('#newartists').offset().top -100 }, 'slow');return false;">&nbsp;</span>
    <?php } else { ?>
    <span class="button-arrow-previous-off">&nbsp;</span>
    <?php }?>
    <?php if ($_smarty_tpl->tpl_vars['info']->value['next_page'] > 1) {?>
    <span class="button-arrow-next" onclick="jrLoad('#newest_artists','<?php echo $_smarty_tpl->tpl_vars['info']->value['page_base_url'];?>
/p=<?php echo $_smarty_tpl->tpl_vars['info']->value['next_page'];?>
');$('html, body').animate({ scrollTop: $('#newartists').offset().top -100 }, 'slow');return false;">&nbsp;</span>
    <?php } else { ?>
    <span class="button-arrow-next-off">&nbsp;</span>
    <?php }?>
</div>
<?php }?>

<div style="float:right; padding-top:9px;">
    <a href="<?php echo $_smarty_tpl->tpl_vars['jamroom_url']->value;?>
/artists" title="More Artists"><div class="button-more">&nbsp;</div></a>
</div>

<div class="clear"> </div>
<?php }?>

<?php }
}
