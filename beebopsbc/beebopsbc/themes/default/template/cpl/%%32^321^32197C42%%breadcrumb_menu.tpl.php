<?php /* Smarty version 2.6.31, created on 2020-08-21 03:16:23
         compiled from /var/www/beebopsbc/beebopsbc/modules/menu/template/breadcrumb_menu.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('block', 't', '/var/www/beebopsbc/beebopsbc/modules/menu/template/breadcrumb_menu.tpl', 2, false),)), $this); ?>
<div style="padding-left:20px;">
<a href="javascript:"><img style="margin-top:6px;" border="0" src="<?php echo $this->_tpl_vars['image_url']; ?>
/nav_root_icon.gif" /><?php $this->_tag_stack[] = array('t', array()); $_block_repeat=true;smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>Main System<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?></a>
	<?php $_from = $this->_tpl_vars['widget']['breadcrumb']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
		<?php if ($this->_tpl_vars['item']->m_URL != ""): ?>
		<a href="<?php echo $this->_tpl_vars['item']->m_URL; ?>
">
		<?php else: ?>
		<a href="javascript:">
		<?php endif; ?>
		<img class="icon_dot" border="0" src="<?php echo $this->_tpl_vars['image_url']; ?>
/spacer.gif" /><?php echo $this->_tpl_vars['item']->m_Name; ?>
</a>	    
	<?php endforeach; endif; unset($_from); ?>
</div>