<?php /* Smarty version 2.6.31, created on 2020-07-01 03:19:31
         compiled from system_left_panel.tpl.html */ ?>
<?php 
if($this->_tpl_vars['left_menu']){
	$left_menu = $this->_tpl_vars['left_menu'];
}else{
	$left_menu = "menu.widget.ApplicationMenu";
}
$obj = Bizsystem::GetObject($left_menu);
$left_menu_content = $obj->render();
$this->assign('system_left_menu_content', 	$left_menu_content);
 ?>
	<!-- left menu block start -->
	<div class="content_block left_bar_<?php echo $this->_tpl_vars['title']; ?>
">
		<div class="header"></div>
		<div class="content" >								
			<?php echo $this->_tpl_vars['system_left_menu_content']; ?>

		</div>
		<div class="footer"></div>						
	</div>
	<div class="v_spacer"></div>
	<!-- left menu block end -->														
	<!-- left help block start
	<div class="content_block_dark">
		<div class="header">								
		</div>
		<div class="content" >
		<?php echo Bizsystem::GetObject('help.form.HelpWidgetListForm',1)->render(); ?>
		</div>
		<div class="footer"></div>						
	</div>
	<div class="v_spacer"></div>
	 left help block end -->