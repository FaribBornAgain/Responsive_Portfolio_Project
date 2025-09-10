<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="My_Portrfolio_86.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <title>Farib's Portfolio</title>
    <link rel="stylesheet" href="Styles/site.css" />
    <style>
       /* ===== General Styles ===== */
/* ===== General Styles ===== */
body {
    margin: 0;
    font-family: 'Poppins', Arial, sans-serif;
    background: #f5f7fa; /* light background */
    color: #333;
}

/* ===== Navbar ===== */
.navbar {
    display: flex;
    justify-content: center;
    gap: 25px;
    padding: 18px 20px;
    background: rgba(255, 255, 255, 0.8);
    backdrop-filter: blur(10px); /* glass effect */
    border-bottom: 1px solid #e0e0e0;
    position: fixed;
    width: 100%;
    top: 0;
    z-index: 1000;
}

.navbar a {
    color: #0077ff;
    text-decoration: none;
    font-weight: 600;
    font-size: 15px;
    transition: 0.3s;
}

.navbar a:hover {
    color: #0056b3;
}

/* ===== Section Styling ===== */
section {
    padding: 100px 20px 60px 20px;
    text-align: center;
}

h1, h2, h3 {
    color: #0077ff;
    font-weight: 700;
    margin-bottom: 15px;
}

p {
    max-width: 750px;
    margin: 10px auto;
    line-height: 1.7;
    color: #555;
}

/* Profile Picture */
.profile-pic {
    border-radius: 50%;
    width: 280px;
    height: 280px;
    object-fit: cover;
    margin-bottom: 20px;
    border: 4px solid #0077ff;
    box-shadow: 0 6px 20px rgba(0, 119, 255, 0.2);
}

/* ===== Skills Section ===== */
#skills {
    background: #fff;
    color: #333;
    padding: 80px 20px;
    text-align: center;
    border-top: 1px solid #e0e0e0;
}

#skills h2 {
    font-size: 40px;
    color: #0077ff;
    margin-bottom: 50px;
    font-weight: bold;
    position: relative;
}

#skills h2::after {
    content: "";
    display: block;
    width: 80px;
    height: 4px;
    background: linear-gradient(90deg, #0077ff, #00c6ff);
    margin: 12px auto 0;
    border-radius: 2px;
    animation: slideLine 2s infinite alternate;
}

/* Skill Bar */
.skill-bar {
    max-width: 750px;
    margin: 30px auto;
    text-align: left;
    transition: transform 0.3s ease;
}

.skill-bar:hover {
    transform: translateY(-5px);
}

.skill-bar span {
    display: inline-block;
    font-weight: 600;
    font-size: 17px;
    margin-bottom: 6px;
    color: #444;
}

/* Progress Container */
.progress {
    width: 100%;
    background: #eaeaea;
    height: 22px;
    border-radius: 12px;
    overflow: hidden;
    position: relative;
    box-shadow: inset 0 2px 5px rgba(0,0,0,0.1);
}

/* Progress Fill Animation */
.progress-fill {
    height: 100%;
    background: linear-gradient(90deg, #0077ff, #00c6ff);
    border-radius: 12px;
    width: 0; /* Start from 0 */
    animation: fillBar 2s ease forwards;
    position: relative;
}

/* Percentage Label */
.progress-fill::after {
    content: attr(data-percentage) '%';
    position: absolute;
    right: 12px;
    top: 50%;
    transform: translateY(-50%);
    color: #fff;
    font-size: 13px;
    font-weight: bold;
    opacity: 0;
    animation: fadeIn 1s ease 1.5s forwards;
}

/* Keyframes */
@keyframes fillBar {
    from { width: 0; }
    to { width: var(--progress); }
}

@keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
}

@keyframes slideLine {
    from { transform: translateX(-20px); }
    to { transform: translateX(20px); }
}

/* ===== Projects Section ===== */
#projects {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 25px;
    margin-top: 40px;
}

#projects h2 {
    width: 100%;
    text-align: center;
    margin-bottom: 35px;
    font-size: 40px;
    color: #0077ff;
    font-weight: 700;
}

