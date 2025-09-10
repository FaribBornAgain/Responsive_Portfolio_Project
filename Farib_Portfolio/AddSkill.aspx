<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddSkill.aspx.cs" Inherits="My_Portrfolio_86.AddSkill" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Skill</title>
    <link rel="stylesheet" href="Styles/site.css" />
    <style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #ffffff, #eaf3ff, #f0f8ff);
        background-size: 300% 300%;
        animation: gradientShift 12s ease infinite;
        margin: 0;
        padding: 0;
        color: #333;
    }

    .form-container {
        max-width: 380px;
        margin: 120px auto;
        padding: 28px;
        background: #fff;
        border-radius: 14px;
        box-shadow: 0 8px 25px rgba(0, 119, 255, 0.2);
        border: 1px solid #e0e0e0;
        text-align: center;
        animation: floatUp 0.9s ease;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .form-container:hover {
        transform: translateY(-6px) scale(1.02);
        box-shadow: 0 12px 35px rgba(0, 119, 255, 0.3);
    }

    .form-container h2 {
        color: #0077ff;
        margin-bottom: 20px;
        font-size: 26px;
        font-weight: bold;
        letter-spacing: 1px;
        animation: fadeIn 1.2s ease;
    }

    input {
        width: 100%;
        padding: 12px;
        margin: 12px 0;
        border-radius: 8px;
        border: 1px solid #ccc;
        background: #fff;
        color: #333;
        font-size: 15px;
        transition: all 0.4s ease;
    }

    input:focus {
        border-color: #0077ff;
        box-shadow: 0 0 12px rgba(0, 119, 255, 0.4);
        outline: none;
        transform: scale(1.04);
    }

    input[type="submit"] {
        background: #0077ff;
        color: #fff;
        font-weight: bold;
        cursor: pointer;
        border: none;
        padding: 12px;
        border-radius: 8px;
        font-size: 16px;
        transition: 0.4s ease;
        position: relative;
        overflow: hidden;
    }

    input[type="submit"]:hover {
        background: #005fcc;
        transform: translateY(-3px) scale(1.05);
        box-shadow: 0 5px 15px rgba(0, 119, 255, 0.3);
    }

    /* Ripple effect on button click */
    input[type="submit"]::after {
        content: "";
        position: absolute;
        width: 0;
        height: 0;
        background: rgba(255, 255, 255, 0.5);
        border-radius: 50%;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        transition: width 0.6s ease, height 0.6s ease;
        z-index: 1;
    }
    input[type="submit"]:active::after {
        width: 250%;
        height: 250%;
    }

    .error {
        color: #ff3333;
        font-size: 14px;
        margin-top: 8px;
        display: block;
        animation: shake 0.4s;
    }

    /* Animations */
    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(15px); }
        to { opacity: 1; transform: translateY(0); }
    }

    @keyframes floatUp {
        from { opacity: 0; transform: translateY(40px); }
        to { opacity: 1; transform: translateY(0); }
    }

    @keyframes gradientShift {
        0% { background-position: 0% 50%; }
        50% { background-position: 100% 50%; }
        100% { background-position: 0% 50%; }
    }

    @keyframes shake {
        0%, 100% { transform: translateX(0); }
        25% { transform: translateX(-5px); }
        50% { transform: translateX(5px); }
        75% { transform: translateX(-5px); }
    }
</style>


</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h2>Add New Skill</h2>
            <asp:Label ID="lblError" runat="server" CssClass="error" />
            <asp:TextBox ID="txtSkillName" runat="server" Placeholder="Skill Name" />
            <asp:TextBox ID="txtPercentage" runat="server" Placeholder="Percentage (0-100)" />
            <asp:Button ID="btnAdd" runat="server" Text="Add Skill" OnClick="btnAdd_Click" />
        </div>
    </form>
</body>
</html>
