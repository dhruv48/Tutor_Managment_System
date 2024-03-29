﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Login.aspx.cs" Inherits="TMS.Admin.Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="~Admin/Admin_Login/images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="~Admin/Admin_Login/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="~/Admin/Admin_Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="~/Admin/Admin_Login/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="~/Admin/Admin_Login/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="~/Admin/Admin_Login/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link href="css/util.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
    <link href="../dist/sweetalert2.min.css" rel="stylesheet" />
    <script src="../dist/sweetalert2.min.js"></script>
    <!--===============================================================================================-->
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="limiter">
                <div class="container-login100">
                    <div class="wrap-login100">
                        <div class="login100-pic js-tilt" data-tilt>
                            <img src="images/img-01.png" />
                        </div>

                        <%--<form class="login100-form validate-form">--%>
                        <span class="login100-form-title">Admin Login
					
                        </span>

                        <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                            <asp:TextBox ID="usernametext" Class="input100" placeholder="Username" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ErrorMessage="UserName is Required" Display="Dynamic"
                                ControlToValidate="usernametext" Enabled="True" Font-Strikeout="False"
                                SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <%--<input class="input100" type="text" name="email" placeholder="Email">--%>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                            </span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate="Password is required">
                            <asp:TextBox ID="passtext" Class="input100" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                            <%--<input class="input100" type="password" name="pass" placeholder="Password">--%>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ErrorMessage="UserName is Required" Display="Dynamic"
                                ControlToValidate="Passtext" Enabled="True" Font-Strikeout="False"
                                SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <span class="focus-input100"></span>
                            <span class="symbol-input100">
                                <i class="fa fa-lock" aria-hidden="true"></i>
                            </span>
                        </div>

                        <div class="container-login100-form-btn">
                            <asp:Button ID="loginsubbtn" Class="login100-form-btn" runat="server"
                                Text="Sumbit" OnClick="loginsubbtn_Click" />
                            <%--<button class="login100-form-btn">
							Login</button>--%>
                        </div>

                        <div class="text-center p-t-12">
                            <span class="txt1">Forgot
                            </span>
                            <a class="txt2" href="#">Username / Password?
                            </a>
                        </div>

                        <div class="text-center p-t-136">
                            <a class="txt2" href="#">Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                            </a>
                        </div>
                        <%--</form>--%>
                    </div>
                </div>
            </div>




            <!--===============================================================================================-->
            <script src="~/Admin/Admin_Login/vendor/jquery/jquery-3.2.1.min.js"></script>
            <!--===============================================================================================-->
            <script src="~/Admin/Admin_Login/vendor/bootstrap/js/popper.js"></script>
            <script src="~/Admin/Admin_Login/vendor/bootstrap/js/bootstrap.min.js"></script>
            <!--===============================================================================================-->
            <script src="~/Admin/Admin_Login/vendor/select2/select2.min.js"></script>
            <!--===============================================================================================-->
            <script src="~/Admin/Admin_Login/vendor/tilt/tilt.jquery.min.js"></script>
            <script>
                $('.js-tilt').tilt({
                    scale: 1.1
                })
            </script>
            <!--===============================================================================================-->
            <script src="~/Admin/Admin_Login/js/main.js"></script>

        </div>
    </form>
</body>
</html>
