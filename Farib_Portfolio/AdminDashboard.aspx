<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="My_Portrfolio_86.AdminDashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="Styles/site.css" />
    <style>
        /* ===== Modern Dashboard CSS ===== */
       /* ===== Modern Dashboard CSS ===== */
/* === Dashboard Global === */
body {
    font-family: 'Poppins', 'Segoe UI', sans-serif;
    background: #0f172a; /* deep navy */
    margin: 0;
    padding: 0;
    color: #e2e8f0; /* light gray text */
}

.dashboard {
    max-width: 1100px;
    margin: 50px auto;
    padding: 25px;
    background: #1e293b; /* slightly lighter navy */
    border-radius: 16px;
    box-shadow: 0 8px 24px rgba(0,0,0,0.6);
}

.dashboard h2 {
    color: #38bdf8; /* cyan heading */
    margin-bottom: 20px;
    font-size: 30px;
    border-bottom: 2px solid #334155;
    padding-bottom: 12px;
    font-weight: 700;
}

/* === Dashboard Header === */
.dashboard-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 12px 20px;
    background: #0f172a;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.4);
}

/* Logout Button */
.logout {
    background: #ef4444; /* red */
    color: #fff;
    border: none;
    padding: 8px 18px;
    border-radius: 8px;
    cursor: pointer;
    font-weight: bold;
    font-size: 14px;
    transition: 0.3s ease;
}
.logout:hover {
    background: #dc2626;
}

/* === Sections === */
.section {
    margin-bottom: 40px;
}

.section h3 {
    color: #38bdf8;
    margin-bottom: 15px;
    font-size: 24px;
    font-weight: 600;
}

/* === Add New Button === */
.add-new {
    display: inline-block;
    margin-bottom: 15px;
    background: #38bdf8;
    color: #0f172a;
    font-weight: bold;
    padding: 8px 16px;
    border-radius: 8px;
    text-decoration: none;
    transition: 0.3s ease;
}
.add-new:hover {
    background: #fff;
    color: #000;
}

/* === Table Styles === */
table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
    background: #0f172a;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 4px 16px rgba(0,0,0,0.4);
}

th, td {
    padding: 14px 16px;
    text-align: left;
    border-bottom: 1px solid #334155;
}

th {
    background: #1e293b;
    color: #38bdf8;
    text-transform: uppercase;
    font-size: 13px;
    letter-spacing: 0.5px;
    font-weight: 600;
}

tr:hover {
    background: #1e293b;
}

/* === Links === */
a {
    color: #38bdf8;
    text-decoration: none;
    font-weight: bold;
    transition: 0.3s;
}
a:hover {
    color: #fff;
    text-decoration: underline;
}

/* === Images === */
img {
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.5);
    max-width: 100px;
    height: auto;
}

/* === Action Buttons === */
.action-buttons {
    display: flex;
    gap: 10px;
    flex-wrap: wrap;
}

.btn-edit, .btn-view {
    display: inline-block;
    padding: 6px 14px;
    border-radius: 8px;
    font-size: 14px;
    font-weight: bold;
    color: #0f172a;
    background: #38bdf8;
    text-decoration: none;
    transition: 0.3s;
}
.btn-edit:hover, .btn-view:hover {
    background: #fff;
    color: #000;
}

.btn-delete {
    display: inline-block;
    padding: 6px 14px;
    border-radius: 8px;
    font-size: 14px;
    font-weight: bold;
    color: #fff;
    background: #ef4444;
    text-decoration: none;
    transition: 0.3s;
}
.btn-delete:hover {
    background: #dc2626;
}

/* === Responsive === */
@media screen and (max-width: 768px) {
    .dashboard {
        padding: 15px;
        margin: 20px;
    }

    th, td {
        padding: 8px;
    }

    .dashboard-header {
        flex-direction: column;
        gap: 10px;
    }

    .logout {
        width: 100%;
    }
}


    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="dashboard">
           <div class="dashboard-header">
            <h2>Admin Dashboard</h2>
            <asp:Button 
                ID="btnLogout" 
                runat="server" 
                Text="Logout" 
                CssClass="logout" 
                OnClientClick="return confirm('Are you sure you want to logout?');" 
                OnClick="btnLogout_Click" />
        </div>
           <h3 style="text-align:center;">Welcome, <asp:Label ID="lblAdminUser" runat="server" CssClass="admin-user"></asp:Label> 👋</h3>

            <!-- About Section -->
            <div class="section">
                <h3>About Section</h3>
                <asp:Repeater ID="rptAbout" runat="server">
                    <HeaderTemplate>
                        <table>
                            <tr>
                                <th>Full Name</th>
                                <th>Description</th>
                                <th>Profile Image</th>
                                <th>Actions</th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("FullName") %></td>
                            <td><%# Eval("Description") %></td>
                            <td>
                                <img src='<%# ResolveUrl(Eval("ProfileImage").ToString()) %>' alt="Profile Image" />
                            </td>
                            <td>
                                <a href='EditAbout.aspx?Id=<%# Eval("Id") %>'>Edit</a>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>

            <!-- Skills Section -->
            <div class="section">
                <h3>Skills Section</h3>
                <a href="AddSkill.aspx" class="add-new">+ Add New</a>
                <asp:Repeater ID="rptSkills" runat="server">
                    <HeaderTemplate>
                        <table>
                            <tr>
                                <th>Skill Name</th>
                                <th>Percentage</th>
                                <th>Actions</th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                            <tr>
                               <td><%# Eval("SkillName") %></td>
                               <td><%# Eval("Percentage") %>%</td>
                               <td>
                                  <a class="btn-edit" href='EditSkill.aspx?Id=<%# Eval("Id") %>'>Edit</a>
                                  <a class="btn-delete" href='DeleteSkill.aspx?Id=<%# Eval("Id") %>' onclick="return confirm('Are you sure to delete?');">Delete</a>
                               </td>
                            </tr>
                   </ItemTemplate>

                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>

            <!-- Projects Section -->
            <div class="section">
                <h3>Projects Section</h3>
                <a href="AddProject.aspx" class="add-new">+ Add New</a>
                <asp:Repeater ID="rptProjects" runat="server">
                    <HeaderTemplate>
                        <table>
                            <tr>
                                <th>Title</th>
                                <th>Description</th>
                                <th>Image</th>
                                <th>Link</th>
                                <th>Actions</th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                           <td><%# Eval("Title") %></td>
                           <td><%# Eval("Description") %></td>
                           <td><img src='<%# ResolveUrl(Eval("ImageUrl").ToString()) %>' alt="Project Image" /></td>
                           <td><a href='<%# Eval("ProjectLink") %>' target="_blank" class="btn-view">View</a></td>
                        <td>
                            <div class="action-buttons">
                                <a class="btn-edit" href='EditProject.aspx?Id=<%# Eval("Id") %>'>Edit</a>
                                <a class="btn-delete" href='DeleteProject.aspx?Id=<%# Eval("Id") %>' onclick="return confirm('Are you sure to delete?');">Delete</a>
                            </div>
                        </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>

        </div>
    </form>
</body>
</html>
