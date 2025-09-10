<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProject.aspx.cs" Inherits="My_Portrfolio_86.AddProject" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Project</title>
    <link rel="stylesheet" href="Styles/site.css" />
    <style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #fff; /* homepage background */
        color: #333;
        margin: 0;
        padding: 0;
    }

    .form-container {
        max-width: 420px; /* compact size */
        margin: 80px auto;
        padding: 30px;
        background: #f9f9f9;
        border-radius: 12px;
        box-shadow: 0 6px 20px rgba(0, 119, 255, 0.15);
        border: 1px solid #e0e0e0;
        animation: fadeIn 0.6s ease;
    }

    .form-container h2 {
        text-align: center;
        color: #0077ff;
        margin-bottom: 20px;
        font-size: 24px;
        font-weight: bold;
    }

    input, textarea {
        width: 100%;
        padding: 12px;
        margin: 12px 0;
        border-radius: 8px;
        border: 1px solid #ccc;
        background: #fff;
        color: #333;
        font-size: 15px;
        transition: all 0.3s ease;
    }

    input:focus, textarea:focus {
        border-color: #0077ff;
        box-shadow: 0 0 8px rgba(0, 119, 255, 0.3);
        outline: none;
        transform: scale(1.02);
    }

    textarea {
        resize: vertical;
        min-height: 100px;
    }

    input[type="submit"] {
        background: #0077ff;
        color: #fff;
        font-weight: bold;
        cursor: pointer;
        border: none;
        transition: 0.3s ease;
    }

    input[type="submit"]:hover {
        background: #005fcc;
        transform: translateY(-2px);
        box-shadow: 0 4px 12px rgba(0, 119, 255, 0.3);
    }

    .error {
        color: #ff3333;
        font-size: 14px;
        margin-top: 5px;
        display: block;
        animation: shake 0.3s;
    }

    /* Fade-in effect */
    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    /* Shake animation for error */
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
            <h2>Add Project</h2>
            <asp:Label ID="lblError" runat="server" CssClass="error" />
            <asp:TextBox ID="txtTitle" runat="server" Placeholder="Project Title" />
            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="4" Placeholder="Project Description" />
            <p>Upload Project Image:</p>
             <asp:FileUpload ID="fuProjectImage" runat="server" />
            <asp:TextBox ID="txtProjectLink" runat="server" Placeholder="Project Link" />
            <asp:Button ID="btnSave" runat="server" Text="Add Project" OnClick="btnSave_Click" />
        </div>
    </form>
</body>
</html>
