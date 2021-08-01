<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="loginredirection.aspx.cs" Inherits="TMS.loginredirection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <br />
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6 mx-auto text-center">
                                <asp:LinkButton ID="LinkButton1" href="../Student_Login.aspx" CssClass="btn btn-primary" Text="Student Login" Font-Bold="true" runat="server"></asp:LinkButton>
                            </div>
                        </div>



                        <br />
                        <br />
                        <div class="row">
                            <div class="col-md-6 mx-auto text-center">

                                <asp:LinkButton ID="LinkButton2" href="../tutorsignup.aspx" CssClass="btn btn-info" Text="Tutor Login" Font-Bold="true" runat="server"></asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <br />
    <br />
    <br />
</asp:Content>
