<?php /* Smarty version 2.6.31, created on 2020-07-09 02:31:02
         compiled from system_right_listform.tpl.html */ ?>
<form id='<?php echo $this->_tpl_vars['form']['name']; ?>
' name='<?php echo $this->_tpl_vars['form']['name']; ?>
'>
<div style="padding-left:25px;padding-right:40px;">
	<div>
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
		<p class="form_desc"><?php echo $this->_tpl_vars['form']['description']; ?>
</p>
		</div>
	</td></tr></table>
	</div>
<?php if ($this->_tpl_vars['actionPanel'] || $this->_tpl_vars['searchPanel']): ?>	
	<div class="form_header_panel">	
				<div class="action_panel">
		<?php $_from = $this->_tpl_vars['actionPanel']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['elem']):
?>
		    	<?php echo $this->_tpl_vars['elem']['element']; ?>

		<?php endforeach; endif; unset($_from); ?>
				</div>
				<div class="mdc-text-field search_panel">
		
		<?php $_from = $this->_tpl_vars['searchPanel']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['elem']):
?>
			<?php if ($this->_tpl_vars['elem']['label']): ?> <?php echo $this->_tpl_vars['elem']['label']; ?>
 <?php endif; ?> <?php echo $this->_tpl_vars['elem']['element']; ?>

		<?php endforeach; endif; unset($_from); ?>
				</div>
	</div>
<?php endif; ?>	

<div class="mdc-data-table">
<!-- table start -->
<table border="0" cellpadding="0" cellspacing="0" class="mdc-data-table__table" id="<?php echo $this->_tpl_vars['form']['name']; ?>
_data_table">
	<thead>		
     <?php $_from = $this->_tpl_vars['dataPanel']['elems']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['elems_name'] => $this->_tpl_vars['cell']):
?>	
     	<?php if ($this->_tpl_vars['cell']['type'] == 'ColumnStyle'): ?>
     		<?php $this->assign('row_style_name', $this->_tpl_vars['elems_name']); ?>
     	<?php else: ?>
         <th  class="mdc-data-table__header-cell" role="columnheader" scope="col"
			><?php echo $this->_tpl_vars['cell']['label']; ?>
</th>	 
		<?php endif; ?>
     <?php endforeach; endif; unset($_from); ?>
	</thead>
     <?php $this->assign('row_counter', 0); ?>            
     <?php $_from = $this->_tpl_vars['dataPanel']['data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['row']):
?>
     	
     	 <?php if ($this->_tpl_vars['row'][$this->_tpl_vars['row_style_name']] != ''): ?>
     	 	<?php $this->assign('row_style', $this->_tpl_vars['dataPanel']['data'][$this->_tpl_vars['row_counter']][$this->_tpl_vars['row_style_name']]); ?>
     	 <?php else: ?>
     	 	<?php $this->assign('row_style', ''); ?>
     	 <?php endif; ?>
     	 
         <?php if ($this->_tpl_vars['form']['currentRecordId'] == $this->_tpl_vars['dataPanel']['ids'][$this->_tpl_vars['row_counter']]): ?>  
         <?php $this->assign('default_selected_id', $this->_tpl_vars['dataPanel']['ids'][$this->_tpl_vars['row_counter']]); ?>       	
			<tr id="<?php echo $this->_tpl_vars['form']['name']; ?>
-<?php echo $this->_tpl_vars['dataPanel']['ids'][$this->_tpl_vars['row_counter']]; ?>
" 
					style="<?php echo $this->_tpl_vars['row_style']; ?>
"
					class="selected mdc-data-table__row"  normal="even" select="selected"
					onmouseover="if(this.className!='selected')this.className='hover'" 
					onmouseout="if(this.className!='selected')this.className='even'" 
					onclick="Openbiz.CallFunction('<?php echo $this->_tpl_vars['form']['name']; ?>
.SelectRecord(<?php echo $this->_tpl_vars['dataPanel']['ids'][$this->_tpl_vars['row_counter']]; ?>
)');">
         <?php elseif ($this->_tpl_vars['row_counter'] == 0 && $this->_tpl_vars['form']['currentRecordId'] == ""): ?>
         <?php $this->assign('default_selected_id', $this->_tpl_vars['dataPanel']['ids'][$this->_tpl_vars['row_counter']]); ?>    
			<tr id="<?php echo $this->_tpl_vars['form']['name']; ?>
-<?php echo $this->_tpl_vars['dataPanel']['ids'][$this->_tpl_vars['row_counter']]; ?>
" 
					style="<?php echo $this->_tpl_vars['row_style']; ?>
"
					class="selected mdc-data-table__row"  normal="even" select="selected"
					onmouseover="if(this.className!='selected')this.className='hover'" 
					onmouseout="if(this.className!='selected')this.className='even'" 
					onclick="Openbiz.CallFunction('<?php echo $this->_tpl_vars['form']['name']; ?>
.SelectRecord(<?php echo $this->_tpl_vars['dataPanel']['ids'][$this->_tpl_vars['row_counter']]; ?>
)');">
          <?php elseif ((1 & $this->_tpl_vars['row_counter'])): ?>
		   <tr id="<?php echo $this->_tpl_vars['form']['name']; ?>
-<?php echo $this->_tpl_vars['dataPanel']['ids'][$this->_tpl_vars['row_counter']]; ?>
" 
		   			style="<?php echo $this->_tpl_vars['row_style']; ?>
"
		   			class="mdc-data-table__row"  normal="odd" select="selected"
					onmouseover="if(this.className!='selected')this.className='hover'" 
					onmouseout="if(this.className!='selected')this.className='odd'"  
					onclick="Openbiz.CallFunction('<?php echo $this->_tpl_vars['form']['name']; ?>
.SelectRecord(<?php echo $this->_tpl_vars['dataPanel']['ids'][$this->_tpl_vars['row_counter']]; ?>
)');">
         <?php else: ?>
			<tr id="<?php echo $this->_tpl_vars['form']['name']; ?>
-<?php echo $this->_tpl_vars['dataPanel']['ids'][$this->_tpl_vars['row_counter']]; ?>
" 
					style="<?php echo $this->_tpl_vars['row_style']; ?>
"
					class="mdc-data-table__row"  normal="even" select="selected"
					onmouseover="if(this.className!='selected')this.className='hover'" 
					onmouseout="if(this.className!='selected')this.className='even'" 
					onclick="Openbiz.CallFunction('<?php echo $this->_tpl_vars['form']['name']; ?>
.SelectRecord(<?php echo $this->_tpl_vars['dataPanel']['ids'][$this->_tpl_vars['row_counter']]; ?>
)');">
         <?php endif; ?>
         
         <?php $this->assign('col_counter', 0); ?>    
         <?php $_from = $this->_tpl_vars['row']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['cell_name'] => $this->_tpl_vars['cell']):
