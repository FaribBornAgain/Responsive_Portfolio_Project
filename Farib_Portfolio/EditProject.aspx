<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditProject.aspx.cs" Inherits="My_Portrfolio_86.EditProject" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Project</title>
    <link rel="stylesheet" href="Styles/site.css" />
    <style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #fff; /* homepage background */
        color: #333;
        margin: 0;
        padding: 0;
    }

    .edit-container {
        max-width: 600px;
        margin: 60px auto;
        background: #f9f9f9;
        padding: 35px 40px;
        border-radius: 14px;
        box-shadow: 0 6px 18px rgba(0, 119, 255, 0.15);
        border: 1px solid #e0e0e0;
        animation: fadeInUp 0.7s ease;
    }

    .edit-container h2 {
        text-align: center;
        color: #0077ff; /* homepage blue */
        margin-bottom: 25px;
        font-size: 28px;
        font-weight: bold;
    }

    label {
        display: block;
        margin-bottom: 8px;
        font-weight: 600;
        color: #0077ff;
        font-size: 15px;
    }

    input[type="text"], textarea, input[type="file"] {
        width: 100%;
        padding: 12px;
        margin-bottom: 18px;
        border: 1px solid #ccc;
        border-radius: 8px;
        background-color: #fff;
        color: #333;
        box-sizing: border-box;
        font-size: 15px;
        transition: 0.3s ease;
    }

    textarea {
        resize: vertical;
    }

    /* Hover + focus animation */
    input[type="text"]:focus, textarea:focus, input[type="file"]:focus {
        border-color: #0077ff;
        box-shadow: 0 0 8px rgba(0, 119, 255, 0.3);
        outline: none;
        transform: scale(1.02);
    }

    .current-image {
        display: block;
        margin-bottom: 20px;
        border: 2px solid #0077ff;
        border-radius: 8px;
        max-width: 100%;
        transition: transform 0.3s ease;
    }

    .current-image:hover {
        transform: scale(1.05);
    }

    .btn-update {
        background: #0077ff;
        color: #fff;
        font-weight: bold;
        border: none;
        padding: 14px 20px;
        border-radius: 8px;
        cursor: pointer;
        width: 100%;
        font-size: 16px;
        transition: 0.3s ease;
    }

    .btn-update:hover {
        background: #005fcc;
        transform: translateY(-2px);
        box-shadow: 0 4px 12px rgba(0, 119, 255, 0.3);
    }

    /* Fade-in animation */
    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="edit-container">
            <h2>Edit Project</h2>

            <asp:HiddenField ID="hfProjectId" runat="server" />

            <label>Title:</label>
            <asp:TextBox ID="txtTitle" runat="server" CssClass="input-field" /><br />

            <label>Description:</label>
            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="4" CssClass="input-field" /><br />

            <label>Project Link:</label>
            <asp:TextBox ID="txtProjectLink" runat="server" CssClass="input-field" /><br />

            <label>Current Image:</label>
            <asp:Image ID="imgCurrent" runat="server" CssClass="current-image" Width="250" /><br />

            <label>Upload New Image:</label>
            <asp:FileUpload ID="fuImage" runat="server" /><br />

            <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn-update" OnClick="btnUpdate_Click" />
        </div>
    </form>
</body>
</html>
