
<%@ page import="org.tsure.Payments" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'payments.label', default: 'Payments')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-payments" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-payments" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list payments">
			
				<g:if test="${paymentsInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="payments.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${paymentsInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentsInstance?.totalAmount}">
				<li class="fieldcontain">
					<span id="totalAmount-label" class="property-label"><g:message code="payments.totalAmount.label" default="Total Amount" /></span>
					
						<span class="property-value" aria-labelledby="totalAmount-label"><g:fieldValue bean="${paymentsInstance}" field="totalAmount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentsInstance?.rent}">
				<li class="fieldcontain">
					<span id="rent-label" class="property-label"><g:message code="payments.rent.label" default="Rent" /></span>
					
						<span class="property-value" aria-labelledby="rent-label"><g:formatBoolean boolean="${paymentsInstance?.rent}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentsInstance?.paidBy}">
				<li class="fieldcontain">
					<span id="paidBy-label" class="property-label"><g:message code="payments.paidBy.label" default="Paid By" /></span>
					
						<span class="property-value" aria-labelledby="paidBy-label"><g:fieldValue bean="${paymentsInstance}" field="paidBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentsInstance?.dividePaidAmtBy}">
				<li class="fieldcontain">
					<span id="dividePaidAmtBy-label" class="property-label"><g:message code="payments.dividePaidAmtBy.label" default="Divide Paid Amt By" /></span>
					
						<span class="property-value" aria-labelledby="dividePaidAmtBy-label"><g:fieldValue bean="${paymentsInstance}" field="dividePaidAmtBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentsInstance?.perPersonAmt}">
				<li class="fieldcontain">
					<span id="perPersonAmt-label" class="property-label"><g:message code="payments.perPersonAmt.label" default="Per Person Amt" /></span>
					
						<span class="property-value" aria-labelledby="perPersonAmt-label"><g:fieldValue bean="${paymentsInstance}" field="perPersonAmt"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentsInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="payments.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${paymentsInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentsInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="payments.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${paymentsInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${paymentsInstance?.person}">
				<li class="fieldcontain">
					<span id="person-label" class="property-label"><g:message code="payments.person.label" default="Person" /></span>
					
						<span class="property-value" aria-labelledby="person-label"><g:link controller="person" action="show" id="${paymentsInstance?.person?.id}">${paymentsInstance?.person?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${paymentsInstance?.id}" />
					<g:link class="edit" action="edit" id="${paymentsInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