?>
         	<?php if ($this->_tpl_vars['col_counter'] == 0): ?>
         		<?php $this->assign('col_class', ' class="mdc-data-table__cell mdc-data-table__cell--numeric" '); ?>    
         	<?php else: ?>
         		<?php $this->assign('col_class', ' '); ?>
         	<?php endif; ?>
         	<?php if ($this->_tpl_vars['cell_name'] != $this->_tpl_vars['row_style_name']): ?>
	            <?php if ($this->_tpl_vars['cell'] != ''): ?>            	
	              <td <?php echo $this->_tpl_vars['col_class']; ?>
 nowrap="nowrap" class="mdc-data-table__cell" ><?php echo $this->_tpl_vars['cell']; ?>
</td>
	            <?php else: ?>
	              <td <?php echo $this->_tpl_vars['col_class']; ?>
 nowrap="nowrap" class="mdc-data-table__cell" >&nbsp;</td>
	            <?php endif; ?>
            <?php endif; ?>
            <?php $this->assign('col_counter', $this->_tpl_vars['col_counter']+1); ?>
         <?php endforeach; endif; unset($_from); ?>
                  
		<?php $this->assign('row_counter', $this->_tpl_vars['row_counter']+1); ?>
		</tr>
     <?php endforeach; endif; unset($_from); ?>
  
							
</table>

</div>
<!-- status switch  -->
<script>
<?php if ($this->_tpl_vars['form']['status'] == 'Enabled'): ?>
<?php elseif ($this->_tpl_vars['form']['status'] == 'Disabled'): ?>
$('<?php echo $this->_tpl_vars['form']['name']; ?>
_data_table').fade(<?php echo '{ duration: 0.5, from: 1, to: 0.35 }'; ?>
);
<?php endif; ?>
</script>
<span id='<?php echo $this->_tpl_vars['form']['name']; ?>
_selected_id' style="display:none"><?php echo $this->_tpl_vars['default_selected_id']; ?>
</span>
<!-- table end -->	

	<div class="form_footer_panel">
		<div class="ajax_indicator">
			<div id='<?php echo $this->_tpl_vars['form']['name']; ?>
.load_disp' style="display:none" >
				<img src="<?php echo $this->_tpl_vars['image_url']; ?>
/form_ajax_loader.gif"/>
			</div>
		</div>
		<div class="navi_panel">
<?php if ($this->_tpl_vars['navPanel']): ?>
   <?php $_from = $this->_tpl_vars['navPanel']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['elem']):
?>
   		<?php if ($this->_tpl_vars['elem']['label']): ?> <label style="width:68px;"><?php echo $this->_tpl_vars['elem']['label']; ?>
</label><?php endif; ?>
    	<?php echo $this->_tpl_vars['elem']['element']; ?>

   <?php endforeach; endif; unset($_from); ?>
<?php endif; ?>			
		
		</div>		
	</div>
	<div class="v_spacer"></div>
</div>
</form>