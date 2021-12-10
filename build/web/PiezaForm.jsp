<%-- 
    Document   : PiezaForm
    Created on : 21-oct-2021, 0:24:35
    Author     : Chiquillo
--%>
<%@page import="conexion.Conexion"%>
<%@page import="modelo.TipoPieza"%>
<%@page import="java.util.List"%>
<%@page import="dao.TipoPiezaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    TipoPiezaDao tpiezad = new TipoPiezaDao(new Conexion());
    List<TipoPieza> tipopieza = tpiezad.selectAll();
%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva pieza</title>
        <%@include file="Template/_Header.jsp"%>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
       
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
            <form id="form2" action="pieza?action=insertar" method="POST" autocomplete="on">
                <div class="mdc-layout-grid">
                    <div class="mdc-layout-grid__inner">
                        <div class="mdc-layout-grid__cell--span-12">
                            <div class="mdc-card">
                                <h6 class="card-title">Registro de pieza</h6>
                                <div class="template-demo">
                                    <div class="mdc-layout-grid__inner">

                                        <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
                                            <div class="mdc-text-field mdc-text-field--outlined">
                                                <input class="mdc-text-field__input" type="text" id='tipo_pieza' required minlength='3' name="tipo_pieza" >
                                                <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                    <div class="mdc-notched-outline__leading"></div>
                                                    <div class="mdc-notched-outline__notch" style="">
                                                        <label for="num_almacen" class="mdc-floating-label" style="">TIPO DE PIEZA</label>
                                                    </div>
                                                    <div class="mdc-notched-outline__trailing"></div>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
                                            <div class="mdc-text-field mdc-text-field--outlined">
                                                <input class="mdc-text-field__input" id='modelo' type="number" required="" name="modelo">
                                                <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                    <div class="mdc-notched-outline__leading"></div>
                                                    <div class="mdc-notched-outline__notch" style="">
                                                        <label class="mdc-floating-label">MODELO</label>
                                                    </div>
                                                    <div class="mdc-notched-outline__trailing"></div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
                                            <div class="mdc-text-field mdc-text-field--outlined">
                                                <input class="mdc-text-field__input" id="precio" type="text" required="" name="precio">
                                                <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                    <div class="mdc-notched-outline__leading"></div>
                                                    <div class="mdc-notched-outline__notch" style="">
                                                        <label class="mdc-floating-label">PRECIO</label>
                                                    </div>
                                                    <div class="mdc-notched-outline__trailing"></div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
                                            <div class="mdc-text-field mdc-text-field--outlined">

                                                <input class="mdc-text-field__input" minlength='3' id="descripcion" type="text" name="descripcion">
                                                <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                    <div class="mdc-notched-outline__leading"></div>
                                                    <div class="mdc-notched-outline__notch" style="">
                                                        <label class="mdc-floating-label">DESCRIPCIÓN</label>
                                                    </div>
                                                    <div class="mdc-notched-outline__trailing"></div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">
                                            <div class="mdc-text-field mdc-text-field--outlined">
                                                <input class="mdc-text-field__input" id="cantidad" required="" type="number" name="cantidad">
                                                <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                    <div class="mdc-notched-outline__leading"></div>
                                                    <div class="mdc-notched-outline__notch" style="">
                                                        <label class="mdc-floating-label">CANTIDAD</label>
                                                    </div>
                                                    <div class="mdc-notched-outline__trailing"></div>
                                                </div>
                                            </div>
                                        </div> 

                                        <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-6-desktop">

                                            <div class="mdc-text-field mdc-text-field--outlined">
                                                <select required="" id="id_tipo" name="id_tipo" class="mdc-text-field__input">
                                                    <option>Seleccionar</option>
                                                    <% for(TipoPieza tp : tipopieza) { %>
                                                        <option value="<%=tp.getId_tipo()%>"><%=tp.getTipo_pieza()%>, <%=tp.getDescripcion()%></option>
                                                    <% } %>
                                                </select>
                                                <div class="mdc-notched-outline mdc-notched-outline--upgraded">
                                                    <div class="mdc-notched-outline__leading"></div>
                                                    <div class="mdc-notched-outline__notch" style="">
                                                        <label class="mdc-floating-label">TIPO DE PIEZA</label>
                                                    </div>
                                                    <div class="mdc-notched-outline__trailing"></div>
                                                </div>
                                            </div>
                                            
                                        </div> 



                                        <div class="mdc-layout-grid__cell stretch-card mdc-layout-grid__cell--span-3-desktop">
                                            <button class="mdc-button mdc-button--outlined outlined-button--secondary mdc-ripple-upgraded" type="submit">Enviar</button> 
                                            <a class="mdc-button mdc-button--outlined outlined-button--primary mdc-ripple-upgraded" href="pieza?action=seleccionar">
                                                <i class="material-icons left">assignment</i>
                                                Mostrar
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
var input = document.getElementById('tipo_pieza');
var input2 = document.getElementById('modelo');
var input3 = document.getElementById('precio');
var input4 = document.getElementById('descripcion');
var input5 = document.getElementById('cantidad');
var input6 = document.getElementById('id_tipo');

var form = document.getElementById('form2');

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

input3.addEventListener('invalid', function(event){
    event.preventDefault(); 
    if ( ! event.target.validity.valid ) {
        elem.textContent = 'los campos son obligatorios'; elem.className = 'error'; elem.style.display = 'block';  } });
input3.addEventListener('input3', function(event){ if ( 'block' === elem.style.display ) { input3.className = ''; elem.style.display = 'none'; } });

input4.addEventListener('invalid', function(event){
    event.preventDefault(); 
    if ( ! event.target.validity.valid ) {
        elem.textContent = 'Prolonga a mas de tres caracteres los campos marcados con rojo'; elem.className = 'error'; elem.style.display = 'block';  } });
input4.addEventListener('input3', function(event){ if ( 'block' === elem.style.display ) { input4.className = ''; elem.style.display = 'none'; } });

input5.addEventListener('invalid', function(event){
    event.preventDefault(); 
    if ( ! event.target.validity.valid ) {
        elem.textContent = 'los campos son obligatorios'; elem.className = 'error'; elem.style.display = 'block';  } });
input5.addEventListener('input5', function(event){ if ( 'block' === elem.style.display ) { input5.className = ''; elem.style.display = 'none'; } });

input6.addEventListener('invalid', function(event){
    event.preventDefault(); 
    if ( ! event.target.validity.valid ) {
        elem.textContent = 'los campos son obligatorios'; elem.className = 'error'; elem.style.display = 'block';  } });
input6.addEventListener('input6', function(event){ if ( 'block' === elem.style.display ) { input6.className = ''; elem.style.display = 'none'; } });
    </script>
</html>
