<%-- 
    Document   : actualizarTipo
    Created on : 10-20-2021, 05:32:35 PM
    Author     : Alexis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar registro</title>
        <%@include file="Template/_Header.jsp" %>
    </head>
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
    <body>
        <main class="content-wrapper">
            <form id='form' action="tipo?action=actualizar" method="POST">
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
                                                <input  class="mdc-text-field__input" id="id_tipo"  type="text" name="id_tipo" value="${ver.id_tipo}">
                                               
                                                <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                    <div class="mdc-notched-outline__leading"></div>
                                                    <div class="mdc-notched-outline__notch" style="">
                                                        <label for="id_tipo" class="mdc-floating-label" style="">ID</label>
                                                    </div>
                                                    <div class="mdc-notched-outline__trailing"></div>
                                                </div>
                                            </div>
                                        </div>
                                            
                                            <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
                                            <div class="mdc-text-field mdc-text-field--outlined">
                                                <input class="mdc-text-field__input" id="tipo" id='tipo' type="text" minlength='3' name="tipo" required="" value="${ver.tipo_pieza}">
                                                
                                                <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                    <div class="mdc-notched-outline__leading"></div>
                                                    <div class="mdc-notched-outline__notch" style="">
                                                        <label for="tipo" class="mdc-floating-label" style="">Tipo de pieza:</label>
                                                    </div>
                                                    <div class="mdc-notched-outline__trailing"></div>
                                                </div>
                                            </div>
                                        </div>
                                            
                                            <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
                                            <div class="mdc-text-field mdc-text-field--outlined">
                                                <input class="mdc-text-field__input" id="descripcion" required="" minlength='3' type="text" name="descripcion" value="${ver.descripcion}">
                                                <span id='notify' ></span>
                                                <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                    <div class="mdc-notched-outline__leading"></div>
                                                    <div class="mdc-notched-outline__notch" style="">
                                                        <label for="num_almacen" class="mdc-floating-label" style="">Descripci??n:</label>
                                                    </div>
                                                    <div class="mdc-notched-outline__trailing"></div>
                                                </div>
                                            </div>
                                        </div>
                                                
                                           
                                        </c:forEach>

                                          <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-12-desktop">
                                            <button type="submit" class="mdc-button mdc-button--outlined outlined-button--secondary mdc-ripple-upgraded">Enviar</button>

                                            <a class="mdc-button mdc-button--outlined outlined-button--primary mdc-ripple-upgraded" href="tipo?action=seleccionar">
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
var input = document.getElementById('tipo');
var input2 = document.getElementById('descripcion');

var form = document.getElementById('form');

var elem = document.createElement('span'); elem.id = 'notify'; elem.style.display = 'none'; form.appendChild(elem);

input.addEventListener('invalid', function(event){
    event.preventDefault(); 
    if ( ! event.target.validity.valid ) {
        elem.textContent = 'Debe contener mas de tres caracteres'; elem.className = 'error'; elem.style.display = 'block';  } });
input.addEventListener('input', function(event){ if ( 'block' === elem.style.display ) { input.className = ''; elem.style.display = 'none'; } });



input2.addEventListener('invalid', function(event){
    event.preventDefault(); 
    if ( ! event.target.validity.valid ) {
        elem.textContent = 'los campos son obligatorios'; elem.className = 'error'; elem.style.display = 'block';  } });
input2.addEventListener('input2', function(event){ if ( 'block' === elem.style.display ) { input2.className = ''; elem.style.display = 'none'; } });
        </script>
</html>
