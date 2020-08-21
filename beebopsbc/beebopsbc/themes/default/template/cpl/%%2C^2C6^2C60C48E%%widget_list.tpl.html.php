<?php /* Smarty version 2.6.31, created on 2020-08-21 03:16:23
         compiled from /var/www/beebopsbc/beebopsbc/modules/help/template/widget_list.tpl.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'count', '/var/www/beebopsbc/beebopsbc/modules/help/template/widget_list.tpl.html', 12, false),array('block', 't', '/var/www/beebopsbc/beebopsbc/modules/help/template/widget_list.tpl.html', 17, false),)), $this); ?>
<form id="<?php echo $this->_tpl_vars['form']['name']; ?>
" name="<?php echo $this->_tpl_vars['form']['name']; ?>
">
<table></table>
<div class="title">
	<h2><?php echo $this->_tpl_vars['form']['title']; ?>
</h2>
	<p>
	<span><a href="javascript:">Help Center</a></span>
	<a onclick="switch_help_content()" href="javascript:"><img id="switch_help_content_btn" class="btn_max"  src="<?php echo $this->_tpl_vars['image_url']; ?>
/spacer.gif" border="0" /></a>	</p>
</div>
<div id="help_content" style="display:none">
<ul>
	<?php if (is_array ( $this->_tpl_vars['dataPanel']['data'] )): ?>
	<?php if (count($this->_tpl_vars['dataPanel']['data']) > 0): ?>
		<?php $_from = $this->_tpl_vars['dataPanel']['data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['row']):
?>
			<li><?php echo $this->_tpl_vars['row']['fld_title']; ?>
</li>
		<?php endforeach; endif; unset($_from); ?>
	<?php else: ?>
		<li><?php $this->_tag_stack[] = array('t', array()); $_block_repeat=true;smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>No help tips for this module.<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?></li>
	<?php endif; ?>
	<?php endif; ?>
</ul>
</div>
<div style="padding-left:10px; padding-top:10px; height:30px;">
		<?php $_from = $this->_tpl_vars['searchPanel']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['elem']):
?>
			<?php if ($this->_tpl_vars['elem']['label']): ?> <?php echo $this->_tpl_vars['elem']['label']; ?>
 <?php endif; ?> <?php echo $this->_tpl_vars['elem']['element']; ?>

		<?php endforeach; endif; unset($_from); ?>
</div>
<script>init_help_content()</script>
</form>