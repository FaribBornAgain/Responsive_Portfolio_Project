<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditSkill.aspx.cs" Inherits="My_Portrfolio_86.EditSkill" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Skill</title>
    <link rel="stylesheet" href="Styles/site.css" />
    <style>
    body {
        background: #fff; /* white background like homepage */
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        color: #333; /* default text color */
    }

    .form-container {
        max-width: 350px;   /* smaller, more compact */
        margin: 120px auto;
        padding: 30px 25px;
        background: #f9f9f9; /* light gray box */
        border: 1px solid #e0e0e0;
        border-radius: 12px;
        box-shadow: 0 6px 15px rgba(0, 119, 255, 0.15);
        text-align: center;
    }

    .form-container h2 {
        margin-bottom: 20px;
        font-size: 22px;
        font-weight: bold;
        color: #0077ff; /* blue heading like homepage */
    }

    input {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
        outline: none;
        transition: border 0.3s;
    }

    input:focus {
        border-color: #0077ff; /* blue focus border */
        box-shadow: 0 0 5px rgba(0, 119, 255, 0.3);
    }

    input[type="submit"], .btn {
        background: #0077ff;
        color: #fff;
        font-weight: bold;
        cursor: pointer;
        border: none;
        padding: 10px;
        border-radius: 6px;
        font-size: 15px;
        margin-top: 10px;
        transition: 0.3s;
    }

    input[type="submit"]:hover, .btn:hover {
        background: #005fcc;
    }

    .error {
        color: red;
        font-size: 14px;
        margin-bottom: 10px;
        display: block;
    }
</style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Edit Skill</h2>
            <asp:Label ID="lblError" runat="server" CssClass="error" />
            <asp:TextBox ID="txtSkillName" runat="server" Placeholder="Skill Name" />
            <asp:TextBox ID="txtPercentage" runat="server" Placeholder="Percentage (0-100)" />
            <asp:Button ID="btnSave" runat="server" Text="Save Changes" OnClick="btnSave_Click" />
        </div>
    </form>
</body>
</html>
