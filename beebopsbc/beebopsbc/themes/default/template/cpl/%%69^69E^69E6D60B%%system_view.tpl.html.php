<?php /* Smarty version 2.6.31, created on 2020-07-23 05:36:47
         compiled from /var/www/siremis/siremis/themes/default/template/system_view.tpl.html */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $this->_tpl_vars['title']; ?>
</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="<?php echo $this->_tpl_vars['description']; ?>
"/>
<meta name="keywords" content="<?php echo $this->_tpl_vars['keywords']; ?>
"/>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
<link rel="stylesheet" href="<?php echo $this->_tpl_vars['css_url']; ?>
/general.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->_tpl_vars['css_url']; ?>
/system_backend.css" type="text/css" />
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

<script type="text/javascript" src="<?php echo $this->_tpl_vars['js_url']; ?>
/cookies.js"></script>
<script type="text/javascript" src="<?php echo $this->_tpl_vars['theme_js_url']; ?>
/general_ui.js"></script>
<script type="text/javascript" src="https://unpkg.com/material-components-web@latest/dist/material-components-web.min.js"></script>
</head>

<body id="<?php echo $this->_tpl_vars['title']; ?>
" class="custom_<?php echo $this->_tpl_vars['title']; ?>
">
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
				<!--<tr><td><img src="<?php echo $this->_tpl_vars['image_url']; ?>
/spacer.gif" style="height:15px;" /></td></tr>-->
				<tr>
					<!--<td valign="top" style="width:18px;"><img src="<?php echo $this->_tpl_vars['image_url']; ?>
/spacer.gif" style="width:18px;" /></td>-->
					<td valign="top" id="left_panel">
						<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'system_left_panel.tpl.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
					</td>
					<td valign="top" id="right_panel">
						<!-- right block start -->
						<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'system_right_panel.tpl.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
						<!-- right block end -->
					</td>
				</tr>
			  </table>		  
			</div>
			<!--main-->
		
		</div>		
		<!--main wrap end-->
		<!--footer
		<div  id="footer_warp">			
		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => 'system_footer.tpl.html', 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
		</div>
		footer end -->
	
	</div>
</div>

<?php echo '
<script>
$(\'main_loader_bg\').style.height = $(\'main_content\').offsetHeight+\'px\';
</script>
'; ?>

</body>
</html>