<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Rathod.Index" %>

<!DOCTYPE html>
<link href="CSS/Index.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            <div class="content">
                <h2>404</h2>
                <h4>Opps! page not found</h4>
                <p>The page you were looking for doesn't exit. Please try again leater.</p>
                <a href="https://www.google.com/">Back to Google</a>
            </div>
        </div>
    </form>
    <script type="text/javascript">
        var container = document.getElementById('container');
        window.onmousemove = function (e) {
            var x = -e.clientX/5,
                y = -e.clientY/5;
            container.style.backgroundPositionX = x + 'px';
            container.style.backgroundPositionY = y + 'px';
        }
    </script>
</body>
</html>
