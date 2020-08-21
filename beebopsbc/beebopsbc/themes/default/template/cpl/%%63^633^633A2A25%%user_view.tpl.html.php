<?php /* Smarty version 2.6.31, created on 2020-08-21 03:16:23
         compiled from /var/www/beebopsbc/beebopsbc/themes/default/template/user_view.tpl.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('block', 't', '/var/www/beebopsbc/beebopsbc/themes/default/template/user_view.tpl.html', 36, false),)), $this); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $this->_tpl_vars['description']; ?>
</title>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="<?php echo $this->_tpl_vars['css_url']; ?>
/general.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->_tpl_vars['css_url']; ?>
/login.css" type="text/css" />
<link rel="stylesheet" href="https://unpkg.com/material-components-web/dist/material-components-web.min.css">


<?php echo $this->_tpl_vars['style_sheets']; ?>

<?php echo $this->_tpl_vars['scripts']; ?>


</head>

<body class="usereditaccount">
<div align="center">
	<div id="wrap">
		<div id="login_box" class="mdc-data-table">
				<div id="forms" >
					<div style="height:25px;"></div>
					<?php $_from = $this->_tpl_vars['forms']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['form']):
?>
					   <div><?php echo $this->_tpl_vars['form']; ?>
</div>
					<?php endforeach; endif; unset($_from); ?>
				</div>
				<div id="loader_bg" ></div>
				<div id="loader">
					<div style="height:185px;"></div>
					<div style="padding-left:300px; text-align:left">
					<div class="loader_box">
						<img src="<?php echo $this->_tpl_vars['image_url']; ?>
/ajax_loader.gif" style="float:left; margin-top:8px;" />
						<p style="float:left;margin-left:10px; padding-top:5px;" >
						<img src="<?php echo $this->_tpl_vars['image_url']; ?>
/loading.gif" />
						<br/><span style="padding-left:3px;color:#aaaaaa "><?php $this->_tag_stack[] = array('t', array()); $_block_repeat=true;smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>Please wait a while ...<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?></span></p>
					</div>
					</div>			
				</div>
				<?php echo '
				<script>
					$(\'loader_bg\').fade( {from: 1, to: 0.7});
					$(\'loader\').fade( {from: 0, to: 1});
				</script>
				'; ?>

		</div>
	</div>
</div>

<?php echo '
<script>
window.onload=fade_loader;
window.onunload=fadeout_loader;
function fade_loader(){
	window.setTimeout("$(\'loader\').fade( {from: 0.7, to: 0});",800);
	window.setTimeout("$(\'loader_bg\').fade( {from: 0.7, to: 0});",800);	
	window.setTimeout("$(\'loader\').hide();",2000);
	window.setTimeout("$(\'loader_bg\').hide();",2000);	
}
function fadeout_loader(){	
	$(\'loader_bg\').fade( {from: 0.5, to: 1});
}
</script>
'; ?>

</body>
</html>