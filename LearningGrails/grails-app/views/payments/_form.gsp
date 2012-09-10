<%@ page import="org.tsure.Payments" %>



<div class="fieldcontain ${hasErrors(bean: paymentsInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="payments.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" required="" value="${paymentsInstance?.type}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paymentsInstance, field: 'totalAmount', 'error')} required">
	<label for="totalAmount">
		<g:message code="payments.totalAmount.label" default="Total Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalAmount" value="${fieldValue(bean: paymentsInstance, field: 'totalAmount')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: paymentsInstance, field: 'rent', 'error')} ">
	<label for="rent">
		<g:message code="payments.rent.label" default="Rent" />
		
	</label>
	<g:checkBox name="rent" value="${paymentsInstance?.rent}" />
</div>

<div class="fieldcontain ${hasErrors(bean: paymentsInstance, field: 'paidBy', 'error')} ">
	<label for="paidBy">
		<g:message code="payments.paidBy.label" default="Paid By" />
		
	</label>
	<g:select name="paidBy" from="${paymentsInstance.constraints.paidBy.inList}" value="${paymentsInstance?.paidBy}" valueMessagePrefix="payments.paidBy" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: paymentsInstance, field: 'person', 'error')} required">
	<label for="person">
		<g:message code="payments.person.label" default="Person" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="person" name="person.id" from="${org.tsure.Person.list()}" optionKey="id" required="" value="${paymentsInstance?.person?.id}" class="many-to-one"/>
</div>

