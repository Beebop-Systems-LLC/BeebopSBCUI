<?php /* Smarty version 2.6.31, created on 2020-06-29 08:28:01
         compiled from /var/www/siremis/siremis/modules/common/template/internal_error.tpl.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('block', 't', '/var/www/siremis/siremis/modules/common/template/internal_error.tpl.html', 34, false),)), $this); ?>
<form id="<?php echo $this->_tpl_vars['form']['name']; ?>
" name="<?php echo $this->_tpl_vars['form']['name']; ?>
">
<?php echo '
<script>
function showError(){
	msgbox = document.getElementById(\'notice_msg\');
	errbox = document.getElementById(\'detailed_error_msg\');
	spacer = document.getElementById(\'form_top_spacer\');
	if(msgbox.style.display==\'block\'){
		msgbox.style.display=\'none\';
		errbox.style.display=\'block\';
		spacer.style.height=\'45px\';
	}else{
		msgbox.style.display=\'block\';
		errbox.style.display=\'none\';
		spacer.style.height=\'65px\';
	}
}
</script>
'; ?>

<div style="float:left; width:110px; height:400px;">
</div>
<div style="float:left; width:620px; height:400px;">
	<div id="form_top_spacer" style="height:65px;"></div>
	<div style="height:35px;">
		<div style="float:left; width:50px;"><img src="<?php echo $this->_tpl_vars['image_url']; ?>
/icon_forbidden.gif" /></div>
		<div style="float:left"><h1><?php echo $this->_tpl_vars['form']['title']; ?>
</h1></div>
	</div>
	<div style="height:20px;"></div>
		<div id="notice_msg" style="display:block;">
		
		<?php if ($this->_tpl_vars['notices']['status'] != 'REPORTED'): ?>
		<p class="input_row" style="height:125px; line-height:20px;">
		<label style="width:40px; height:125px;"></label>
		<span><?php $this->_tag_stack[] = array('t', array()); $_block_repeat=true;smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>
Sorry, our system is encountered an unexpected internal errors . 
Please REPORT the problem to our system administrator by clicking the below button, 
Our support team will try to solve the problem as soon as possible.

We are sorry for any inconvenience.
<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?></span></p>
		<?php else: ?>
		<p class="input_row" style="height:105px; line-height:20px;">
		<label style="width:40px; height:105px;"></label>
		<span><?php $this->_tag_stack[] = array('t', array()); $_block_repeat=true;smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>
Thank you for reporting the problem.
Our support team will try to solve the problem as soon as possible.

We are sorry for any inconvenience.
<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?></span></p>
		<?php endif; ?>

		</div>
		
		<div id="detailed_error_msg" style="display:none">
		<p class="input_row" style="height:25px; line-height:20px;">
		<label style="width:40px; height:25px;"></label>
		<span><?php $this->_tag_stack[] = array('t', array()); $_block_repeat=true;smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>The detailed error message are below:<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?></span>		
		</p>
		<div style="height:170px;">
			<div style="width:50px; height:20px; float:left"></div>
			<div class="system_error_msg">
				<div style="width:440px; padding:10px 20px 10px 20px;"><?php echo $this->_tpl_vars['errors']['system']; ?>
</div>
		
			</div>
		</div>
		</div>
				
		<div style="height:10px;"></div>
		<p class="input_row">
			<label style="width:40px; text-align:right"></label>
			<?php if ($this->_tpl_vars['notices']['status'] != 'REPORTED'): ?>
			<?php echo $this->_tpl_vars['actionPanel']['btn_report']['element']; ?>
 <?php echo $this->_tpl_vars['actionPanel']['btn_showerr']['element']; ?>

			<?php else: ?>
			<?php echo $this->_tpl_vars['actionPanel']['btn_back']['element']; ?>

			<?php endif; ?>
		</p>
</div>
</form>