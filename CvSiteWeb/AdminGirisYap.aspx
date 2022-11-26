<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminGirisYap.aspx.cs" Inherits="CvSiteWeb.AdminGirisYap" %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<head>
    <title>GİRİŞ YAP</title>
    <!--Made with love by Mutiullah Samim -->

    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <!--Custom styles-->
    <link href="AdminGiris.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            position: relative;
            display: flex;
            -ms-flex-direction: column;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-clip: border-box;
            border-radius: .25rem;
            height: 415px;
            width: 500px;
            left: 0px;
            top: 0px;
            margin-top: auto;
            margin-bottom: auto;
            background-color: rgba(0, 0, 0, 0.5);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="d-flex justify-content-center h-100">
            <div class="auto-style1">
                <div class="card-header">
                    <div class="social-icons">
                        <h2>
                            <a href="https://www.linkedin.com/in/altuntasahmet/">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                            <a href="https://github.com/ahmetaltuntas70">
                                <i class="fab fa-github"></i>
                            </a>
                            <a href="https://www.instagram.com/ahmetf.altntas/">
                                <i class="fab fa-instagram"></i>
                            </a>
                        </h2>
                    </div>
                    <h3>OTURUM AÇINIZ</h3>
                    
                </div>
                <div class="card-body">
                    <form runat="server">
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Kullanıcı Adınız/Username"></asp:TextBox>
                            <%--<input type="text" class="form-control" placeholder="username">--%>
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Şifre/Password" TextMode="Password"></asp:TextBox>

                            <%--						<input type="password" class="form-control" placeholder="password">--%>
                        </div>
                        <div class="row align-items-center remember">
                            <input type="checkbox">BENİ HATIRLA
				
                        </div>
                        <div class="form-group">
                            <asp:Button ID="Button1" runat="server" Text="GİRİŞ YAP/LOGİN" CssClass="btn float-right login_btn" Width="163px" OnClick="Button1_Click" />
                            <%--                            <input type="submit" value="Login" class="btn float-right login_btn">--%>
                        </div>
                    </form>
                </div>
                <div class="card-footer">
                    <div class="d-flex justify-content-center links">
                        Hesabın var mı?<a href="#">Kayıt Ol</a>
                    </div>
                    <div class="d-flex justify-content-center">
                        <a href="#">Şifremi Unuttum?</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
