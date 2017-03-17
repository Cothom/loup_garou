<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="javax.annotation.Resource" %>
<%@ page import="com.mycompany.werewolf.DBInterface" %>
<%
String login = request.getParameter("pseudo");
String password = request.getParameter("password");
%>
<%
DBInterface dbi = new DBInterface();
if (dbi.isLoginValid(login, password)) {
	request.getSession(true).setAttribute("login", login);
	response.sendRedirect("index.jsp");
}
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Loup-Garou - Connexion</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Loup-Garou - Connexion</h1>
		<form accept-charset="utf-8" method="post" action="connexion.jsp">
			<% if (login != null) { out.print("<p>Incorrect</p>\n"); } %>
			Pseudo: <input type="text" name="pseudo" /><br />
			Mot de passe: <input type="password" name="password" /><br />
			<input type="submit" value="Se connecter" /><br />
		</form>
    </body>
</html>

