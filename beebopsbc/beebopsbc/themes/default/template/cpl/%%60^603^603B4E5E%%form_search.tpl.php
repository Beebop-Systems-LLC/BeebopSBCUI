<?php /* Smarty version 2.6.31, created on 2020-07-17 06:37:23
         compiled from /var/www/siremis/siremis/modules/sipadmin/template/form_search.tpl */ ?>
<form id="<?php echo $this->_tpl_vars['form']['name']; ?>
" name="<?php echo $this->_tpl_vars['form']['name']; ?>
">
<div style="padding-left:25px; ">

	<div style="padding-left:0px;">
		<h2><a id="<?php echo $this->_tpl_vars['form']['name']; ?>
_content_toggler" href="#" class="shrink" onclick="toggleDisplay('<?php echo $this->_tpl_vars['form']['name']; ?>
_content');"></a>Search</h2>
		<div id="<?php echo $this->_tpl_vars['form']['name']; ?>
_content" style="display:block;padding-left:10px;">
		<div class="" style="height:160px;">			
			<?php $_from = $this->_tpl_vars['dataPanel']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['itemIndex'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['itemIndex']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['itemName'] => $this->_tpl_vars['item']):
        $this->_foreach['itemIndex']['iteration']++;
?>
				<?php if ($this->_tpl_vars['item']['elementset'] == 'General'): ?>			
					<?php if ((1 & ($this->_foreach['itemIndex']['iteration']-1))): ?>
					<table  id="<?php echo $this->_tpl_vars['itemName']; ?>
_container" class="input_row" style="float:left;">
					<?php else: ?>
					<table  id="<?php echo $this->_tpl_vars['itemName']; ?>
_container" class="input_row" style="float:left;">
					<?php endif; ?>								
					<tr>
						<td >	
							<label style="text-align:left;width:80px; "><?php echo $this->_tpl_vars['item']['label']; ?>
</label>
						</td>
						<td>				
							<span class="label_text" style="width:225px;"><?php echo $this->_tpl_vars['item']['element']; ?>
</span>					
						</td>
					</tr>
					</table>
				<?php endif; ?>						
			<?php endforeach; endif; unset($_from); ?>			
		</div>
		
		<div style="display:block; padding:5px 5px 0px 0px; width:650px;">
			<?php $_from = $this->_tpl_vars['dataPanel']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['itemName'] => $this->_tpl_vars['item']):
?>
				<?php if ($this->_tpl_vars['item']['elementset'] == 'Content'): ?>		
					<table  id="<?php echo $this->_tpl_vars['itemName']; ?>
_container" class="input_row">								
					<tr>
						<td >	
							<label style="text-align:left; "><?php echo $this->_tpl_vars['item']['label']; ?>
</label>
						</td>
						<td>				
							<span class="label_text"><?php echo $this->_tpl_vars['item']['element']; ?>
</span>					
						</td>
					</tr>
					</table>	
				<?php endif; ?>						
			<?php endforeach; endif; unset($_from); ?>		
		</div>
		
  		<div style="clear:both"></div>
  
		<div style="height:10px;"></div>
		<p class="input_row">
			
			<?php $_from = $this->_tpl_vars['actionPanel']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['elem']):
?>
				<?php echo $this->_tpl_vars['elem']['element']; ?>

			<?php endforeach; endif; unset($_from); ?>
		</p>
		</div>
	</div>
	
	<div style="height:10px;">
	<div id='<?php echo $this->_tpl_vars['form']['name']; ?>
.load_disp' style="display:none;">
	<img  src="<?php echo $this->_tpl_vars['image_url']; ?>
/form_ajax_loader.gif"/>
	</div>
	</div>
	
</div>
<hr style="width:700px; color:white; maring-left: 20px;margin-bottom:10px; "></hr>
</form>