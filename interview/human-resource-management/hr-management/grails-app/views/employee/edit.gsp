<!DOCTYPE html>
<html>
  <head>
    <meta name="layout" content="main">
    <title><g:message code="employee.edit.label"/></title>
    <tmpl:datepicker/>
  </head>
  <body>
    <g:render template="nav" model="${tab}"/>
    <div id="edit-employee" class="content scaffold-edit" role="main">
      <h1><g:message code="default.edit.label" args="[entityName]" /></h1>

      <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
      </g:if>

      <g:hasErrors bean="${employeeInstance}">
        <ul class="errors" role="alert">
          <g:eachError bean="${employeeInstance}" var="error">
          <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
          </g:eachError>
        </ul>
      </g:hasErrors>

      <g:form method="post" >
        <g:hiddenField name="id" value="${employeeInstance?.id}" />

        <fieldset class="form">
          <g:render template="form"/>
        </fieldset>

        <fieldset class="buttons">
          <g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label')}" />
          <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message')}');" />
        </fieldset>
      </g:form>
    </div>
  </body>
</html>
