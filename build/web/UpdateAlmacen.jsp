<%-- 
    Document   : UpdateAlmacen
    Created on : 10-20-2021, 06:37:42 PM
    Author     : tatiana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Almacen</title>
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

            <form id="fomrE" action="almacen?action=UpdateAlmacen" method="POST" >
                <div class="mdc-layout-grid">
                    <div class="mdc-layout-grid__inner">
                        <div class="mdc-layout-grid__cell--span-12">
                            <div class="mdc-card">
                                <h6 class="card-title">Registro de almacen</h6>
                                <div class="template-demo">
                                    <div class="mdc-layout-grid__inner">

                                        <c:forEach items="${listAlmacen}" var="al">
                                            
                                        <%-- ID de almacen Text input --%>
                                        <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
                                            <div class="mdc-text-field mdc-text-field--outlined">
                                                <input class="mdc-text-field__input" id="id_almacen" type="number" name="id_almacen" value="${al.id_almacen}">
                                                <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                    <div class="mdc-notched-outline__leading"></div>
                                                    <div class="mdc-notched-outline__notch" style="">
                                                        <label for="id_almacen" class="mdc-floating-label" style="">ID de almacen</label>
                                                    </div>
                                                    <div class="mdc-notched-outline__trailing"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <%-- Text input final --%>
                                        
                                        
                                        <%-- Número de almacen Text input --%>
                                        <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
                                            <div class="mdc-text-field mdc-text-field--outlined">
                                                <input class="mdc-text-field__input" id="num_almacen" type="number" required="" name="num_almacen" value="${al.num_almacen}">
                                                <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                    <div class="mdc-notched-outline__leading"></div>
                                                    <div class="mdc-notched-outline__notch" style="">
                                                        <label for="num_almacen" class="mdc-floating-label" style="">Número de almacen</label>
                                                    </div>
                                                    <div class="mdc-notched-outline__trailing"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <%-- Text input final --%>

                                        <%-- Descripción Text input --%>
                                        <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
                                            <div class="mdc-text-field mdc-text-field--outlined">
                                                <input class="mdc-text-field__input" id="descripcion" name="descripcion" required="" minlength="3" type="text" value="${al.descripcion}">
                                                <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                    <div class="mdc-notched-outline__leading"></div>
                                                    <div class="mdc-notched-outline__notch" style="">
                                                        <label for="descripcion" class="mdc-floating-label" style="">Descripción</label>
                                                    </div>
                                                    <div class="mdc-notched-outline__trailing"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <%-- Text input final --%>

                                        <%-- Direccion Text input --%>
                                        <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
                                            <div class="mdc-text-field mdc-text-field--outlined">
                                                <input class="mdc-text-field__input" id="direccion" required="" minlength="3" name="direccion" type="text" value="${al.direccion}">
                                                <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                    <div class="mdc-notched-outline__leading"></div>
                                                    <div class="mdc-notched-outline__notch" style="">
                                                        <label for="direccion" class="mdc-floating-label" style="">Dirección</label>
                                                    </div>
                                                    <div class="mdc-notched-outline__trailing"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <%-- Text input final --%>

                                        <%-- Nombre de estanteria Text input --%>
                                        <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
                                            <div class="mdc-text-field mdc-text-field--outlined">
                                                <input class="mdc-text-field__input" id="nombre_estanteria" required="" minlength="3" name="nombre_estanteria" type="text"value="${al.nombre_estanteria}">
                                                <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                    <div class="mdc-notched-outline__leading"></div>
                                                    <div class="mdc-notched-outline__notch" style="">
                                                        <label for="nombre_estanteria" class="mdc-floating-label" style="">Nombre estanteria</label>
                                                    </div>
                                                    <div class="mdc-notched-outline__trailing"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <%-- Text input final --%>


                                        <%-- Action card --%>
                                        <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-12-desktop">
                                            <%-- Boton de enviar --%>
                                            <button type="submit" class="mdc-button mdc-button--outlined outlined-button--secondary mdc-ripple-upgraded">
                                                Enviar
                                            </button>
                                            <%-- Boton de mostrar --%>
                                            <a class="mdc-button mdc-button--outlined outlined-button--primary mdc-ripple-upgraded" href="almacen?action=getAllAlmacen">
                                                <i class="material-icons left">assignment</i>
                                                Mostrar
                                            </a>
                                        </div>
                                        <%-- Action card end --%>
                                        
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </main>
        ${msg}

        <br/>

        <%@include file="Template/_Footer.jsp" %>
    </body>
    
        <script>
var input = document.getElementById('num_almacen');
var input2 = document.getElementById('descripcion');
var input3 = document.getElementById('direccion');
var input4 = document.getElementById('nombre_estanteria');

var form = document.getElementById('fomrE');

var elem = document.createElement('span'); elem.id = 'notify'; elem.style.display = 'none'; form.appendChild(elem);

input.addEventListener('invalid', function(event){
    event.preventDefault(); 
    if ( ! event.target.validity.valid ) {
        elem.textContent = 'Los campos son requeridos, rellena los campos marcados con rojo'; elem.className = 'error'; elem.style.display = 'block';  } });
input.addEventListener('input', function(event){ if ( 'block' === elem.style.display ) { input.className = ''; elem.style.display = 'none'; } });



input2.addEventListener('invalid', function(event){
    event.preventDefault(); 
    if ( ! event.target.validity.valid ) {
        elem.textContent = 'Prolonga a mas de tres caracteres los campos marcados con rojo'; elem.className = 'error'; elem.style.display = 'block';  } });
input2.addEventListener('input2', function(event){ if ( 'block' === elem.style.display ) { input2.className = ''; elem.style.display = 'none'; } });
    
    input3.addEventListener('invalid', function(event){
    event.preventDefault(); 
    if ( ! event.target.validity.valid ) {
        elem.textContent = 'Prolonga a mas de tres caracteres los campos marcados con rojo'; elem.className = 'error'; elem.style.display = 'block';  } });
input3.addEventListener('input3', function(event){ if ( 'block' === elem.style.display ) { input3.className = ''; elem.style.display = 'none'; } });

input4.addEventListener('invalid', function(event){
    event.preventDefault(); 
    if ( ! event.target.validity.valid ) {
        elem.textContent = 'Prolonga a mas de tres caracteres los campos marcados con rojo'; elem.className = 'error'; elem.style.display = 'block';  } });
input4.addEventListener('input3', function(event){ if ( 'block' === elem.style.display ) { input4.className = ''; elem.style.display = 'none'; } });    
    </script>
</html>