.project-card {
    background: #fff;
    padding: 20px;
    border-radius: 15px;
    width: 320px;
    text-align: center;
    box-shadow: 0 6px 25px rgba(0, 0, 0, 0.08);
    transition: transform 0.3s, box-shadow 0.3s;
}

.project-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 12px 30px rgba(0, 119, 255, 0.2);
}

.project-card img {
    width: 100%;
    height: 190px;
    object-fit: cover;
    border-radius: 10px;
    margin-bottom: 15px;
}

.project-card h3 {
    margin: 10px 0;
    font-size: 20px;
    color: #0077ff;
}

.project-card p {
    font-size: 14px;
    color: #666;
}

/* ===== Home Section ===== */
.home-section {
    height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    background: linear-gradient(to right, #eef6ff, #ffffff);
    padding: 0 20px;
}

.home-container {
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 60px;
    flex-wrap: wrap;
    text-align: left;
}

.home-pic {
    width: 320px;
    height: 320px;
    border-radius: 50%;
    object-fit: cover;
    border: 4px solid #0077ff;
    box-shadow: 0 8px 25px rgba(0, 119, 255, 0.3);
}

.subheading {
    font-size: 22px;
    color: #0077ff;
    font-weight: 500;
}

.home-right h1 {
    font-size: 50px;
    margin-bottom: 15px;
    color: #222;
}

.home-right h1 span {
    color: #0077ff;
}

#typing-animation {
    display: block;
    font-size: 24px;
    font-weight: bold;
    color: #0077ff;
    margin: 10px 0;
}

.tagline {
    font-size: 20px;
    color: #444;
    margin-bottom: 25px;
}

/* Buttons */
.btn-home {
    display: inline-block;
    margin: 10px 15px 0 0;
    padding: 12px 22px;
    border-radius: 8px;
    font-weight: 600;
    text-decoration: none;
    transition: 0.3s;
}

.btn-home.yellow {
    background: #0077ff;
    color: #fff;
}

.btn-home.yellow:hover {
    background: #0056b3;
}

.btn-home.outline {
    border: 2px solid #0077ff;
    color: #0077ff;
    background: transparent;
}

.btn-home.outline:hover {
    background: #0077ff;
    color: #fff;
}

/* ===== About Section ===== */
.about-section {
    padding: 80px 20px;
    background: #fff;
    color: #333;
}


/* ===== About Section ===== */
.about-container {
    display: flex;
    align-items: flex-start;
    justify-content: center;
    gap: 50px;
    max-width: 1100px;
    margin: 0 auto;
    flex-wrap: wrap;
    padding: 60px 20px;
}

.about-left {
    flex: 1;
    max-width: 340px;
}

.profile-pic {
    width: 100%;
    border-radius: 15px;
    box-shadow: 0 8px 25px rgba(0, 119, 255, 0.25);
    border: 4px solid #0077ff;
}

.about-right {
    flex: 2;
    min-width: 300px;
    color: #333;
}

.about-heading {
    font-size: 34px;
    color: #0077ff;
    margin-bottom: 20px;
    font-weight: 700;
}

.about-right h1 {
    font-size: 26px;
    margin-bottom: 15px;
    color: #222;
}

.about-right p {
    font-size: 16px;
    line-height: 1.7;
    color: #555;
}

.about-info {
    margin-top: 25px;
}

.about-info p {
    font-size: 15px;
    margin-bottom: 12px;
    color: #444;
}

.about-info .title-s {
    font-weight: 600;
    display: inline-block;
    width: 120px;
    color: #0077ff;
}

/* Admin Edit Button */
.add-new {
    display: inline-block;
    margin-top: 15px;
    padding: 8px 16px;
    background: #0077ff;
    color: #fff;
    border-radius: 6px;
    text-decoration: none;
    font-size: 14px;
    font-weight: 600;
    transition: 0.3s ease;
}

.add-new:hover {
    background: #0056b3;
    color: #fff;
}

