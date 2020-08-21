<?php /* Smarty version 2.6.31, created on 2020-08-03 05:24:45
         compiled from system_view_tabs.tpl.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'preg_match', 'system_view_tabs.tpl.html', 50, false),)), $this); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $this->_tpl_vars['title']; ?>
</title>
<meta name="description" content="<?php echo $this->_tpl_vars['description']; ?>
"/>
<meta name="keywords" content="<?php echo $this->_tpl_vars['keywords']; ?>
"/>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="<?php echo $this->_tpl_vars['css_url']; ?>
/general.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->_tpl_vars['css_url']; ?>
/system_backend.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->_tpl_vars['css_url']; ?>
/system_backend_tabs.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->_tpl_vars['css_url']; ?>
/system_menu_icons.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->_tpl_vars['css_url']; ?>
/collaboration_menu_icons.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->_tpl_vars['css_url']; ?>
/system_dashboard_icons.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->_tpl_vars['css_url']; ?>
/appbuilder.css" type="text/css" />
<link rel="stylesheet" href="https://unpkg.com/material-components-web/dist/material-components-web.min.css">
<?php echo $this->_tpl_vars['style_sheets']; ?>

<?php echo $this->_tpl_vars['scripts']; ?>

<script type="text/javascript" src="<?php echo $this->_tpl_vars['theme_js_url']; ?>
/general_ui.js"></script>
<script type="text/javascript" src="<?php echo $this->_tpl_vars['js_url']; ?>
/cookies.js"></script>

</head>

<body>
<div align="center" id="body_warp">
	<div id="header_warp">
	<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'system_header.tpl.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
	</div>
	<!--main warp-->
	<div id="main_warp">	
		<!--main-->
		<div id="main" >
			
			<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'system_loader.tpl.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
				<table id="main_content" border="0" cellpadding="0" cellspacing="0">
					<!-- <tr><td><img src="<?php echo $this->_tpl_vars['image_url']; ?>
/spacer.gif" style="height:15px;" /></td></tr> -->
					<tr>
						<td valign="top" style="width:18px;"><img src="<?php echo $this->_tpl_vars['image_url']; ?>
/spacer.gif" style="width:18px;" /></td>
						<td valign="top" id="left_panel">
							<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'system_left_panel.tpl.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>					
						</td>
						<td valign="top" id="right_panel">
							<!-- right block start -->
							<div class="content_block">
								<div class="header"></div>
								<div class="content">	
									<div>
										<ul id="tabs_selectors" class="mdc-tab-bar mdc-tab-scroller__scroll-content">
											<?php $_from = $this->_tpl_vars['formtabs']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }$this->_foreach['tabs'] = array('total' => count($_from), 'iteration' => 0);
if ($this->_foreach['tabs']['total'] > 0):
    foreach ($_from as $this->_tpl_vars['formname'] => $this->_tpl_vars['formtitle']):
        $this->_foreach['tabs']['iteration']++;
?>	
										    	<?php if ($this->_tpl_vars['formname'] != 'help.form.HelpBlockForm' && ((is_array($_tmp='/^menu\.widget\..*Menu$/si')) ? $this->_run_mod_handler('preg_match', true, $_tmp, $this->_tpl_vars['formname']) : preg_match($_tmp, $this->_tpl_vars['formname'])) == 0): ?>							    
										         <li id="tab_<?php echo $this->_tpl_vars['formname']; ?>
" class="tab_link mdc-tab">
										         	<a id="tab_link_<?php echo $this->_tpl_vars['formname']; ?>
" class="mdc-tab" href="javascript:" onclick="ShowTab('<?php echo $this->_tpl_vars['formname']; ?>
');SwitchTab(); " ><?php echo $this->_tpl_vars['formtitle']; ?>
</a>
													
													  
   											         </li>
										       <?php endif; ?>
										    <?php endforeach; endif; unset($_from); ?>										
										</ul>
														
									<?php $_from = $this->_tpl_vars['forms']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['formname'] => $this->_tpl_vars['form']):
?>	
								    	<?php if ($this->_tpl_vars['formname'] != 'help.form.HelpBlockForm' && ((is_array($_tmp='/^menu\.widget\..*Menu$/si')) ? $this->_run_mod_handler('preg_match', true, $_tmp, $this->_tpl_vars['formname']) : preg_match($_tmp, $this->_tpl_vars['formname'])) == 0): ?>							    
								         <div id="tab_form_<?php echo $this->_tpl_vars['formname']; ?>
" class="tab_form" >
								         	<div>
								         	<?php echo $this->_tpl_vars['form']; ?>

								         	</div>
								         </div>
								       <?php endif; ?>
								    <?php endforeach; endif; unset($_from); ?>	
								    	
									</div>									
								</div>
								<div class="footer"></div>														
							</div>
							<!-- right block end -->
						</td>
					</tr>
			  </table>		  
			</div>
			<!--main-->
		
		</div>		
		<!--main wrap end-->
		<!--footer-->
		<div  id="footer_warp">			
 		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'system_footer.tpl.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
		</div>
		<!-- footer end -->
	
	</div>
</div>

<?php echo '
<script>
$(\'main_loader_bg\').style.height = $(\'main_content\').offsetHeight+\'px\';
document.observe("Form:Load",SwitchTab);
var targetTabname;
function SwitchTab(){
	if(targetTabname){
		HideTabs();
		$(\'tab_form_\'+targetTabname).show();
		$(\'tab_form_\'+targetTabname).style.display=\'block\';
		$(\'tab_link_\'+targetTabname).className=\'current\';
	}	
}
function ShowTab(tabname,formname,id){	
	targetTabname = tabname;
	Openbiz.CallFunction(formname+\'.SelectRecord(\'+id+\')\');	
//	if(formname){	
//		if(Openbiz.getFormObject(formname).selectedId == Openbiz.getFormObject(formname).lastSelectedId){
//			SwitchTab();
//		}	
//	}
}
function HideTabs(){
	var tabs = $$(\'.tab_form\');	
	for(i=0;i<tabs.length;i++) {	
	    tabs[i].style.display=\'none\';	    
	}	

	var tab_links = $$(\'.tab_link\');
	for(i=0;i<tab_links.length;i++) {
		tab_links[i].children[0].className=\'\';
	}
}
function InitTabs(){
	fade_loader();
	var tabs = $$(\'.tab_form\');
	for(i=0;i<tabs.length;i++) {	
	    tabs[i].style.display=\'none\'; 		  
	}
	tabs[0].style.display=\'block\';

	var tab_links = $$(\'.tab_link\');
	for(i=0;i<tab_links.length;i++) {
		tab_links[i].children[0].className=\'\';
	}
	tab_links[0].children[0].className=\'current\';
//	window.setTimeout("init_first_tab()",1500);
}
window.onload=InitTabs;
</script>
'; ?>

</body>
</html>