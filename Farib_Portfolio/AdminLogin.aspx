<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="My_Portrfolio_86.AdminLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <link rel="stylesheet" href="Styles/site.css" />
   <style>
    body {
        margin: 0;
        height: 100vh;
        display: flex;
        justify-content: center;  /* horizontal center */
        align-items: center;      /* vertical center */
        background: #fff;         /* white like homepage */
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        color: #1e3a8a;           /* blue text */
    }

    .login-container {
        width: 320px; /* compact width */
        padding: 30px 25px;
        background: #f9f9f9;
        border-radius: 10px;
        box-shadow: 0 6px 16px rgba(0,0,0,0.1);
        text-align: center;
    }

    .login-container h2 {
        margin-bottom: 20px;
        font-size: 22px;
        color: #1e3a8a; /* homepage blue */
    }

    .login-container input, 
    .login-container .aspNet-Button, 
    .login-container .btn {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    /* ASP.NET TextBox styling */
    input[type="text"], 
    input[type="password"] {
        background: #fff;
        color: #333;
        outline: none;
        transition: border 0.3s, box-shadow 0.3s;
    }

    input[type="text"]:focus, 
    input[type="password"]:focus {
        border-color: #1e3a8a;
        box-shadow: 0 0 6px rgba(30, 58, 138, 0.3);
    }

    /* ASP.NET Buttons */
    input[type="submit"], 
    .btn {
        background: #1e3a8a;
        color: #fff;
        border: none;
        font-weight: bold;
        cursor: pointer;
        transition: 0.3s;
    }

    input[type="submit"]:hover, 
    .btn:hover {
        background: #0d1b5e;
    }

    .error {
        color: #d32f2f;
        font-size: 13px;
        margin-bottom: 10px;
        display: block;
    }
</style>




</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
            <h2>Admin Login</h2>
            <asp:Label ID="lblError" runat="server" CssClass="error" /><br />
            <asp:TextBox ID="txtUsername" runat="server" Placeholder="Username" /> <br />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Placeholder="Password" /> <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /> <br />
            <br /><br />
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" CssClass="btn" />
        </div>
    </form>
</body>
</html>
