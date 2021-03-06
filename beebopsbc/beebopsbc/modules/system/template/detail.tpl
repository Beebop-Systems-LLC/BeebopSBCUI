<form id="{$form.name}" name="{$form.name}">
<div style="padding-left:25px; ">

	<div>
		{if $form.icon !='' }
	<div class="form_icon"><img  src="{$image_url}/{$form.icon}" border="0" /></div>
	{/if}
		<div ><h2>{$form.title}</h2></div>
	</div>
		{if $form.description}
		<p class="input_row" style="line-height:20px;padding-bottom:20px;">		
		<span>{$form.description}</span>
		</p>
		{else}
		<div style="height:15px;"></div>
		{/if}

	<div style="padding-left:30px;">
	{if $errors}
	    <div id='errorsDiv' class='innerError errorBox'>
	    {foreach item=errMsg from=$errors}
	        <div>{$errMsg}</div>
	    {/foreach}
	    </div>
	{/if}
	
	{if $notices}
	    <div id='noticeDiv' class='noticeBox'>
	    {foreach item=noticeMsg from=$notices}
	        <div>{$noticeMsg}</div>
	    {/foreach}
	    </div>
	{/if}
	
	{foreach item=item key=itemName from=$dataPanel}
		{if $item.type eq 'CKEditor' or $item.type eq 'RichText' or $item.type eq 'Textarea'}
			<table class="input_row">
			<tr>
			<td style="width:80px;">	
				<label style="text-align:left">{$item.label}</label>
			</td>
			<td>
				{if $errors.$itemName}
				<span class="input_error_msg" style="width:240px;">{$errors.$itemName}</span>
				{elseif $item.description}
				<span class="input_desc" style="width:240px;">{$item.description}</span>			
				{/if}
			</td>
			</tr>
			<tr><td colspan="2" align="center" >
				<span class="label_text">{$item.element}</span>
							
			</td></tr>
			</table>		
		{else}
			{if $item.type eq 'Hidden' }
			<table class="input_row" style="display:none">
			{else}
			<table class="input_row">
			{/if}					
			<tr>
			<td >	
				<label style="text-align:left">{$item.label}</label>
			</td>
			<td>
				{if $item.type eq 'InputText'}
					<span class="mdc-text-field mdc-text-field--outlined">{$item.element}
					<span class="mdc-notched-outline">
						<span class="mdc-notched-outline__leading"></span>
								<span class="mdc-notched-outline__notch">
      
								</span>
				<span class="mdc-notched-outline__trailing"></span>
				</span>
				</span>
				{else}
					<span class="label_text">{$item.element}</span>
				{/if}
					{if $errors.$itemName}
					<span class="input_error_msg" style="width:240px;">{$errors.$itemName}</span>
					{elseif $item.description}
					<span class="input_desc" style="width:240px;">{$item.description}</span>			
					{/if}
				</td>
			</tr>
			</table>
		{/if}			
		
	{/foreach}
		
		<div style="height:10px;"></div>
		<p class="input_row">
			
			{foreach item=elem from=$actionPanel}
				{$elem.element}
			{/foreach}
		</p>
	</div>
	
		<div style="height:15px;">
		<div id='{$form.name}.load_disp' style="display:none;">
		<img  src="{$image_url}/form_ajax_loader.gif"/>
		</div>
		</div>
	
</div>

</form>