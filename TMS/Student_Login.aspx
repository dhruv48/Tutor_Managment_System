<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Student_Login.aspx.cs" Inherits="TMS.Student_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/studentlogin.css" rel="stylesheet" />
    <script type="text/javascript">
        function Sucesslogin() {
            Swal.fire(
                'Success!',
                'Login- Success!',
                'success'
            )
        }
    </script>
    <script type="text/javascript">
        function ErrorLogin() {
            Swal.fire(
                'oops!',
                'UserName or Password Error!',
                ' Login has failed!',
                'Danger'
            )
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-md-flex half">
        <div class="bg" style="background-image: url('images/bg_1.jpg');"></div>
        <div class="contents">

            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-md-12">
                        <div class="form-block mx-auto">
                            <div class="text-center mb-5">
                                <h3>Deewan <strong>Student Login</strong></h3>
                            </div>
                            <form >
                                <div class="form-group first">
                                    <label for="username">Username</label>
                                    <asp:TextBox ID="nametext" runat="server" CssClass="form-control" placeholder="Enter UserName"></asp:TextBox>
                                    <%--<input type="text" class="form-control" placeholder="your-email@gmail.com" id="username">--%>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="UserName must be Required!" ControlToValidate="nametext" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group last mb-3">
                                    <label for="password">Password</label>
                                    <asp:TextBox ID="passtext" runat="server" CssClass="form-control" placeholder="Enter Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password must be Required!" ControlToValidate="passtext" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                    <%--<input type="password" class="form-control" placeholder="Your Password" id="password">--%>
                                </div>

                                <div class="d-sm-flex mb-5 align-items-center">
                                    <label class="control control--checkbox mb-3 mb-sm-0">
                                        <span class="caption">Save Credentials</span>
                                        <asp:CheckBox ID="CheckBox1" Checked="true" runat="server" />
                                        <%--<input type="checkbox" checked="checked"/>--%>
                                        <div class="control__indicator"></div>
                                    </label>
                                    <span class="ml-auto"><a href="StudentForgetpass.aspx" class="forgot-passes">Forgot Password</a></span>
                                </div>
                                <asp:Button ID="Button1" runat="server" Text="Log In" CssClass="btn btn-block py-2 btn-primary" OnClick="Button1_Click" />
                                <%--<input type="submit" value="Log In" class="btn btn-block py-2 btn-primary">--%>

                                <span class="text-center my-3 d-block">or</span>


                                <div class="">
                                    <a href="#" class="btn btn-block py-2 btn-facebook">
                                        <span class="icon-facebook mr-3"></span>Login with facebook
                                    </a>
                                    <a href="#" class="btn btn-block py-2 btn-google"><span class="icon-google mr-3"></span>Login with Google</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</asp:Content>
