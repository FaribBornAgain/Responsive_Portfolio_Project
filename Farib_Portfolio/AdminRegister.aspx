<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegister.aspx.cs" Inherits="My_Portrfolio_86.AdminRegister" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Register</title>
    <link rel="stylesheet" href="Styles/site.css" />
    <style>
    .form-container {
        max-width: 420px;
        margin: 100px auto;
        padding: 30px 25px;
        background: #1e293b; /* dark navy */
        border-radius: 12px;
        color: #e2e8f0; /* light gray */
        box-shadow: 0 8px 24px rgba(0,0,0,0.6);
        text-align: center;
    }

    .form-container h2 {
        margin-bottom: 20px;
        color: #38bdf8; /* cyan heading */
        font-size: 26px;
        font-weight: 700;
    }

    input {
        width: 100%;
        padding: 12px 14px;
        margin: 12px 0;
        border-radius: 8px;
        border: 1px solid #334155;
        background: #0f172a;
        color: #f1f5f9;
        font-size: 15px;
        outline: none;
        transition: 0.3s;
    }

    input:focus {
        border-color: #38bdf8;
        box-shadow: 0 0 8px rgba(56,189,248,0.4);
    }

    input[type="submit"] {
        background: #38bdf8;
        color: #0f172a;
        font-weight: bold;
        cursor: pointer;
        border: none;
        transition: 0.3s ease;
    }

    input[type="submit"]:hover {
        background: #fff;
        color: #000;
    }

    .error {
        color: #f87171; /* soft red */
        font-size: 14px;
        margin-top: 8px;
        display: block;
    }
</style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Register New Admin</h2>
            <asp:Label ID="lblError" runat="server" CssClass="error" />
            <asp:TextBox ID="txtUsername" runat="server" Placeholder="Username" />
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Placeholder="Password" />
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Placeholder="Confirm Password" />
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
            <br />
            <asp:HyperLink ID="lnkLogin" runat="server" NavigateUrl="AdminLogin.aspx">Back to Login</asp:HyperLink>
        </div>
    </form>
</body>
</html>
