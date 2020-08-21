<?php /* Smarty version 2.6.31, created on 2020-07-31 23:57:00
         compiled from system_right_detailform.tpl.html */ ?>
<html>
<head>
                <link href='https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en'
                rel='stylesheet' type='text/css'>
                <link rel="stylesheet" href="css/mdDateTimePicker.css">
                <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.27.0/locale/af.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/md-date-time-picker@2.2.0/dist/js/mdDateTimePicker.min.js"></script>
				
</head>
<form id="<?php echo $this->_tpl_vars['form']['name']; ?>
" name="<?php echo $this->_tpl_vars['form']['name']; ?>
">
<div style="padding-left:25px;padding-right:40px;">
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "system_appbuilder_btn.tpl.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	<table><tr><td>
		<?php if ($this->_tpl_vars['form']['icon'] != ''): ?>
		<div class="form_icon"><img  src="<?php echo $this->_tpl_vars['image_url']; ?>
/<?php echo $this->_tpl_vars['form']['icon']; ?>
" border="0" /></div>
		<?php endif; ?>
	
		<div style="float:left; width:600px;">
			<h2>
			<?php echo $this->_tpl_vars['form']['title']; ?>

			</h2> 
			<?php if ($this->_tpl_vars['form']['description']): ?>
			<p class="input_row" style="line-height:20px;padding-bottom:20px;">		
			<span><?php echo $this->_tpl_vars['form']['description']; ?>
</span>
			</p>
			<?php else: ?>
			<div style="height:15px;"></div>
			<?php endif; ?>
		</div>
	</td></tr></table>
		
		
		
	<div style="padding-left:30px;">
	<?php $_from = $this->_tpl_vars['dataPanel']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['itemName'] => $this->_tpl_vars['item']):
?>
		<?php if ($this->_tpl_vars['item']['type'] == 'CKEditor' || $this->_tpl_vars['item']['type'] == 'RichText' || $this->_tpl_vars['item']['type'] == 'Textarea'): ?>
			<table  id="<?php echo $this->_tpl_vars['itemName']; ?>
_container" class="input_row">
			<tr>
			<td style="width:80px;">	
				<label style="text-align:left"><?php echo $this->_tpl_vars['item']['label']; ?>
</label>
			</td>
			<td>
				<?php if ($this->_tpl_vars['errors'][$this->_tpl_vars['itemName']]): ?>
				<span class="input_error_msg" style="width:240px;"><?php echo $this->_tpl_vars['errors'][$this->_tpl_vars['itemName']]; ?>
</span>
				<?php elseif ($this->_tpl_vars['item']['description']): ?>
				<span class="input_desc" style="width:240px;"><?php echo $this->_tpl_vars['item']['description']; ?>
</span>			
				<?php endif; ?>
			</td>
			</tr>
			<tr><td colspan="2" align="center" >
				<span class="mdc-text-field "><?php echo $this->_tpl_vars['item']['element']; ?>
</span>
							
			</td></tr>
			</table>		
		<?php else: ?>
			<?php if ($this->_tpl_vars['item']['type'] == 'Hidden'): ?>
			<table  id="<?php echo $this->_tpl_vars['itemName']; ?>
_container" class="input_row" style="display:none">
			<?php else: ?>
			<table  id="<?php echo $this->_tpl_vars['itemName']; ?>
_container" class="input_row">
			<?php endif; ?>					
			<tr>
			<td >	
				<label style="text-align:left"><?php echo $this->_tpl_vars['item']['label']; ?>
</label>
			</td>
			<td>
			
			<?php if ($this->_tpl_vars['item']['type'] == 'InputText'): ?>
					<span class="mdc-text-field mdc-text-field--outlined"><?php echo $this->_tpl_vars['item']['element']; ?>

					<span class="mdc-notched-outline">
						<span class="mdc-notched-outline__leading"></span>
								<span class="mdc-notched-outline__notch">
      
								</span>
				<span class="mdc-notched-outline__trailing"></span>
				</span>
				</span>
			<?php elseif ($this->_tpl_vars['item']['type'] == 'Password'): ?>
			<span class="mdc-text-field mdc-text-field--outlined"><?php echo $this->_tpl_vars['item']['element']; ?>

					<span class="mdc-notched-outline">
						<span class="mdc-notched-outline__leading"></span>
								<span class="mdc-notched-outline__notch">
      
								</span>
				<span class="mdc-notched-outline__trailing"></span>
				</span>
				</span>
				<?php elseif ($this->_tpl_vars['item']['type'] == 'Listbox'): ?>
					  <div class="mdc-select mdc-select--outlined demo-enhanced-select hero-select mdc-select--focused mdc-select--activated">
						<?php echo $this->_tpl_vars['item']['element']; ?>

					  </div>
					  <?php elseif ($this->_tpl_vars['item']['type'] == 'TreeListbox'): ?>
					  <div class="mdc-select mdc-select--outlined demo-enhanced-select hero-select mdc-select--focused mdc-select--activated">
						<?php echo $this->_tpl_vars['item']['element']; ?>

					  </div>					  
				<?php else: ?>
					<span class="label_text"><?php echo $this->_tpl_vars['item']['element']; ?>
</span>
				<?php endif; ?>
				<?php if ($this->_tpl_vars['errors'][$this->_tpl_vars['itemName']]): ?>
				<span class="input_error_msg" style="width:240px;"><?php echo $this->_tpl_vars['errors'][$this->_tpl_vars['itemName']]; ?>
</span>
				<?php elseif ($this->_tpl_vars['item']['description']): ?>
				<span class="input_desc" style="width:240px;"><?php echo $this->_tpl_vars['item']['description']; ?>
</span>			
				<?php endif; ?>
			</td>
			</tr>
			</table>
		<?php endif; ?>			
		
	<?php endforeach; endif; unset($_from); ?>
		
		<div style="height:10px;"></div>
		<p class="input_row">
			
			<?php $_from = $this->_tpl_vars['actionPanel']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['elem']):
?>
				<?php echo $this->_tpl_vars['elem']['element']; ?>

			<?php endforeach; endif; unset($_from); ?>
		</p>
	</div>
	
		<div style="height:15px;">
		<div id='<?php echo $this->_tpl_vars['form']['name']; ?>
.load_disp' style="display:none;">
		<img  src="<?php echo $this->_tpl_vars['image_url']; ?>
/form_ajax_loader.gif"/>
		</div>
		</div>
	
</div>

</form>
<script>

</script>
</html>