<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Rathod.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta charset="utf-8" />
    <title>Welcome to the omkarrathod.com</title>
    <link href="CSS/Home.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
<!-- style  -->    
<style>
.contact{
    background:#111;
}
.formBx {
    min-width: 60%;
    display:flex;
    flex-direction:column;
}
.formBx h3{
    color:#fff;
    font-size:20px;
    font-weight:500;
    margin-bottom:10px;
}
.contactInfo h3{
    color:#fff;
    font-size:20px;
    font-weight:500;
    margin-bottom:10px;
}
.formBx input{
    margin-bottom:20px;
    padding:15px;
    font-size:16px;
    border:none;
    outline:none;
    background:#222;
    color:#fff;
    resize:none;
}
.formBx textarea{
    margin-bottom:20px;
    padding:15px;
    font-size:16px;
    border:none;
    outline:none;
    background:#222;
    color:#fff;
    resize:none;
    min-height:200px;
}
.formBx input::placeholder,.formBx textarea::placeholder{
    color:#999;
}
.formBx input[type="submit"]{
    max-width:150px;
    background:#2196f3;
    cursor:pointer;
    text-transform:uppercase;
    letter-spacing:2px;
}
.contactInfo{
    min-width:40%;
}
.contactInfoBx{
    position:relative;
}
.contactInfoBx .box{
    position:relative;
    padding:20px 0;
    display:flex;
}

