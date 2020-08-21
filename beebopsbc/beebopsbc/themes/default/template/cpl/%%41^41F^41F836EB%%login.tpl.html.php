<?php /* Smarty version 2.6.31, created on 2020-08-21 03:16:23
         compiled from /var/www/beebopsbc/beebopsbc/modules/user/template/login.tpl.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('block', 't', '/var/www/beebopsbc/beebopsbc/modules/user/template/login.tpl.html', 54, false),)), $this); ?>
<form id="<?php echo $this->_tpl_vars['form']['name']; ?>
" name="<?php echo $this->_tpl_vars['form']['name']; ?>
">
	<div class="cubi_logo_large"></div>
	<div class="v_line"></div>
	<div class="login_form">
		<div style="height:55px;"></div>
		<div style="height:75px;">
		<img src="<?php echo $this->_tpl_vars['app_url']; ?>
/images/beebop_logo.png" />
		</div>
		<p class="input_row">
			<label style="width:60px;"><?php echo $this->_tpl_vars['dataPanel']['username']['label']; ?>
</label>
			<span style="width:200px; display:block;float:left;"><?php echo $this->_tpl_vars['dataPanel']['username']['element']; ?>
</span>
			<?php if ($this->_tpl_vars['errors']['username']): ?>
			<span class="input_error_msg"><?php echo $this->_tpl_vars['errors']['username']; ?>
</span>
			<?php endif; ?>			
		</p>
		
		<p class="input_row">
			<label style="width:60px;"><?php echo $this->_tpl_vars['dataPanel']['password']['label']; ?>
</label>
			<span style="width:200px; display:block;float:left;"><?php echo $this->_tpl_vars['dataPanel']['password']['element']; ?>
</span>
			<?php if ($this->_tpl_vars['errors']['password']): ?>
			<span class="input_error_msg"><?php echo $this->_tpl_vars['errors']['password']; ?>
</span>
			<?php endif; ?>		
		</p>
		<?php if ($this->_tpl_vars['dataPanel']['antispam']['required'] == 'Y'): ?>
		<p class="input_row">
			<label style="width:60px;"><?php echo $this->_tpl_vars['dataPanel']['antispam']['label']; ?>
</label>
			<span style="width:200px; display:block;float:left;"><?php echo $this->_tpl_vars['dataPanel']['antispam']['element']; ?>
</span>
			<?php if ($this->_tpl_vars['errors']['antispam']): ?>
			<span class="input_error_msg"><?php echo $this->_tpl_vars['errors']['antispam']; ?>
</span>
			<?php endif; ?>		
		</p>
		<?php endif; ?>
		<p class="input_row">
			<label style="width:60px;"><?php echo $this->_tpl_vars['dataPanel']['session_timeout']['label']; ?>
</label>
			<span style="width:200px; display:block;float:left;"><?php echo $this->_tpl_vars['dataPanel']['session_timeout']['element']; ?>
</span>
			<?php if ($this->_tpl_vars['errors']['session_timeout']): ?>
			<span class="input_error_msg"><?php echo $this->_tpl_vars['errors']['session_timeout']; ?>
</span>
			<?php endif; ?>		
		</p>		
    		    		
		<p class="input_row">
			<span onclick="document.getElementById('login_indicator').className='show'">
			<?php $_from = $this->_tpl_vars['actionPanel']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['elem']):
?>
			<?php echo $this->_tpl_vars['elem']['element']; ?>

			<?php endforeach; endif; unset($_from); ?>
			</span>
			
			<?php if ($this->_tpl_vars['errors']['login_status']): ?>
				<span id="login_indicator" class="show">
				<?php echo $this->_tpl_vars['errors']['login_status']; ?>

				</span>
			<?php else: ?>
				<span id="login_indicator" class="hidden">
				<?php $this->_tag_stack[] = array('t', array()); $_block_repeat=true;smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>Processing login...<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?>
				</span>
			<?php endif; ?>	
			
		</p>
		
	</div>


</form>

