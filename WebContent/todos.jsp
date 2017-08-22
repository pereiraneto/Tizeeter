<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="br.ufc.qx.tizeeter.model.Usuario" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%! List<Usuario> usuarios = null;%>
<%
	usuarios = (ArrayList<Usuario>) request.getAttribute("usuarios");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
         "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pt-br">
    <head>
       	<jsp:include page="comum/head.html" />
    </head>
    <body>

        <jsp:include page="comum/cabecalho.jsp" />

        <div id="conteudo">
        
        	<jsp:include page="comum/informacaoDoUsuario.jsp" />
              
            <div id="principal" class="module">
            	<table>
            		<thead>
            			<tr>
	            			<th>Nome do usu&aacute;rio</th>
	            			<th>Email</th>
	            			<th>Data de nascimento</th>
            			</tr>
            		</thead>
            		<tbody>
            		<%
            			if(usuarios != null){
	            			for(int i =0; i < usuarios.size(); i++){
	            				Usuario usuario = usuarios.get(i);
	            				String css = (i % 2 == 0) ? "par" : "impar";
            		%>
						<tr class="<%=css%>">
							<td><%= usuario.getNomeDeUsuario() %></td>
							<td><%= usuario.getEmail() %></td>
							<td><%= usuario.getDataDeNascimento() %></td>
						</tr>
					<%
	            			}
            			}
					%>            			
            		</tbody>
            	</table>
            </div>
            
            <jsp:include page="comum/tendencias.jsp" />
			<jsp:include page="comum/rodape.jsp" />
        </div>
    </body>
</html>
