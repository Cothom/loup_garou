<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Loup-Garou</title>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    </head>
    <body>
        <h1>Loup-Garou</h1>
<%
if (request.getSession(true).getAttribute("login") == null) {
	out.print("\t\t<p><a href=\"inscription.jsp\">S'inscrire</a></p>"
		+"\t\t<p><a href=\"connexion.jsp\">Se connecter</a></p>"
		+"\t\t<p><a href=\"regles.jsp\">Regles du jeu</a></p>\n");
} else {
	out.print("\t\t<p>Vos parties en cours</p>"
		+"<p>S'inscrire a une partie</p>"
		+"<p><a href=\"deconnexion.jsp\">deconnexion</a></p>\n");
}
%>
    </body>
</html>