/* Responsive */
@media (max-width: 768px) {
    .about-container {
        flex-direction: column;
        text-align: center;
    }

    .about-left {
        max-width: 250px;
        margin: 0 auto 20px auto;
    }

    .about-info .title-s {
        width: auto;
        display: inline;
    }
}

/* ===== Projects Button ===== */
.project-card a {
    display: inline-block;
    margin-top: 12px;
    background: #0077ff;
    color: #fff;
    padding: 7px 16px;
    border-radius: 6px;
    font-weight: 600;
    text-decoration: none;
    transition: 0.3s;
}

.project-card a:hover {
    background: #0056b3;
}

/* ===== Resume Section ===== */
.resume-section {
    background: #f9fbff;
    color: #333;
    padding: 100px 20px;
    position: relative;
    overflow: hidden;
}

/* Heading */
.resume-heading {
    text-align: center;
    margin-bottom: 60px;
    animation: fadeInDown 1s ease;
}

.resume-big {
    font-size: 42px;
    color: #0077ff;
    font-weight: 700;
    letter-spacing: 1px;
}

/* Resume Grid */
.resume-row {
    display: flex;
    flex-wrap: wrap;
    gap: 30px;
    margin-bottom: 50px;
    justify-content: center;
}

/* Card */
.resume-item {
    background: #fff;
    flex: 1 1 45%;
    padding: 25px 22px;
    border-radius: 12px;
    box-shadow: 0 6px 20px rgba(0, 119, 255, 0.1);
    transition: transform 0.4s ease, box-shadow 0.4s ease;
    opacity: 0;
    transform: translateY(60px) scale(0.95);
}

/* When visible */
.resume-item.show {
    opacity: 1;
    transform: translateY(0) scale(1);
    transition: all 0.6s ease-out;
}

/* Hover pop-up */
.resume-item:hover {
    transform: scale(1.07);
    box-shadow: 0 12px 40px rgba(0, 119, 255, 0.3);
}

