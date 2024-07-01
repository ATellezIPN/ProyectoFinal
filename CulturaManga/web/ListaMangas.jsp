<%@page import="java.util.List"%>
<%@page import="utils.Manga"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Lista de Mangas - Cultura Manga</title>
    <link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    <header>
        <h1>Bienvenido a la Cultura Manga</h1>
        <nav>
            <a href="login.jsp">Iniciar Sesión</a>
            <a href="registro.jsp">Registrarse</a>
        </nav>
    </header>
    <main>
        <h2>Lista de Mangas</h2>
        <table>
            <thead>
                <tr>
                    <th>Título</th>
                    <th>Autor</th>
                    <th>Género</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Manga> mangas = (List<Manga>) request.getAttribute("mangas");
                    for (Manga manga : mangas) {
                %>
                    <tr>
                        <td><%= manga.getTitulo() %></td>
                        <td><%= manga.getAutor() %></td>
                        <td><%= manga.getGenero() %></td>
                    </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </main>
    <footer>
        <p>© 2024 Cultura Manga</p>
    </footer>
</body>
</html>
