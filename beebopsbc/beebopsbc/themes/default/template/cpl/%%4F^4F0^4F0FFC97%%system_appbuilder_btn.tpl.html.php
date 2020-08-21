<?php /* Smarty version 2.6.31, created on 2020-07-11 03:45:39
         compiled from system_appbuilder_btn.tpl.html */ ?>
<?php if (@APPBUILDER): ?>
    <?php if ($this->_tpl_vars['form']['name']): ?>
	<a class="appbuilder_btn_form_edit appbuilder_btn" title="Edit Application Form"  href="javascript:;" style="float:right;" onclick="Openbiz.Window.openPopup(Openbiz.appUrl+'/bin/metaedit.php?metaobj='+'<?php echo $this->_tpl_vars['form']['name']; ?>
',1024,680);"></a>
	<?php endif; ?>
	
	<?php if ($this->_tpl_vars['view']['name']): ?>
	<a class="appbuilder_btn_view_edit appbuilder_btn" title="Edit Application View" href="javascript:;" style="float:right;margin-left:5px; margin-top:6px;" onclick="Openbiz.Window.openPopup(Openbiz.appUrl+'/bin/metaedit.php?metaobj='+'<?php echo $this->_tpl_vars['view']['name']; ?>
',1024,680);"></a>
	<?php endif; ?>
<?php endif; ?>