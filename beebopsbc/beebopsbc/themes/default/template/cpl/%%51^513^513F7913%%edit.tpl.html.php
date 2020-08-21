<?php /* Smarty version 2.6.31, created on 2020-07-24 04:41:48
         compiled from /var/www/siremis/siremis/modules/cronjob/template/edit.tpl.html */ ?>
<form id="<?php echo $this->_tpl_vars['form']['name']; ?>
" name="<?php echo $this->_tpl_vars['form']['name']; ?>
">

<div style="padding-left:25px; ">

	<div>
		<?php if ($this->_tpl_vars['form']['icon'] != ''): ?>
	<div class="form_icon"><img  src="<?php echo $this->_tpl_vars['image_url']; ?>
/<?php echo $this->_tpl_vars['form']['icon']; ?>
" border="0" /></div>
	<?php endif; ?>
		<div ><h2><?php echo $this->_tpl_vars['form']['title']; ?>
</h2></div>
	</div>
		<?php if ($this->_tpl_vars['form']['description']): ?>
		<p class="input_row" style="line-height:20px;padding-bottom:20px;">		
		<span><?php echo $this->_tpl_vars['form']['description']; ?>
</span>
		</p>
		<?php else: ?>
		<div style="height:15px;"></div>
		<?php endif; ?>
	<div style="padding-left:30px;" >
	<?php $_from = $this->_tpl_vars['form']['elementSets']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['elemsets'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['elemsets']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['setname']):
        $this->_foreach['elemsets']['iteration']++;
?>
		<?php if (($this->_foreach['elemsets']['iteration'] <= 1)): ?>
		<div class="underline upline">
		<?php else: ?>
		<div class="underline">
		<?php endif; ?>
		<h2><?php echo $this->_tpl_vars['setname']; ?>
</h2>
		<?php if ($this->_tpl_vars['setname'] != 'Schedule'): ?>
		
		<?php $_from = $this->_tpl_vars['dataPanel']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['itemName'] => $this->_tpl_vars['item']):
?>
			<?php if ($this->_tpl_vars['item']['elementset'] == $this->_tpl_vars['setname']): ?>
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
						<span class="label_text"><?php echo $this->_tpl_vars['item']['element']; ?>
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
			<?php endif; ?>
			<?php endforeach; endif; unset($_from); ?>
		<?php else: ?>
				
	
				
				<table  id="time_container" class="input_row">
				<tr>
					<?php $this->assign('item', $this->_tpl_vars['dataPanel']['fld_hour']); ?>
					<?php $this->assign('itemName', 'fld_hour'); ?>
					<td >	
						<label style="text-align:left"><?php echo $this->_tpl_vars['item']['label']; ?>
</label>
					</td>
					<td>
					
						<span class="label_text" style="width:240px;"><?php echo $this->_tpl_vars['item']['element']; ?>
</span>
						
					</td>
					<?php $this->assign('item', $this->_tpl_vars['dataPanel']['fld_minute']); ?>
					<?php $this->assign('itemName', 'fld_minute'); ?>
					<td >	
						<label style="text-align:left"><?php echo $this->_tpl_vars['item']['label']; ?>
</label>
					</td>
					<td>
					
						<span class="label_text" style="width:240px;"><?php echo $this->_tpl_vars['item']['element']; ?>
</span>
						
					</td>					
				</tr>
				</table>
				
				<table  id="date_container" class="input_row">
				<tr>
					<?php $this->assign('item', $this->_tpl_vars['dataPanel']['fld_month']); ?>
					<?php $this->assign('itemName', 'fld_month'); ?>
					<td >	
						<label style="text-align:left"><?php echo $this->_tpl_vars['item']['label']; ?>
</label>
					</td>
					<td>
						<span class="label_text" style="width:240px;"><?php echo $this->_tpl_vars['item']['element']; ?>
</span>						
					</td>
					<?php $this->assign('item', $this->_tpl_vars['dataPanel']['fld_day']); ?>
					<?php $this->assign('itemName', 'fld_day'); ?>
					<td >	
						<label style="text-align:left"><?php echo $this->_tpl_vars['item']['label']; ?>
</label>
					</td>
					<td>
					
						<span class="label_text" style="width:240px;"><?php echo $this->_tpl_vars['item']['element']; ?>
</span>
						
					</td>					
				</tr>
				</table>
				
				<table  id="weekdate_container" class="input_row">
				<tr>
					<?php $this->assign('item', $this->_tpl_vars['dataPanel']['fld_weekday']); ?>
					<?php $this->assign('itemName', 'fld_weekday'); ?>
					<td >	
						<label style="text-align:left"><?php echo $this->_tpl_vars['item']['label']; ?>
</label>
					</td>
					<td>
						<span class="label_text" style="width:240px;"><?php echo $this->_tpl_vars['item']['element']; ?>
</span>						
					</td>
					
				</tr>
				</table>
		<?php endif; ?>
		
		</div>
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