<?php /* Smarty version 2.6.31, created on 2020-07-02 21:56:11
         compiled from /var/www/siremis/siremis/modules/user/template/myaccount.tpl.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('block', 't', '/var/www/siremis/siremis/modules/user/template/myaccount.tpl.html', 13, false),)), $this); ?>
<form id="<?php echo $this->_tpl_vars['form']['name']; ?>
" name="<?php echo $this->_tpl_vars['form']['name']; ?>
">
<div style="float:left; width:110px; height:400px;">
</div>
<div style="float:left; width:620px; height:400px;">
	<div style="height:45px;"></div>
	<div style="height:35px;">
		<div style="float:left; width:35px;"><img src="<?php echo $this->_tpl_vars['image_url']; ?>
/icon_lock.gif" /></div>
		<div style="float:left"><h1><?php echo $this->_tpl_vars['form']['title']; ?>
</h1></div>
	</div>
	<div style="height:20px;"></div>
		<p class="input_row" style="height:50px; line-height:20px;">
		<label style="width:25px; height:50px;"></label>
		<span><?php $this->_tag_stack[] = array('t', array()); $_block_repeat=true;smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?> There are all your account information.
		You may change your profile and password in below forms.<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?></span>
		</p>
	<?php $_from = $this->_tpl_vars['dataPanel']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['itemName'] => $this->_tpl_vars['item']):
?>
		<p class="input_row" >
			<label style="width:120px; text-align:right; color:#14a8f1;"><?php echo $this->_tpl_vars['item']['label']; ?>
</label>
			<span class="label_text"><?php echo $this->_tpl_vars['item']['element']; ?>
</span>
			<?php if ($this->_tpl_vars['errors'][$this->_tpl_vars['itemName']]): ?>
			<span class="input_error_msg" style="width:240px;"><?php echo $this->_tpl_vars['errors'][$this->_tpl_vars['itemName']]; ?>
</span>
			<?php elseif ($this->_tpl_vars['item']['description']): ?>
			<span class="input_desc" style="width:240px;"><?php echo $this->_tpl_vars['item']['description']; ?>
</span>			
			<?php endif; ?>			
		</p>
	<?php endforeach; endif; unset($_from); ?>
		
		<div style="height:10px;"></div>
		<p class="input_row">
			<label style="width:120px; text-align:right"></label>
			<?php $_from = $this->_tpl_vars['actionPanel']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['elem']):
?>
				<?php echo $this->_tpl_vars['elem']['element']; ?>

			<?php endforeach; endif; unset($_from); ?>
		</p>
</div>
</form>