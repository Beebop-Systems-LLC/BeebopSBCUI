<h2>{$widget.title}</h2>
<ul class="toplevel {$widget.css} left_menu 222">
	{foreach item=item from=$widget.menu}
	<li>
	    {assign var='current' value='0'}
	    {foreach item=bc from=$widget.breadcrumb}
			{if $item->m_Id == $bc->m_Id}
	    		{assign var='current' value='1'}
			{/if}
	    {/foreach}
		{if $current == 1 }
			{assign var=menu_class value="current" }	
		{else}
			{assign var=menu_class value="" }
	    {/if}	
		<a onclick="show_submenu(this)" class="{$menu_class}" href="{if $item->m_URL}{$item->m_URL}{else}javascript:{/if}">
			<img class="{$item->m_IconCSSClass}" src="{$image_url}/{if $item->m_IconImage!=''}{$item->m_IconImage}{else}spacer.gif{/if}" />{$item->m_Name}
		</a>	
		{if is_array($item->m_ChildNodes)}
		{if $item->m_ChildNodes|@count > 0}
		<ul class="secondlevel module" {if $menu_class eq 'current'}style="display:block;"{/if}>
		{foreach item=subitem from=$item->m_ChildNodes}
    		{assign var='current' value='0'}
    	    {foreach item=bc from=$widget.breadcrumb}
    			{if $subitem->m_Id == $bc->m_Id}
    	    		{assign var='current' value='1'}
    			{/if}
    	    {/foreach}
			{if $current == 1 }
				{if $subitem->m_URL}
					{assign var=submenu_class value="current" }
				{else}
					{assign var=submenu_class value="" }
			    {/if}					
			{else}
				{assign var=submenu_class value="" }
		    {/if}					
			<li><a class="{$submenu_class}" href="{if $subitem->m_URL}{$subitem->m_URL}{else}javascript:{/if}">{$subitem->m_Name}</a></li>
			{if is_array($subitem->m_ChildNodes)}
			{if $subitem->m_ChildNodes|@count > 0}
				{foreach item=thirditem from=$subitem->m_ChildNodes}
			   		{assign var='current' value='0'}
			   	    {foreach item=bc from=$widget.breadcrumb}
			   			{if $thirditem->m_Id == $bc->m_Id}
				    		{assign var='current' value='1'}
						{/if}
			   	    {/foreach}
					{if $current == 1 }
						{assign var=submenu_class value="current" }	
					{else}
						{assign var=submenu_class value="" }
				    {/if}					
					<li><a class="{$submenu_class}" href="{if $thirditem->m_URL}{$thirditem->m_URL}{else}javascript:{/if}"> &raquo; {$thirditem->m_Name}</a></li>						
				{/foreach}	
			{/if}
			{/if}
		{/foreach}	
		</ul>
		{/if}
		{/if}
	</li>
	{/foreach}	
</ul>
<div class="v_spacer"></div>
