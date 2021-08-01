<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="studentupdatepass.aspx.cs" Inherits="TMS.studentupdatepass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Style/studentlogin.css" rel="stylesheet" />
     <script type="text/javascript">
         function Successlogin() {
             Swal.fire(
                 'Success!',
                 'Password Updated Success!',
                 'success'
             )
         }
     </script>
     <script type="text/javascript">
        function ErrorLogin() 
        {
            Swal.fire(
                'oops!',
                'Reset Password Error!',
                     ' Password Set has failed!',
                     'Danger'
                 )
        }
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>


             <div class="d-md-flex half">
    <div class="bg" style="background-image: url('images/bg_1.jpg');"></div>
    <div class="contents">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-12">
            <div class="form-block mx-auto">
              <div class="text-center mb-5">
                <h3>Deewan <strong>Reset Password</strong></h3>
              </div>
              <form action="#" method="post">
                <div class="form-group first">

                     <label for="password">Enter OTP(sent on your registered EmialID)</label>
                     <asp:TextBox ID="otptext" runat="server" CssClass="form-control" placeholder="Enter OTP"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="OTP  must be Required!" ControlToValidate="otptext" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                  



                  <label for="username">password</label>
                    <asp:TextBox ID="passtext" runat="server" CssClass="form-control" placeholder="Enter New Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password must be Required!" ControlToValidate="passtext" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                  <%--<input type="text" class="form-control" placeholder="your-email@gmail.com" id="username">--%>
                </div>
                <div class="form-group last mb-3">
                    
                    <label for="password">Confirm Password</label>
                     <asp:TextBox ID="passtextcon" runat="server" CssClass="form-control" placeholder="Enter Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Re-enterpassword must be Required!" ControlToValidate="passtextcon" Display="Dynamic" ForeColor="Red" SetFocusOnError="true"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ErrorMessage="Password Must be Match!" ControlToCompare="passtext" 
                        ControlToValidate="passtextcon" Display="Dynamic" ForeColor="Red" 
                        SetFocusOnError="True"></asp:CompareValidator>
                  <%--<input type="password" class="form-control" placeholder="Your Password" id="password">--%>
                </div>
                
                <div class="d-sm-flex mb-5 align-items-center">
                 <%-- <label class="control control--checkbox mb-3 mb-sm-0"><span class="caption">Save Credentials</span>
                      <asp:CheckBox ID="CheckBox" Checked="true" runat="server" />--%>
                    <%--<input type="checkbox" checked="checked"/>--%>
                    <div class="control__indicator"></div>
                  </label>
                  <%--<span class="ml-auto"><a href="StudentForgetpass.aspx" class="forgot-pass">Forgot Password</a></span> --%>
                </div>
                  <asp:Button ID="Button1" runat="server" Text="Update Password" CssClass="btn btn-block py-2 btn-primary" OnClick="Button1_Click"/>
                <%--<input type="submit" value="Log In" class="btn btn-block py-2 btn-primary">--%>

                <span class="text-center my-3 d-block">or</span>
                
                
                <div class="">
                <a href="#" class="btn btn-block py-2 btn-facebook">
                  <span class="icon-facebook mr-3"></span> Login with facebook
                </a>
                <a href="#" class="btn btn-block py-2 btn-google"><span class="icon-google mr-3"></span> Login with Google</a>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>

    
  </div>

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
