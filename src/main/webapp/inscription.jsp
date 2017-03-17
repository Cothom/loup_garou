<%@ page contentType="text/html; charset=UTF-8" %>
<%
String login = request.getParameter("pseudo");
String password1 = request.getParameter("password1");
String password2 = request.getParameter("password2");
%>
<%
if (login != null && password1 != null && password1.equals(password2)) {
	request.getSession(true).setAttribute("login", login);
	response.sendRedirect("index.jsp");
}
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Loup-Garou - Inscription</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Loup-Garou - Inscription</h1>
		<form accept-charset="utf-8" method="post" action="inscription.jsp">
			Pseudo: <input type="text" name="pseudo" /><br />
			Mot de passe: <input type="password" name="password1" /><br />
			Confirmation: <input type="password" name="password2" /><br />
		<% if (login != null && !password1.equals(password2)) {
			out.print("<p>Les mots de passes sont differents</p>\n");
			} %>
			<input type="submit" value="S'inscrire" />
		</form>
    </body>
</html>

