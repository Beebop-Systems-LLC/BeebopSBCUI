<?php /* Smarty version 2.6.31, created on 2020-08-21 03:16:23
         compiled from /var/www/beebopsbc/beebopsbc/modules/menu/template/tab_menu.tpl */ ?>
<ul>	
	<?php $_from = $this->_tpl_vars['widget']['menu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
		<?php $this->assign('current', '0'); ?>
		<?php $_from = $this->_tpl_vars['widget']['breadcrumb']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['bc']):
?>
			<?php if ($this->_tpl_vars['item']->m_Id == $this->_tpl_vars['bc']->m_Id): ?>
	    		<?php $this->assign('current', '1'); ?>
			<?php endif; ?>
	    <?php endforeach; endif; unset($_from); ?>
	    <?php if ($this->_tpl_vars['current'] == 1): ?>
	    	<li><a class="current"  href="<?php echo $this->_tpl_vars['item']->m_URL; ?>
" ><?php echo $this->_tpl_vars['item']->m_Name; ?>
</a></li>
	    <?php else: ?>
	    	<li><a href="<?php echo $this->_tpl_vars['item']->m_URL; ?>
" ><?php echo $this->_tpl_vars['item']->m_Name; ?>
</a></li>
	    <?php endif; ?>
	<?php endforeach; endif; unset($_from); ?>
</ul>