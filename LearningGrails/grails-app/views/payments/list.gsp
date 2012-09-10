
<%@ page import="org.tsure.Payments" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'payments.label', default: 'Payments')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-payments" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-payments" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="type" title="${message(code: 'payments.type.label', default: 'Type')}" />
					
						<g:sortableColumn property="totalAmount" title="${message(code: 'payments.totalAmount.label', default: 'Total Amount')}" />
					
						<g:sortableColumn property="rent" title="${message(code: 'payments.rent.label', default: 'Rent')}" />
					
						<g:sortableColumn property="paidBy" title="${message(code: 'payments.paidBy.label', default: 'Paid By')}" />
					
						<g:sortableColumn property="dividePaidAmtBy" title="${message(code: 'payments.dividePaidAmtBy.label', default: 'Divide Paid Amt By')}" />
					
						<g:sortableColumn property="perPersonAmt" title="${message(code: 'payments.perPersonAmt.label', default: 'Per Person Amt')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${paymentsInstanceList}" status="i" var="paymentsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${paymentsInstance.id}">${fieldValue(bean: paymentsInstance, field: "type")}</g:link></td>
					
						<td>${fieldValue(bean: paymentsInstance, field: "totalAmount")}</td>
					
						<td><g:formatBoolean boolean="${paymentsInstance.rent}" /></td>
					
						<td>${fieldValue(bean: paymentsInstance, field: "paidBy")}</td>
					
						<td>${fieldValue(bean: paymentsInstance, field: "dividePaidAmtBy")}</td>
					
						<td>${fieldValue(bean: paymentsInstance, field: "perPersonAmt")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${paymentsInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
