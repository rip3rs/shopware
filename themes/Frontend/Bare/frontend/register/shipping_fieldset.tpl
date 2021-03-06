<div class="panel register--shipping is--hidden">
	<h2 class="panel--title is--underline">{s name='RegisterShippingHeadline'}{/s}</h2>
	<div class="panel--body is--wide">
		{* Salutation *}
		{block name='frontend_register_shipping_fieldset_input_salutation'}
			<div class="register--salutation field--select">
				<select name="register[shipping][salutation]" id="salutation2" class="normal is--required{if $error_flags.salutation} has--error{/if}">
                    <option value="" disabled="disabled"{if $form_data.salutation eq ""} selected="selected"{/if}>{s name='RegisterShippingPlaceholderSalutation'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}</option>
					<option value="mr" {if $form_data.salutation eq "mr"}selected="selected"{/if}>{s name='RegisterShippingLabelMr'}{/s}</option>
					<option value="ms" {if $form_data.salutation eq "ms"}selected="selected"{/if}>{s name='RegisterShippingLabelMrs'}{/s}</option>
				</select>
			</div>
		{/block}

		{* Company *}
		{block name="frontend_register_shipping_fieldset_input_company"}
			<div class="register--companyname">
				<input autocomplete="section-shipping shipping organization" name="register[shipping][company]" type="text" placeholder="{s name='RegisterShippingPlaceholderCompany'}{/s}" id="company2" value="{$form_data.company|escape}" class="register--field{if $error_flags.company} has--error{/if}" />
			</div>
		{/block}

		{* Department *}
		{block name='frontend_register_shipping_fieldset_input_department'}
			<div class="register--department">
				<input autocomplete="section-shipping shipping organization-title" name="register[shipping][department]" type="text" placeholder="{s name='RegisterShippingPlaceholderDepartment'}{/s}" id="department2" value="{$form_data.department|escape}" class="register--field" />
			</div>
		{/block}

		{* Firstname *}
		{block name='frontend_register_shipping_fieldset_input_firstname'}
			<div class="register--firstname">
				<input autocomplete="section-shipping shipping given-name" name="register[shipping][firstname]" type="text" required="required" aria-required="true" placeholder="{s name='RegisterShippingPlaceholderFirstname'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}" id="firstname2" value="{$form_data.firstname|escape}" class="register--field is--required{if $error_flags.firstname} has--error{/if}" />
			</div>
		{/block}

		{* Lastname *}
		{block name='frontend_register_shipping_fieldset_input_lastname'}
			<div class="register--lastname">
				<input autocomplete="section-shipping shipping family-name" name="register[shipping][lastname]" type="text" required="required" aria-required="true" placeholder="{s name='RegisterShippingPlaceholderLastname'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}" id="lastname2" value="{$form_data.lastname|escape}" class="register--field is--required{if $error_flags.lastname} has--error{/if}" />
			</div>
		{/block}

		{* Street *}
		{block name='frontend_register_shipping_fieldset_input_street'}
			<div class="register--street">
				<input autocomplete="section-shipping shipping street-address" name="register[shipping][street]" type="text" required="required" aria-required="true" placeholder="{s name='RegisterShippingPlaceholderStreet'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}" id="street2" value="{$form_data.street|escape}" class="register--field register--field-street is--required{if $error_flags.street} has--error{/if}" />
			</div>
		{/block}

		{* Additional Address Line 1 *}
		{block name='frontend_register_shipping_fieldset_input_addition_address_line1'}
			{if {config name=showAdditionAddressLine1}}
				<div class="register--additional-line1">
					<input autocomplete="section-shipping shipping address-line2" name="register[shipping][additional_address_line1]" type="text"{if {config name=requireAdditionAddressLine2}} required="required" aria-required="true"{/if} placeholder="{s name='RegisterLabelAdditionalAddressLine1'}{/s}{if {config name=requireAdditionAddressLine1}}{s name="RequiredField" namespace="frontend/register/index"}{/s}{/if}" id="additionalAddressLine21" value="{$form_data.additional_address_line1|escape}" class="register--field{if {config name=requireAdditionAddressLine1}} is--required{/if}{if $error_flags.additional_address_line1 && {config name=requireAdditionAddressLine1}} has--error{/if}" />
				</div>
			{/if}
		{/block}

		{* Additional Address Line 2 *}
		{block name='frontend_register_shipping_fieldset_input_addition_address_line2'}
			{if {config name=showAdditionAddressLine2}}
				<div class="register--additional-line2">
					<input autocomplete="section-shipping shipping address-line3" name="register[shipping][additional_address_line2]" type="text"{if {config name=requireAdditionAddressLine2}} required="required" aria-required="true"{/if} placeholder="{s name='RegisterLabelAdditionalAddressLine2'}{/s}{if {config name=requireAdditionAddressLine2}}{s name="RequiredField" namespace="frontend/register/index"}{/s}{/if}" id="additionalAddressLine22" value="{$form_data.additional_address_line2|escape}" class="register--field{if {config name=requireAdditionAddressLine2}} is--required{/if}{if $error_flags.additional_address_line2 && {config name=requireAdditionAddressLine2}} has--error{/if}" />
				</div>
			{/if}
		{/block}

		{* Zip + City *}
		{block name='frontend_register_shipping_fieldset_input_zip_and_city'}
			<div class="register--zip-city">
                {if {config name=showZipBeforeCity}}
                    <input autocomplete="section-shipping shipping postal-code" name="register[shipping][zipcode]" type="text" required="required" aria-required="true" placeholder="{s name='RegisterShippingPlaceholderZipcode'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}" id="zipcode2" value="{$form_data.zipcode|escape}" class="register--field register--spacer register--field-zipcode is--required{if $error_flags.zipcode} has--error{/if}" />
                    <input autocomplete="section-shipping shipping address-level2" name="register[shipping][city]" type="text" required="required" aria-required="true" placeholder="{s name='RegisterShippingPlaceholderCity'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}" id="city2" value="{$form_data.city|escape}" size="25" class="register--field register--field-city is--required{if $error_flags.city} has--error{/if}" />
                {else}
                    <input autocomplete="section-shipping shipping address-level2" name="register[shipping][city]" type="text" required="required" aria-required="true" placeholder="{s name='RegisterShippingPlaceholderCity'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}" id="city2" value="{$form_data.city|escape}" size="25" class="register--field register--spacer register--field-city is--required{if $error_flags.city} has--error{/if}" />
                    <input autocomplete="section-shipping shipping postal-code" name="register[shipping][zipcode]" type="text" required="required" aria-required="true" placeholder="{s name='RegisterShippingPlaceholderZipcode'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}" id="zipcode2" value="{$form_data.zipcode|escape}" class="register--field register--field-zipcode is--required{if $error_flags.zipcode} has--error{/if}" />
                {/if}
			</div>
		{/block}

        {* Country and state fields *}
		{if {config name=CountryShipping}}
            {* Country *}
			{block name='frontend_register_shipping_fieldset_input_country'}
				<div class="register--shipping-country field--select">
					<select name="register[shipping][country]" id="country_shipping" required="required" aria-required="true" class="select--country is--required{if $error_flags.country} has--error{/if}">
						<option value="" disabled="disabled" selected="selected">{s name='RegisterShippingPlaceholderCountry'}{/s}{s name="RequiredField" namespace="frontend/register/index"}{/s}</option>

						{foreach from=$country_list item=country}
							<option value="{$country.id}"{if $country.id eq $form_data.country} selected="selected"{/if}>
								{$country.countryname}
							</option>
						{/foreach}

					</select>
				</div>
			{/block}

            {* Country state *}
            {block name='frontend_register_shipping_fieldset_input_country_states'}
                <div class="country-area-state-selection">
                    {foreach $country_list as $country}
                        {if $country.states}
                            <div id="country_shipping_{$country.id}_states" class="register--state-selection field--select{if $country.id != $form_data.country} is--hidden{/if}">
                                <select name="register[shipping][country_shipping_state_{$country.id}]"{if $country.force_state_in_registration} required="required" aria-required="true"{/if}{if $country.id != $form_data.country} disabled="disabled"{/if} class="select--state {if $country.force_state_in_registration}is--required{/if}{if $error_flags.stateID} has--error{/if}">
                                    <option value="" selected="selected"{if $country.force_state_in_registration} disabled="disabled"{/if}>{s name='RegisterShippingLabelState'}{/s}{if $country.force_state_in_registration}{s name="RequiredField" namespace="frontend/register/index"}{/s}{/if}</option>
                                    {assign var="stateID" value="country_shipping_state_`$country.id`"}
                                    {foreach $country.states as $state}
                                        <option value="{$state.id}" {if $state.id eq $form_data[$stateID]}selected="selected"{/if}>{$state.name}</option>
                                    {/foreach}
                                </select>
                            </div>
                        {/if}
                    {/foreach}
                </div>
            {/block}
		{/if}
	</div>
</div>