<?php /* Smarty version 2.6.31, created on 2020-06-27 04:01:26
         compiled from system_header.tpl.html */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('block', 't', 'system_header.tpl.html', 21, false),)), $this); ?>
	<div id="header">
		<div id="header_left"><a href="/sbc"><img width="280" src="http://beebopsbc.cisteradev.com/sbc/images/beebop_logo.png"></a></div>
		<div id="header_right" onmouseout="removeClass(this, 'activemenu');"   onmouseover="addClass(this, 'activemenu');">
			<div id="user_actions">
				<!-- user actions start -->
				<ul>
					<li><a class="icon_myaccount" href="<?php echo $this->_tpl_vars['app_index']; ?>
/user/accountEdit" ></a></li>
																	
				</ul>
				<!-- user actions end -->					
			</div>
			<div id="menu" class="menu_hover">	
				<!-- top menu start -->
				<?php  
				$temp = Bizsystem::GetObject('menu.widget.MainTabMenu')->render();
				unset($temp);
				echo Bizsystem::GetObject('menu.widget.MainTabMenu')->render();
				 ?>
				<!-- top menu end -->	
				<ul>
				<li><a class="icon_help" href="<?php echo $this->_tpl_vars['app_index']; ?>
/pages/help.html" ><?php $this->_tag_stack[] = array('t', array()); $_block_repeat=true;smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>Help<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?></a></li>
				<li><a class="icon_logout" href="<?php echo $this->_tpl_vars['app_index']; ?>
/user/logout" ><?php $this->_tag_stack[] = array('t', array()); $_block_repeat=true;smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>Logout<?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo smarty_block_t($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?></a></li>
				</ul>				
			</div>	
		</div>
	</div>
	
	<!--<div id="header_navi">
		<div id="navi">
		<?php echo Bizsystem::GetObject('menu.widget.BreadcrumbMenu')->render(); ?>
		</div>
		<div id="current_user_info">
		<?php 
		$profile = BizSystem::getUserProfile();
		$this->assign('profile', $profile);
		 ?>
		<?php echo $this->_tpl_vars['profile']['username']; ?>
 &lt;<?php echo $this->_tpl_vars['profile']['email']; ?>
&gt;
		<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "system_appbuilder_btn.tpl.html", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
		</div>			
	</div>-->