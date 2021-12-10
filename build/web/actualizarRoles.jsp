<%-- 
    Document   : actualizarRoles
    Created on : 18-nov-2021, 23:18:47
    Author     : Chiquillo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>  
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Roles</title>
        <%@include file="Template/_Header.jsp" %>
        <style> 
#notify {
padding: 10px;
    
width: 30%;
color: #fff;  
}
#notify.error {
background-color: #DD2C00;
}
        </style>
    </head>
    <body>
        <main class="content-wrapper">
            <form id="frm" action="roles?action=actualizar" method="POST" autocomplete="off">
                <div class="mdc-layout-grid">
                    <div class="mdc-layout-grid__inner">
                        <div class="mdc-layout-grid__cell--span-12">
                            <div class="mdc-card">
                                <h6 class="card-title">Modificar registro tipo de pieza</h6>
                                <div class="template-demo">
                                    <div class="mdc-layout-grid__inner">

                                        <c:forEach items="${lista}" var="ver">

                                            <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
                                                <div class="mdc-text-field mdc-text-field--outlined">
                                                    <input  class="mdc-text-field__input" id="id_tipo" type="text" name="id_rol" value="${ver.id_rol}">

                                                    <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                        <div class="mdc-notched-outline__leading"></div>
                                                        <div class="mdc-notched-outline__notch" style="">
                                                            <label for="id_rol" class="mdc-floating-label" style="">ID</label>
                                                        </div>
                                                        <div class="mdc-notched-outline__trailing"></div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
                                                <div class="mdc-text-field mdc-text-field--outlined">
                                                    <input class="mdc-text-field__input" id="nombre_rol" type="text" required="" minlength='3' name="nombre_rol" value="${ver.nombre_rol}">

                                                    <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                        <div class="mdc-notched-outline__leading"></div>
                                                        <div class="mdc-notched-outline__notch" style="">
                                                            <label for="nombre_rol" class="mdc-floating-label" style="">Nombre del Rol:</label>
                                                        </div>
                                                        <div class="mdc-notched-outline__trailing"></div>
                                                    </div>
                                                </div>
                                            </div>
                                                    
                                            <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
                                                <div class="mdc-text-field mdc-text-field--outlined">
                                                    <input class="mdc-text-field__input" id="crear" required="" type="text" name="crear" value="${ver.crear}">

                                                    <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                        <div class="mdc-notched-outline__leading"></div>
                                                        <div class="mdc-notched-outline__notch" style="">
                                                            <label for="crear" class="mdc-floating-label" style="">Crear:</label>
                                                        </div>
                                                        <div class="mdc-notched-outline__trailing"></div>
                                                    </div>
                                                </div>
                                            </div>
                                                    
                                            <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
                                                <div class="mdc-text-field mdc-text-field--outlined">
                                                    <input class="mdc-text-field__input" id="actualizar" required="" type="text" name="actualizar" value="${ver.actualizar}">

                                                    <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                        <div class="mdc-notched-outline__leading"></div>
                                                        <div class="mdc-notched-outline__notch" style="">
                                                            <label for="actualizar" class="mdc-floating-label" style="">Actualizar:</label>
                                                        </div>
                                                        <div class="mdc-notched-outline__trailing"></div>
                                                    </div>
                                                </div>
                                            </div>
                                               
                                           <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
                                                <div class="mdc-text-field mdc-text-field--outlined">
                                                    <input class="mdc-text-field__input" id="eliminar" required=""  type="text" name="eliminar" value="${ver.eliminar}">

                                                    <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                        <div class="mdc-notched-outline__leading"></div>
                                                        <div class="mdc-notched-outline__notch" style="">
                                                            <label for="eliminar" class="mdc-floating-label" style="">Eliminar:</label>
                                                        </div>
                                                        <div class="mdc-notched-outline__trailing"></div>
                                                    </div>
                                                </div>
                                            </div>


                                        </c:forEach>

                                        <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-12-desktop">
                                            <button type="submit" class="mdc-button mdc-button--outlined outlined-button--secondary mdc-ripple-upgraded">Enviar</button>

                                            <a class="mdc-button mdc-button--outlined outlined-button--primary mdc-ripple-upgraded" href="roles?action=view">
                                                <i class="material-icons left">assignment</i>
                                                Ver registros
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </main> 
        ${msg}

        <%@include file="Template/_Footer.jsp" %>
    </body>
    
     <script>
var input = document.getElementById('nombre_rol');
var input2 = document.getElementById('crear');
var input3 = document.getElementById('actualizar');
var input4 = document.getElementById('eliminar');

var form = document.getElementById('frm');

var elem = document.createElement('span'); elem.id = 'notify'; elem.style.display = 'none'; form.appendChild(elem);

input.addEventListener('invalid', function(event){
    event.preventDefault(); 
    if ( ! event.target.validity.valid ) {
        elem.textContent = 'Prolonga a mas de tres caracteres el campo marcado con rojo'; elem.className = 'error'; elem.style.display = 'block';  } });
input.addEventListener('input', function(event){ if ( 'block' === elem.style.display ) { input.className = ''; elem.style.display = 'none'; } });



input2.addEventListener('invalid', function(event){
    event.preventDefault(); 
    if ( ! event.target.validity.valid ) {
        elem.textContent = 'Los campos son requeridos, rellena los campos marcados con rojo'; elem.className = 'error'; elem.style.display = 'block';  } });
input2.addEventListener('input2', function(event){ if ( 'block' === elem.style.display ) { input2.className = ''; elem.style.display = 'none'; } });
    
    input3.addEventListener('invalid', function(event){
    event.preventDefault(); 
    if ( ! event.target.validity.valid ) {
        elem.textContent = 'Los campos son requeridos, rellena los campos marcados con rojo'; elem.className = 'error'; elem.style.display = 'block';  } });
input3.addEventListener('input3', function(event){ if ( 'block' === elem.style.display ) { input3.className = ''; elem.style.display = 'none'; } });

input4.addEventListener('invalid', function(event){
    event.preventDefault(); 
    if ( ! event.target.validity.valid ) {
        elem.textContent = 'Los campos son requeridos, rellena los campos marcados con rojo'; elem.className = 'error'; elem.style.display = 'block';  } });
input4.addEventListener('input3', function(event){ if ( 'block' === elem.style.display ) { input4.className = ''; elem.style.display = 'none'; } });    
    </script>
</html>