.contactInfoBx .box .icon{
    min-width:40px;
    padding-top:4px;
    color:#fff;
    display:flex;
    justify-content:center;
    align-items:flex-start;
    font-size:24px;
}
.contactInfoBx .box .text{
    display:flex;
    margin-left:20px;
    font-size:16px;
    color:#fff;
    flex-direction:column;
    font-weight:300;
}
.contactInfoBx .box .text h3{
    font-weight:500;
    color:crimson;
    margin-bottom:0;
}
.contactInfoBx .box .text p a{
    text-decoration:none;
    color:#fff;
}
.copyright{
    background:#000;
    color:crimson;
    text-align:center;
    padding:10px;
}
/*Responsive*/
@media(max-width:991px){
    header,header.sticky{
        padding:20px 50px;
        z-index:100;
    }
    .menu{
        position:fixed;
        top:75px;
        left:-100%;
        display:block;
        padding:100px 50px;
        text-align:center;
        width:100%;
        height:100vh;
        background:#fff;
        transition:0.5s;
        z-index:99;
        border-top:1px solid rgba(0,0,0,0.2);
    }
    .menu.active{
        left:0;
    }
    header ul li a{
        color:#111;
        font-size:24px;
        margin:10px;
    }
    .toggle{
        width:40px;
        height:40px;
        background:url("Images/menu.png");
        background-position:center;
        background-repeat:no-repeat;
        background-size:30px;
        cursor:pointer;
    }
    .toggle.active{
        background:url("Images/close.png");
        background-position:center;
        background-repeat:no-repeat;
        background-size:25px;
        cursor:pointer;
    }
    header.sticky .toggle{
        filter:invert(1);
    }
    section{
        padding:100px 50px;
    }
    .banner{
        padding:150px 50px 100px;
    }
    .banner h2{
        font-size:1.5em;
    }
    .banner h3{
        font-size:1em;
    }
    .btn{
        margin-top:10px;
        padding:10px 20px;
        font-size:16px;
    }
    .heading h2{
        font-size:24px;
    }
    .contentBx h3{
        font-size:20px;
        margin-bottom:10px;
    }
    .content{
        flex-direction:column;
    }
    .w50{
        margin-bottom:20px;
    }
    .services .content .servicesBx{
        margin:10px;
    }
    .work .content .workBx{
        width:100%;
        padding:10px;
    }
    .testimonial .content .testimonialBx{
        max-width:calc(100% - 20px);
        padding:40px 20px;
        margin:10px;
        background:#fff;
    }
    .testimonial .content .testimonialBx h3{
        margin-top:20px;
    }
    .contactInfo{
        margin:20px 0;
    }
    .technology{
        padding:50px;
        justify-content:center;
        flex-direction:column;
    }
    .technology .imgBx{
        margin-top:40px;
        max-width:350px;
    }
}
@media(max-width:600px){
    header,header.sticky{
        padding:20px 20px;
    }
    .banner{
        padding:150px 20px 100px;
    }
    section{
        padding:100px 20px;
    }

}
        </style>
        <!--- NV bar --->
        <header>
            <a href="Home.aspx" class="logo">Omkar Rathod</a>
            <div class="toggle" onclick="togglemenu()"></div>
            <ul class="menu">
                <li><a href="#home" onclick="togglemenu()">Home</a></li>
                <li><a href="#about" onclick="togglemenu()">About</a></li>
                <li><a href="#services" onclick="togglemenu()">Services</a></li>
                <li><a href="#work" onclick="togglemenu()">work</a></li>
                <li><a href="#technology" onclick="togglemenu()">technology</a></li>
                <li><a href="#contact" onclick="togglemenu()">contacts</a></li>
            </ul>
        </header>
        <!-- Banner-->
        <section class="banner" id="home">
            <div class="textBx">
                <h2>Hello I'm <span>Omkar Rathod</span></h2>
                <h3>I'm a game developer.</h3>
                <a href="PDF/Omkar's Resume.pdf" class="btn" target="_blank">Resume</a>
            </div>
        </section>
        <!-- About -->
        <section class="about" id="about">
            <div class="heading">
                <h2>About Me</h2>
            </div>
            <div class="content">
                <div class="contentBx w50">
                    <h3>What I Think</h3>
                    <p>If you believe you can, you will succeed. Self-belief doesn’t come naturally to everyone,
                        so if you’re able to tell yourself that you can achieve the goals in your plans, you’re doing great. <br><br> I mostly use Unity 3d as a primary game engine in Windows PC. 
                        I have done web and desktop development along with game development. 
                        I love learning new things, tools and software, don’t know when to work.</p>
                </div>
                <div class="w50">
                    <img src="Images/img1.jpg" class="img"/>
                </div>
            </div>
        </section>
        <!-- Services -->
        <section class="services" id="services">
            <div class="heading white">
                <h2>Our services</h2>
                <p> 
                    I provide some of these services.
                </p>
            </div>
            <div class="content">
                <div class="servicesBx">
                    <img src="Images/icon1.png" />
                    <h2>Web Design & Development</h2>
                    <p> I mostly prefer ASP.NET for Web development. I can also use HTML,CSS and javascript for development.
                        Now I'm learn ASP.NET MVC.
                    </p>
                </div>
                <div class="servicesBx">
                    <img src="Images/icon6.png" />
                    <h2>Game Development</h2>
                    <p>For game development, I use Unityscript and Unity 3D game engine.
                        I am currently studing Unet and different networking.</p>
                </div>
                <div class="servicesBx">
                    <img src="Images/icon2.png" />
                    <h2>Desktop Application</h2>
                    <p>I use mostly C# for desktop application development. As well as java
                        and python also use.
                    </p>
                </div>
                <div class="servicesBx">
                    <img src="Images/icon3.png" />
                    <h2>Android Application</h2>
                    <p> For mobile application I use Android Studio (Java). </p>
                </div>
                <div class="servicesBx">
                    <img src="Images/icon5.png" />
                    <h2>Case Study</h2>
                    <p>a process or record of research into the development of a particular person, group, 
                        or situation over a period of time.
                    </p>
                </div>
                
            </div>
        </section>
        <!-- Work -->
        <section class="work" id="work">
            <div class="heading">
                <h2>work</h2>
                <p>This is some of my work.</p>
            </div>
            <div class="content">
                <div class="workBx">
                    <img src="Images/product1.png" />
                </div>
                <div class="workBx">
                    <img src="Images/product2.jpg" />
                </div>
                <div class="workBx">
                    <img src="Images/product3.jpg" />
                </div>
                <div class="workBx">
                    <img src="Images/product4.png" />
                </div>
            </div>
            <div class="heading">
                <a href="#" class="btn">View More</a>
            </div>
        </section>
        <!-- testimonial 
        <section class="testimonial" id="testimonal">
            <div class="heading">
                <h2>Testimonial</h2>
                <p>yart pindi na jhugbwjhefbjhg hweiufguy wejhb uwef ui.</p>
            </div>
            <div class="content">
                <div class="testimonialBx">
                    <p>uyghwefgwuyed  ugqwegrdgwyqgi uygqgwyfgtgewigf ygqaqu giqgig geqwigd iguig qigiqb bqwy gdygqibdwbdyq giqvbd biyqgfigd iuqfgduyqfg duqvwjh.</p>
                    <h3>Someone Famous<br><span>Gamer</span></h3>
                </div>
                <div class="testimonialBx">
                    <p>uyghwefgwuyed  ugqwegrdgwyqgi uygqgwyfgtgewigf ygqaqu giqgig geqwigd iguig qigiqb bqwy gdygqibdwbdyq giqvbd biyqgfigd iuqfgduyqfg duqvwjh.</p>
                    <h3>Someone Famous<br><span>Gamer & Streamer</span></h3>
                </div>
            </div>
        </section> -->
        <!-- Technology -->
        <style>
            .technology{
                background:#BE1FCE;
                width:100%;
                padding:100px;
                display:flex;
                justify-content:space-between;
                align-items:center;
            }
            .technology .contentBx{
                max-width:800px;
            }
            .technology .imgBx{
                max-width:250px;
            }
            .technology .imgBx img{
                max-width:100%;
            }
            .technology .contentBx p{
                color:#fff;
            }
            .technology .contentBx h2{
                font-size:1.7em;
                color:#088500;
            }
        </style>
        <section class="technology" id="technology">
            <div class="contentBx">
                <h2 class="heading">I use cutting edge technology</h2>
                <p><b>Technology</b>, the application of scientific knowledge to the practical
                    aims of human life or, as it sometimes phrased,to the change and
                    manipulation of the human environment.<br><br> I use new technologies such as 
                    Google Cardboard,Google Daydream, Virtual Reality(VR) and many more.
                </p>
            </div>
            <div class="imgBx">
                <img src="Images/tech.png" />
            </div>
        </section>
        <!-- Contact -->
        <section class="contact" id="contact">
            <div class="heading white">
                <h2>Contact Us</h2>
                <p>If you have any suggestions and work for me, then type it in message box. I will contact you<br><br>Thank You!</p>
            </div>
            <div class="content">
                <div class="contactInfo">
                    <h3>Contact Info</h3>
                    <div class="contactInfoBx">
                        <div class="box">
                            <div class="icon">
                                <i class="fa fa-map-marker"></i>
                            </div>
                            <div class="text">
                                <h3>Meet me</h3>
                                <p>sudhakar nagar road,<br>satara parishar, Aurangabad,<br>431001</p>
                            </div>
                        </div>
                        <div class="box">
                            <div class="icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="text">
                                <h3>Call me</h3>
                                <p>+91 8329364174</p>
                            </div>
                        </div>
                        <div class="box">
                            <div class="icon">
                                <i class="fa fa-envelope-o"></i>
                            </div>
                            <div class="text">
                                <h3>Email</h3>
                                <p>omkar@omkarrathod.com</p>
                            </div>
                        </div>
                        <div class="box">
                            <div class="icon">
                                <i class="fa fa-linkedin"></i>
                            </div>
                            <div class="text">
                                <h3>Connet on</h3>
                                <p><a href="https://www.linkedin.com/in/omkar-rathod-41a3591b8/" target="_blank">Omkar Rathod</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="formBx">
                        <h3>Message Me</h3>
                        <asp:TextBox ID="NameBox" runat="server" placeholder="Full name"></asp:TextBox>
                        <asp:TextBox ID="EmailBox" runat="server" placeholder="Email"></asp:TextBox>
                        <asp:TextBox ID="MgsBox" runat="server" placeholder="Your Message" TextMode="MultiLine"></asp:TextBox>
                        <asp:Button ID="submit" runat="server" Text="Send" />
                </div>
            </div>
        </section>
        <!-- Copyright -->
        <div class="copyright">
            <p>Copyright @ 2020 OMKAR RATHOD. all Right Reserved.</p>
        </div>
        <!-- JavaScript -->
        <script type="text/javascript">
            window.addEventListener('scroll', function () {
                var header = document.querySelector('header');
                header.classList.toggle('sticky', window.scrollY > 0);
            });
            function togglemenu() {
                var menuToggle = document.querySelector('.toggle');
                var menu = document.querySelector('.menu');
                menuToggle.classList.toggle('active')
                menu.classList.toggle('active')
            }
        </script>
    </form>
</body>
</html>
