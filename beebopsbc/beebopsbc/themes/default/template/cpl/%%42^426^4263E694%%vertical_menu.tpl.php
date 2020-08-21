<?php /* Smarty version 2.6.31, created on 2020-06-25 01:02:28
         compiled from /var/www/siremis/siremis/themes/default/template/vertical_menu.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'count', '/var/www/siremis/siremis/themes/default/template/vertical_menu.tpl', 20, false),)), $this); ?>
<h2><?php echo $this->_tpl_vars['widget']['title']; ?>
</h2>
<ul class="toplevel <?php echo $this->_tpl_vars['widget']['css']; ?>
 left_menu 222">
	<?php $_from = $this->_tpl_vars['widget']['menu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
	<li>
	    <?php $this->assign('current', '0'); ?>
	    <?php $_from = $this->_tpl_vars['widget']['breadcrumb']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['bc']):
?>
			<?php if ($this->_tpl_vars['item']->m_Id == $this->_tpl_vars['bc']->m_Id): ?>
	    		<?php $this->assign('current', '1'); ?>
			<?php endif; ?>
	    <?php endforeach; endif; unset($_from); ?>
		<?php if ($this->_tpl_vars['current'] == 1): ?>
			<?php $this->assign('menu_class', 'current'); ?>	
		<?php else: ?>
			<?php $this->assign('menu_class', ""); ?>
	    <?php endif; ?>	
		<a onclick="show_submenu(this)" class="<?php echo $this->_tpl_vars['menu_class']; ?>
" href="<?php if ($this->_tpl_vars['item']->m_URL): ?><?php echo $this->_tpl_vars['item']->m_URL; ?>
<?php else: ?>javascript:<?php endif; ?>">
			<img class="<?php echo $this->_tpl_vars['item']->m_IconCSSClass; ?>
" src="<?php echo $this->_tpl_vars['image_url']; ?>
/<?php if ($this->_tpl_vars['item']->m_IconImage != ''): ?><?php echo $this->_tpl_vars['item']->m_IconImage; ?>
<?php else: ?>spacer.gif<?php endif; ?>" /><?php echo $this->_tpl_vars['item']->m_Name; ?>

		</a>	
		<?php if (is_array ( $this->_tpl_vars['item']->m_ChildNodes )): ?>
		<?php if (count($this->_tpl_vars['item']->m_ChildNodes) > 0): ?>
		<ul class="secondlevel module" <?php if ($this->_tpl_vars['menu_class'] == 'current'): ?>style="display:block;"<?php endif; ?>>
		<?php $_from = $this->_tpl_vars['item']->m_ChildNodes; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['subitem']):
?>
    		<?php $this->assign('current', '0'); ?>
    	    <?php $_from = $this->_tpl_vars['widget']['breadcrumb']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['bc']):
?>
    			<?php if ($this->_tpl_vars['subitem']->m_Id == $this->_tpl_vars['bc']->m_Id): ?>
    	    		<?php $this->assign('current', '1'); ?>
    			<?php endif; ?>
    	    <?php endforeach; endif; unset($_from); ?>
			<?php if ($this->_tpl_vars['current'] == 1): ?>
				<?php if ($this->_tpl_vars['subitem']->m_URL): ?>
					<?php $this->assign('submenu_class', 'current'); ?>
				<?php else: ?>
					<?php $this->assign('submenu_class', ""); ?>
			    <?php endif; ?>					
			<?php else: ?>
				<?php $this->assign('submenu_class', ""); ?>
		    <?php endif; ?>					
			<li><a class="<?php echo $this->_tpl_vars['submenu_class']; ?>
" href="<?php if ($this->_tpl_vars['subitem']->m_URL): ?><?php echo $this->_tpl_vars['subitem']->m_URL; ?>
<?php else: ?>javascript:<?php endif; ?>"><?php echo $this->_tpl_vars['subitem']->m_Name; ?>
</a></li>
			<?php if (is_array ( $this->_tpl_vars['subitem']->m_ChildNodes )): ?>
			<?php if (count($this->_tpl_vars['subitem']->m_ChildNodes) > 0): ?>
				<?php $_from = $this->_tpl_vars['subitem']->m_ChildNodes; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['thirditem']):
?>
			   		<?php $this->assign('current', '0'); ?>
			   	    <?php $_from = $this->_tpl_vars['widget']['breadcrumb']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['bc']):
?>
			   			<?php if ($this->_tpl_vars['thirditem']->m_Id == $this->_tpl_vars['bc']->m_Id): ?>
				    		<?php $this->assign('current', '1'); ?>
						<?php endif; ?>
			   	    <?php endforeach; endif; unset($_from); ?>
					<?php if ($this->_tpl_vars['current'] == 1): ?>
						<?php $this->assign('submenu_class', 'current'); ?>	
					<?php else: ?>
						<?php $this->assign('submenu_class', ""); ?>
				    <?php endif; ?>					
					<li><a class="<?php echo $this->_tpl_vars['submenu_class']; ?>
" href="<?php if ($this->_tpl_vars['thirditem']->m_URL): ?><?php echo $this->_tpl_vars['thirditem']->m_URL; ?>
<?php else: ?>javascript:<?php endif; ?>"> &raquo; <?php echo $this->_tpl_vars['thirditem']->m_Name; ?>
</a></li>						
				<?php endforeach; endif; unset($_from); ?>	
			<?php endif; ?>
			<?php endif; ?>
		<?php endforeach; endif; unset($_from); ?>	
		</ul>
		<?php endif; ?>
		<?php endif; ?>
	</li>
	<?php endforeach; endif; unset($_from); ?>	
</ul>
<div class="v_spacer"></div>