/* Button */
.btn-resume {
    display: inline-block;
    background: linear-gradient(90deg, #0077ff, #00c6ff);
    color: #fff;
    font-weight: 600;
    padding: 12px 28px;
    border-radius: 30px;
    text-decoration: none;
    transition: all 0.4s ease;
}

.btn-resume:hover {
    background: linear-gradient(90deg, #0056b3, #0077ff);
    transform: scale(1.08);
    box-shadow: 0 10px 30px rgba(0, 119, 255, 0.4);
}

/* Animations */
@keyframes fadeInDown {
    from { opacity: 0; transform: translateY(-30px); }
    to { opacity: 1; transform: translateY(0); }
}

/* Responsive */
@media (max-width: 768px) {
    .resume-row { flex-direction: column; }
    .resume-item { flex: 1 1 100%; }
    .resume-big { font-size: 30px; }
}
/* Responsive */
@media (max-width: 768px) {
    .resume-row {
        flex-direction: column;
    }

    .resume-item {
        flex: 1 1 100%;
    }

    .resume-big {
        font-size: 30px;
    }
}

/* Responsive */
@media (max-width: 768px) {
    .resume-row {
        flex-direction: column;
    }

    .resume-item {
        flex: 1 1 100%;
    }

    .resume-big {
        font-size: 28px;
    }

    .resume-title {
        font-size: 22px;
    }
}

/* ===== Contact Section ===== */
.contact-section {
  background: #fff;
  color: #333;
  text-align: center;
  padding: 70px 20px;
}

.section-heading {
  font-size: 36px;
  color: #0077ff;
  margin-bottom: 25px;
  font-weight: 700;
}

.contact-cards {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 25px;
  margin: 35px 0;
}

.contact-card {
  background: #f5f8ff;
  padding: 25px;
  border-radius: 12px;
  width: 220px;
  color: #333;
  box-shadow: 0 4px 20px rgba(0, 119, 255, 0.1);
  transition: transform 0.3s, box-shadow 0.3s;
}

.contact-card:hover {
  transform: translateY(-6px);
  box-shadow: 0 8px 30px rgba(0, 119, 255, 0.2);
}

.contact-card h3 {
  color: #0077ff;
  margin-bottom: 12px;
}

.contact-card a {
  color: #0077ff;
  text-decoration: none;
  font-weight: 600;
}

.contact-card a:hover {
  color: #0056b3;
}

.contact-btn {
  margin: 25px 0;
}

.btn-resume {
  background: #0077ff;
  color: #fff;
  padding: 12px 28px;
  border-radius: 8px;
  text-decoration: none;
  font-weight: 600;
  transition: 0.3s;
}

.btn-resume:hover {
  background: #0056b3;
}

.social-links {
  display: flex;
  justify-content: center;
  gap: 18px;
  list-style: none;
  padding: 0;
  margin-top: 25px;
}

.social-links li a {
  color: #0077ff;
  font-size: 20px;
  transition: 0.3s;
}

.social-links li a:hover {
  color: #0056b3;
}

/* ===== Footer ===== */
.footer-section {
  background: #f0f3f9;
  color: #444;
  text-align: center;
  padding: 20px;
  font-size: 14px;
}

.footer-section .icon-heart {
  color: #ff4d4d;
}

/* ===== Responsive ===== */
@media screen and (max-width: 768px) {
    section {
        padding: 70px 15px 40px 15px;
    }

    .project-card {
        width: 90%;
    }

    .skill-bar {
        width: 90%;
    }

    .navbar {
        flex-direction: column;
        gap: 10px;
    }
    /* Smooth scroll */
html {
  scroll-behavior: smooth;
}

.navbar a {
    color: #333;
    text-decoration: none;
    padding: 10px 15px;
    transition: 0.3s;
}

.navbar a:hover {
    color: #0077ff;
}

.navbar a.active {
    color: #0077ff; /* blue for selected section */
    font-weight: bold;
    border-bottom: 2px solid #0077ff; /* optional underline */
}

html {
  scroll-behavior: smooth;
}


}


    </style>
</head>
<body>
    <form id="form1" runat="server">

        <!-- Navbar -->
        <nav class="navbar">
            <a href="#home">Home</a>
            <a href="#about">About</a>
            <a href="#resume">Resume</a>
            <a href="#skills">Skills</a>
            <a href="#projects">Projects</a>
            <a href="#contact">Contact</a>
            <a href="AdminLogin.aspx">Login</a>
        </nav>

        <!-- Home Section -->
<!-- Home Section -->
<section id="home" class="home-section">
  <div class="home-container">
    
    <!-- Text + Animation (Now on the left) -->
    <div class="home-right">
      <span class="subheading">Hello, I'm Yours</span>
      <h1 class="mb-4 mt-3">I'm <span>Sadid Siddique Farib</span></h1>

      <!-- Typing Animation -->
      <span id="typing-animation"></span>

      <h2 class="tagline">Web developer in training, Ctrl+C / Ctrl+V specialist.</h2>

      <!-- Buttons -->
      <p>
        <a href="#projects" target="_blank" class="btn-home yellow">View My Work</a>
        <a href="#contact" target="_blank" class="btn-home outline">Get in Touch</a>
      </p>
    </div>

    <!-- Profile Image (Now on the right) -->
    <div class="home-left">
      <img src="Uploads/ProfilePhoto.jpg" alt="Sadid Siddique Farib" class="home-pic">
    </div>

  </div>
</section>


<!-- Typing Animation Script -->
<script>
    const typingAnimationElement = document.getElementById('typing-animation');

    const typingTexts = ['Student  ', 'Developer  ', 'Programmer   '];

    function playTypingAnimation(text) {
        for (let i = 0; i < text.length; i++) {
            setTimeout(() => {
                typingAnimationElement.textContent += text[i];
            }, i * 200);
        }

        setTimeout(() => {
            typingAnimationElement.textContent = '';
            playTypingAnimation(typingTexts[(typingTexts.indexOf(text) + 1) % typingTexts.length]);
        }, text.length * 200);
    }

    playTypingAnimation(typingTexts[0]);
</script>


        <!-- About Section -->
<section id="about" class="about-section">
    <div class="about-container">
        <!-- Left Side: Profile Image -->
        <div class="about-left">
            <asp:Image ID="imgProfile" runat="server" CssClass="profile-pic" />
        </div>

        <!-- Right Side: Text & Info -->
        <div class="about-right">
            <h2 class="about-heading">About Me</h2>

           
            <p><asp:Label ID="lblDescription" runat="server" /></p>

            <!-- About Info -->
            <div class="about-info">
                <p><span class="title-s">Name: </span> <strong>Sadid Siddique Farib</strong></p>
                <p><span class="title-s">Job Role: </span> <strong>Student of CSE</strong></p>
                <p><span class="title-s">Experience: </span> <strong>In 3rd year</strong></p>
                <p><span class="title-s">Address: </span> <strong>Khulna, Bangladesh</strong></p>
            </div>

            <%-- Admin Controls for About --%>
            <asp:Panel ID="pnlAdminAbout" runat="server" Visible="false">
                <a href="EditAbout.aspx?Id=<%# Eval("Id") %>" class="add-new">Edit About</a>
            </asp:Panel>
        </div>
    </div>
</section>


        <!-- Resume Section -->
<section id="resume" class="resume-section">
    <div class="container">
        <!-- Heading -->
        <div class="resume-heading text-center">
            <h1 class="resume-big">My Resume</h1>
            <h2 class="resume-title">Resume</h2>
            <p>"After spending a few years without clear direction, I’ve gained clarity and now dedicate myself to building meaningful skills for the future. My past may not reflect my potential, but my present is defined by resilience, self-discovery and relentless learning. I believe it’s never too late to start and I’m committed to turning missed opportunities into strengths. This portfolio will not be just a collection of work, but a testament to growth, transformation and the passion I will bring to every step forward."</p>
        </div>

        <!-- Experience -->
        <div class="resume-row">
            <div class="resume-item">
                <span class="date">2024-Present</span>
<h3>Full-Stack Web Developer</h3>
<span class="position">Freelance / Personal Projects</span>
<ul>
    <li>Developed responsive web applications using ASP.NET, C#, and SQL Server.</li>
    <li>Created dynamic UIs with HTML, CSS, JavaScript, and modern frameworks.</li>
    <li>Implemented secure authentication and role-based access control.</li>
    <li>Deployed projects on cloud platforms (Azure/GitHub Pages).</li>
</ul>

            </div>

            <div class="resume-item">
                <h3>Android Developer</h3>
<span class="position">CSE 2200</span>
<ul>
    <li>Built Android applications using Java and Kotlin with Android Studio.</li>
    <li>Designed user-friendly interfaces following Material Design principles.</li>
    <li>Integrated RESTful APIs and local SQLite databases for data management.</li>
    <li>Tested and debugged apps across multiple Android devices and emulators.</li>
</ul>

            </div>
        </div>

        <!-- Education -->
        <div class="resume-row">
            <div class="resume-item">
                <span class="date">2023-Present</span>
                <h3>B.Sc. in Computer Science & Engineering</h3>
                <span class="position">KUET</span>
                <p>Grade: First class distinction.</p>
            </div>

            <div class="resume-item">
                <span class="date">2019-2021</span>
                <h3>HSC in Science</h3>
                <span class="position">Bagerhat Govt. P. C. College, Bagerhat</span>
                <p>Grade: A+ (GPA 5.00/5.00)</p>
            </div>
        </div>

        <!-- Download CV Button -->
        <div class="resume-download text-center">
            <a href="#" class="btn-resume">Download CV</a>
        </div>
    </div>
</section>


        <!-- Skills Section -->
        <section id="skills">
            <h2>Skills</h2>
            <asp:Repeater ID="rptSkills" runat="server">
                <HeaderTemplate>
                    <div>
                        <%-- Admin Add Button --%>
                        <asp:Panel ID="pnlAdminSkills" runat="server" Visible="false">
                            <a href="AddSkill.aspx" class="add-new">+ Add New Skill</a>
                        </asp:Panel>
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <div class="skill-bar">
                        <span><%# Eval("SkillName") %></span>
                        <div class="progress">
                            <div class="progress-fill" style="width:<%# Eval("Percentage") %>%;" data-percentage='<%# Eval("Percentage") %>'></div>
                        </div>

                        <%-- Admin Edit/Delete Buttons --%>
                        <asp:Panel ID="pnlAdminSkillButtons" runat="server" Visible="false">
                            <a href='EditSkill.aspx?Id=<%# Eval("Id") %>'>Edit</a> |
                            <a href='DeleteSkill.aspx?Id=<%# Eval("Id") %>' onclick="return confirm('Are you sure?');">Delete</a>
                        </asp:Panel>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>

        <!-- Projects Section -->
        <section id="projects">
            <h2>Projects</h2>
            <%-- Admin Add Button --%>
            <asp:Panel ID="pnlAdminProjectsAdd" runat="server" Visible="false">
                <a href="AddProject.aspx" class="add-new">+ Add New Project</a>
            </asp:Panel>

            <asp:Repeater ID="rptProjects" runat="server">
                <ItemTemplate>
                    <div class="project-card">
                       <img src='<%# ResolveUrl(Eval("ImageUrl").ToString()) %>' alt='<%# Eval("Title") %>' />
                        <h3><%# Eval("Title") %></h3>
                        <p><%# Eval("Description") %></p>
                        <a href='<%# Eval("ProjectLink") %>' target="_blank">View Project</a>

                        <%-- Admin Edit/Delete Buttons --%>
                        <asp:Panel ID="pnlAdminProjectButtons" runat="server" Visible="false">
                            <a href='EditProject.aspx?Id=<%# Eval("Id") %>'>Edit</a> |
                            <a href='DeleteProject.aspx?Id=<%# Eval("Id") %>' onclick="return confirm('Are you sure?');">Delete</a>
                        </asp:Panel>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </section>

        <!-- Contact Section -->
<section id="contact" class="contact-section">
  <div class="container">
    <h1 class="section-heading">Contact Me</h1>
    <p>Reach out via the following methods:</p>

    <div class="contact-cards">
      <div class="contact-card">
        <h3>Address</h3>
        <p>Bagerhat, Bangladesh</p>
      </div>
      <div class="contact-card">
        <h3>Phone</h3>
        <p><a href="tel://0101010101">+880 1903258566</a></p>
      </div>
      <div class="contact-card">
        <h3>Email</h3>
        <p><a href="mailto:farib2107094@stud.kuet.ac.bd">farib2107094@stud.kuet.ac.bd</a></p>
      </div>
      <div class="contact-card">
        <h3>Resume</h3>
        <p><a href="#">Download CV</a></p>
      </div>
    </div>

   <div class="contact-btn">
      <a href="mailto:farib2107094@stud.kuet.ac.bd" class="btn-resume">Email Me</a>
   </div>


   <!-- Social links -->
<ul class="social-links">
    <li class="normal-txt">Find me on</li>
    <li><a href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin"></i></a></li>
    <li><a href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
    <li><a href="https://www.youtube.com/" target="_blank"><i class="fab fa-youtube"></i></a></li>
    <li><a href="mailto:farib2107094@stud.kuet.ac.bd"><i class="fas fa-envelope"></i></a></li>
</ul>

  </div>
</section>

<!-- Footer -->
<footer class="footer-section">
  <p>&copy; <script>document.write(new Date().getFullYear());</script> All rights reserved | Made with <i class="icon-heart"></i> by Farib</p>
</footer>
        s

    </form>
    <script>
        const resumeItems = document.querySelectorAll(".resume-item");

        const observer = new IntersectionObserver(entries => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.classList.add("show");
                    observer.unobserve(entry.target); // animate once
                }
            });
        }, { threshold: 0.2 });

        resumeItems.forEach(item => {
            observer.observe(item);
        });
    </script>


</body>
</html>