<?php /* Smarty version 2.6.31, created on 2020-06-25 01:01:58
         compiled from /var/www/siremis/siremis/modules/menu/template/sitemap_menu.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'count', '/var/www/siremis/siremis/modules/menu/template/sitemap_menu.tpl', 27, false),)), $this); ?>
<form id="<?php echo $this->_tpl_vars['form']['name']; ?>
" name="<?php echo $this->_tpl_vars['form']['name']; ?>
">

<div style="padding-left:25px; ">

	<div>
		<div ><h2><?php echo $this->_tpl_vars['widget']['title']; ?>
</h2></div>
	</div>
		
		<?php if ($this->_tpl_vars['widget']['description']): ?>
		<p class="input_row" style="line-height:20px;padding-bottom:20px;">		
		<span><?php echo $this->_tpl_vars['widget']['description']; ?>
</span>
		</p>
		<?php else: ?>
		<div style="height:15px;"></div>
		<?php endif; ?>

	<?php $this->assign('i', 0); ?>
	<table class="dashboard" >
	<?php $_from = $this->_tpl_vars['widget']['menu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['item']):
?>
	  <?php if ($this->_tpl_vars['i'] % 3 == 0): ?>
	     <tr>
	  <?php endif; ?>
	  	<td valign="top">
	  		<div class="<?php echo $this->_tpl_vars['item']->m_IconCSSClass; ?>
">
				<h3><?php echo $this->_tpl_vars['item']->m_Name; ?>
</h3>
				<p><?php echo $this->_tpl_vars['item']->m_Description; ?>
</p>	
				<?php if (count($this->_tpl_vars['item']->m_ChildNodes) > 0): ?>
				<ul>
				<?php $_from = $this->_tpl_vars['item']->m_ChildNodes; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['subitem']):
?>													
					<li><a href="<?php if ($this->_tpl_vars['subitem']->m_URL): ?><?php echo $this->_tpl_vars['subitem']->m_URL; ?>
<?php else: ?>javascript:<?php endif; ?>"><?php echo $this->_tpl_vars['subitem']->m_Name; ?>
</a></li>					
				<?php endforeach; endif; unset($_from); ?>	
				</ul>
				<?php $this->assign('i', $this->_tpl_vars['i']+1); ?>	
				<?php endif; ?>
			</div>
	  	</td>
	  <?php if ($this->_tpl_vars['i'] % 3 == 0): ?>
	     <tr>
	  <?php endif; ?>
	<?php endforeach; endif; unset($_from); ?>
	</table>
</div>

</form>		