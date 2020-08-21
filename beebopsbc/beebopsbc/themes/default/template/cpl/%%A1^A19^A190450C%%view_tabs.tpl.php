<?php /* Smarty version 2.6.31, created on 2020-07-10 02:39:20
         compiled from /var/www/siremis/siremis/modules/sipuser/template/view_tabs.tpl */ ?>
<?php 
BizSystem::clientProxy()->includeCKEditorScripts();
$includedScripts = BizSystem::clientProxy()->getAppendedScripts();
$this->_tpl_vars['scripts'] = $includedScripts;
$appendStyle = BizSystem::clientProxy()->getAppendedStyles();
$left_menu = "sipuser.widget.SipUserMenu";
$this->assign('left_menu', $left_menu);
$this->_tpl_vars['style_sheets'] = $appendStyle;
$this->assign('template_file', 'system_view_tabs.tpl.html');
 ?>
<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => $this->_tpl_vars['template_file'], 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>