<?php /* Smarty version 2.6.31, created on 2020-07-20 05:21:41
         compiled from /var/www/siremis/siremis/themes/default/template/system_pickform.tpl.html */ ?>
<form id='<?php echo $this->_tpl_vars['form']['name']; ?>
' name='<?php echo $this->_tpl_vars['form']['name']; ?>
'>
<br/>
<div style="padding-left:25px;padding-right:40px;">
	<h2><?php echo $this->_tpl_vars['form']['title']; ?>
</h2>
	<p class="form_desc"><?php echo $this->_tpl_vars['form']['description']; ?>
</p>
<?php if ($this->_tpl_vars['actionPanel'] || $this->_tpl_vars['searchPanel']): ?>	
	<div class="form_header_panel">	
				<div class="action_panel">
		<?php $_from = $this->_tpl_vars['actionPanel']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['elem']):
?>
		    	<?php echo $this->_tpl_vars['elem']['element']; ?>

		<?php endforeach; endif; unset($_from); ?>
				</div>
				<div class="search_panel">
		
		<?php $_from = $this->_tpl_vars['searchPanel']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['elem']):
?>
			<?php if ($this->_tpl_vars['elem']['label']): ?> <?php echo $this->_tpl_vars['elem']['label']; ?>
 <?php endif; ?> <?php echo $this->_tpl_vars['elem']['element']; ?>

		<?php endforeach; endif; unset($_from); ?>
				</div>
	</div>
<?php endif; ?>	
<!-- table start -->
<table border="0" cellpadding="0" cellspacing="0" class="form_table" id="data_table">
	<thead>		
     <?php $_from = $this->_tpl_vars['dataPanel']['elems']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['cell']):
?>	
         <th onmouseover="this.className='hover'" 
			onmouseout="this.className=''"
			><?php echo $this->_tpl_vars['cell']['label']; ?>
</th>	 
     <?php endforeach; endif; unset($_from); ?>
	</thead>

     <?php $this->assign('row_counter', 0); ?>    
     <?php $_from = $this->_tpl_vars['dataPanel']['data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['row']):
?>
         <?php if ($this->_tpl_vars['row_counter'] == 0): ?>
			<tr id="<?php echo $this->_tpl_vars['form']['name']; ?>
-<?php echo $this->_tpl_vars['dataPanel']['ids'][$this->_tpl_vars['row_counter']]; ?>
" 
					class="selected"  normal="even" select="selected"
					onmouseover="if(this.className!='selected')this.className='hover'" 
					onmouseout="if(this.className!='selected')this.className='even'" 
					onclick="Openbiz.CallFunction('<?php echo $this->_tpl_vars['form']['name']; ?>
.SelectRecord(<?php echo $this->_tpl_vars['dataPanel']['ids'][$this->_tpl_vars['row_counter']]; ?>
)');">
          <?php elseif ((1 & $this->_tpl_vars['row_counter'])): ?>
		   <tr id="<?php echo $this->_tpl_vars['form']['name']; ?>
-<?php echo $this->_tpl_vars['dataPanel']['ids'][$this->_tpl_vars['row_counter']]; ?>
" 
		   		class="odd"  normal="odd" select="selected"
					onmouseover="if(this.className!='selected')this.className='hover'" 
					onmouseout="if(this.className!='selected')this.className='odd'"  
					onclick="Openbiz.CallFunction('<?php echo $this->_tpl_vars['form']['name']; ?>
.SelectRecord(<?php echo $this->_tpl_vars['dataPanel']['ids'][$this->_tpl_vars['row_counter']]; ?>
)');">
         <?php else: ?>
			<tr id="<?php echo $this->_tpl_vars['form']['name']; ?>
-<?php echo $this->_tpl_vars['dataPanel']['ids'][$this->_tpl_vars['row_counter']]; ?>
" 
					class="even"  normal="even" select="selected"
					onmouseover="if(this.className!='selected')this.className='hover'" 
					onmouseout="if(this.className!='selected')this.className='even'" 
					onclick="Openbiz.CallFunction('<?php echo $this->_tpl_vars['form']['name']; ?>
.SelectRecord(<?php echo $this->_tpl_vars['dataPanel']['ids'][$this->_tpl_vars['row_counter']]; ?>
)');">
         <?php endif; ?>
         
         <?php $this->assign('col_counter', 0); ?>    
         <?php $_from = $this->_tpl_vars['row']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['name'] => $this->_tpl_vars['cell']):
?>
         	<?php if ($this->_tpl_vars['col_counter'] == 0): ?>
         		<?php $this->assign('col_class', ' class="row_header" '); ?>    
         	<?php else: ?>
         		<?php $this->assign('col_class', ' '); ?>
         	<?php endif; ?>
            <?php if ($this->_tpl_vars['cell'] != ''): ?>            	
              <td <?php echo $this->_tpl_vars['col_class']; ?>
 ><?php echo $this->_tpl_vars['cell']; ?>
</td>
            <?php else: ?>
              <td <?php echo $this->_tpl_vars['col_class']; ?>
 >&nbsp;</td>
            <?php endif; ?>
            <?php $this->assign('col_counter', $this->_tpl_vars['col_counter']+1); ?>
         <?php endforeach; endif; unset($_from); ?>
                  
		<?php $this->assign('row_counter', $this->_tpl_vars['row_counter']+1); ?>
		</tr>
     <?php endforeach; endif; unset($_from); ?>
  
							
</table>
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
			<label style="width:65px;">Go to page</label>
			<input type="text" class="input_select" 
				onfocus="this.className='input_select_focus'"
				onblur="this.className='input_select'" style="margin-right:10px;"
				value="2"
			/>		
			<label style="width:65px;">Show rows</label>
			<input type="text" class="input_select" 
				onfocus="this.className='input_select_focus'"
				onblur="this.className='input_select'" style="margin-right:10px;"
				value="10"				
			/>
<?php if ($this->_tpl_vars['navPanel']): ?>
   <?php $_from = $this->_tpl_vars['navPanel']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['elem']):
?>
    	<?php echo $this->_tpl_vars['elem']['element']; ?>

   <?php endforeach; endif; unset($_from); ?>
<?php endif; ?>			
		
		</div>		
	</div>
	<div class="v_spacer"></div>
</div>
</form>