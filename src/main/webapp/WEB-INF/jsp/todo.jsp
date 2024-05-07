<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ include file="common/header.jsp"%>
<%@ include file="common/navigation.jsp"%>
<div class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3 ">
            <div class="panel panel-primary">
                <div class="panel-heading">Agregar Clase</div>
                <div class="panel-body">
                    <form:form method="post" modelAttribute="todo" action="/add-todo">
                        <form:hidden path="id" />
                        <fieldset class="form-group">
                            <form:label path="className">Nombre de la clase:</form:label>
                            <form:input path="className" type="text" class="form-control" maxlength="20" required="required" />
                            <form:errors path="className" cssClass="text-warning" />
                        </fieldset>
                        <fieldset class="form-group">
                            <form:label path="classSchedule">Horario de clase:</form:label>
                            <form:input path="classSchedule" type="number" class="form-control" required="required" />
                            <form:errors path="classSchedule" cssClass="text-warning" />
                        </fieldset>
                        <fieldset class="form-group">
                            <form:label path="teacher">Docente a cargo de la clase:</form:label>
                            <form:input path="teacher" type="text" class="form-control" maxlength="100" required="required" />
                            <form:errors path="teacher" cssClass="text-warning" />
                        </fieldset>
                        <fieldset class="form-group">
                            <form:label path="classroom">Salón de clase:</form:label>
                            <form:input path="classroom" type="text" class="form-control" required="required" />
                            <form:errors path="classroom" cssClass="text-warning" />
                        </fieldset>
                        <button type="submit" class="btn btn-success">Guardar</button>
                    </form:form>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="common/footer.jsp"%>




