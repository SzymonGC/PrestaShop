<body onload="document.createElement('form').submit.call(document.getElementById('dpForm'))">
<center><img src="{$module_dir}/img/dotpay_logo_napisPL.png"><img width="128" height="128" src="{$module_dir}/img/loading2.gif"><br />
<p>{l s='Yours payment is loading. Please wait.' mod='dotpay'}</p></center>
<form action="https://ssl.dotpay.pl/{if $dp_test eq '1'}test_payment/{/if}" method="post" id="dpForm" name="dpForm" target="_parent">
<p class="cart_navigation">
	<input type="hidden" name="id" value="{$dp_id}"/>
	<input type="hidden" name="control" value="{$dp_control}"/>
	<input type="hidden" name="amount" value="{$dp_amount}"/>
	<input type="hidden" name="description" value="{$dp_desc}"/>
	<input type="hidden" name="url" value="{$link->getModuleLink('dotpay', 'payment')}{$dp_url}"/>
	<input type="hidden" name="urlc" value="{$link->getModuleLink('dotpay', 'payment')}{$dp_urlc}"/>
	<input type="hidden" name="email" value="{$customer->email}"/>
	<input type="hidden" name="type" value="3"/>
	<input type="hidden" name="firstname" value="{$customer->firstname}"/>
	<input type="hidden" name="lastname" value="{$customer->lastname}"/>
	<input type="hidden" name="street" value="{$address->address1}" /> 
	<input type="hidden" name="city" value="{$address->city}" /> 
	<input type="hidden" name="postcode" value="{$address->postcode}" />
	<input type="hidden" name="currency" value="{$currency}" />
	<input type="hidden" name="api_version" value="legacy" />
</p>
</form>
{literal}
<script language="JavaScript">
setTimeout(function(){document.dpForm.submit()}, 1000);
</script>
{/literal}