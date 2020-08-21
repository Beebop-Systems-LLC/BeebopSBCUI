<?php /* Smarty version 2.6.31, created on 2020-07-01 03:20:20
         compiled from system_right_panel.tpl.html */ ?>
	<!-- right block start -->
	<div class="content_block right_bar_<?php echo $this->_tpl_vars['title']; ?>
">
		<div class="header"></div>
		<div class="content">	
			<div>							
			<?php $_from = $this->_tpl_vars['forms']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['formname'] => $this->_tpl_vars['form']):
?>							    
		         <div>
		         	<?php echo $this->_tpl_vars['form']; ?>

		         </div>
		    <?php endforeach; endif; unset($_from); ?>		
			</div>
		</div>
		<div class="footer"></div>														
	</div>
	<!-- right block end -->