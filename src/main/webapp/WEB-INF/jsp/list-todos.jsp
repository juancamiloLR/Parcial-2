<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="common/header.jsp"%>
<%@ include file="common/navigation.jsp"%>

<div class="container">
    <div>
        <a type="button" class="btn btn-primary btn-md" href="/add-todo">Agregar Clase</a>
    </div>
    <br>
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3>Lista de Clases</h3>
        </div>
        <div class="panel-body">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th width="20%">Nombre Clase</th>
                        <th width="20%">Horario</th>
                        <th width="30%">Docente</th>
                        <th width="30%">Salón</th>
                        <th width="10%"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${todos}" var="todo">
                        <tr>
                            <td>${todo.className}</td>
                            <td>${todo.classSchedule}</td>
                            <td>${todo.teacher}</td>
                            <td>${todo.classroom}</td>
                            <td>
                                <a href="/update-todo?id=${todo.id}" class="btn btn-success">Actualizar</a>
                                <a href="/delete-todo?id=${todo.id}" class="btn btn-warning">Eliminar</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<%@ include file="common/footer.jsp"%>
