<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true"
    CodeBehind="Student_Signup.aspx.cs" Inherits="TMS.Student_Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function SucessSignUp() {
            Swal.fire(
                'Success!',
                'Sign Up Success!',
                'success'
            )
        }
    </script>
    <script type="text/javascript">
        function ErrorSignUp() {
            Swal.fire(
                'oops!',
                'SignUp  failed!',
                'Danger'
            )
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div>
                <div class="Container p-md-4 p-sm-4" style="box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.75); -webkit-box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.75); -moz-box-shadow: 1px 2px 25px 0px rgba(0,0,0,0.75);">
                    <div>
                        <asp:Label ID="lblmsg" runat="server" Visible="False"></asp:Label>
                    </div>
                    <h3 class="text-center">Student SignUp  </h3>
                    <div class="row mb-3 mr-lg-5 ml-lg-5 mt-md-5">
                        <div class="col-md-4">
                            <label>Name </label>
                            <asp:TextBox ID="firstnametext" placeholder="Enter  First Name" runat="server" CssClass="form-control"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="firstnametext"
                                Display="Dynamic" ErrorMessage="Name is Required."
                                SetFocusOnError="True"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-4">
                            <label for="fathertext">Father Name</label>
                            <asp:TextBox ID="fathertext" runat="server" placeholder="Enter Father Name" CssClass="form-control"></asp:TextBox>
                            <%--OnSelectedIndexChanged="ddlsubject_SelectedIndexChanged"--%>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="fathertext"
                                Display="Dynamic" ErrorMessage="Father Name is Required."
                                SetFocusOnError="True"
                                ForeColor="Red" TabIndex="0"></asp:RequiredFieldValidator>
                        </div>

                        <div class="col-md-4">
                            <label for="txtrollno">SurName</label>
                            <asp:TextBox ID="surnametext" CssClass="form-control" placeholder="Enter SurName"
                                runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="surnametext"
                                Display="Dynamic" ErrorMessage="SurName Required!."
                                SetFocusOnError="True"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

                        <div class="col-md-4 mt-2">
                            <label for="txtmarks">Gender</label>
                            <asp:DropDownList ID="ddlgender" runat="server" CssClass="form-control">
                                <asp:ListItem>Select Gender</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlgender" InitialValue="Select Gender"
                                Display="Dynamic" ErrorMessage="Gender Required!."
                                SetFocusOnError="True"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

                        <div class="col-md-4 mt-2">
                            <label for="agetext">Age</label>
                            <asp:TextBox ID="agetext" CssClass="form-control" placeholder="Enter age"
                                TextMode="Number" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="agetext"
                                Display="Dynamic" ErrorMessage="Age Required!."
                                SetFocusOnError="True"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>


                        <div class="col-md-4 mt-2">
                            <label for="emailid">EmailID</label>
                            <asp:TextBox ID="emailidtext" CssClass="form-control" placeholder="Enter EmailID"
                                runat="server" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="emailidtext"
                                Display="Dynamic" ErrorMessage="EmailID Required!!."
                                SetFocusOnError="True"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid EmailID" ControlToValidate="emailidtext" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>


                        <div class="col-md-4 mt-2">
                            <label for="agetext">Country</label>
                            <asp:TextBox ID="countrytext" CssClass="form-control" placeholder="Enter Country"
                                runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="countrytext"
                                Display="Dynamic" ErrorMessage="Country Required!!."
                                SetFocusOnError="True"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>



                        <div class="col-md-4 mt-2">
                            <label for="agetext">City</label>
                            <asp:TextBox ID="citytext" CssClass="form-control" placeholder="Enter City"
                                runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="citytext"
                                Display="Dynamic" ErrorMessage="City Required!."
                                SetFocusOnError="True"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>


                        <div class="col-md-4 mt-2">
                            <label for="agetext">Address</label>
                            <asp:TextBox ID="addresstext" CssClass="form-control" placeholder="Enter address"
                                runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="addresstext"
                                Display="Dynamic" ErrorMessage="Address Required!."
                                SetFocusOnError="True"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>


                        <div class="col-md-4 mt-2">
                            <label for="Classtxt">Class</label>
                            <asp:DropDownList ID="ddlclass" runat="server" CssClass="form-control">
                                <asp:ListItem>Select Class</asp:ListItem>
                                <asp:ListItem>3rd</asp:ListItem>
                                <asp:ListItem>4th</asp:ListItem>
                                <asp:ListItem>5th</asp:ListItem>
                                <asp:ListItem>6th</asp:ListItem>
                                <asp:ListItem>7th</asp:ListItem>
                                <asp:ListItem>8th</asp:ListItem>
                                <asp:ListItem>9th</asp:ListItem>
                                <asp:ListItem>10th</asp:ListItem>
                                <asp:ListItem>11th</asp:ListItem>
                                <asp:ListItem>12th</asp:ListItem>
                                <asp:ListItem>B.A</asp:ListItem>
                                <asp:ListItem>B.SC</asp:ListItem>
                                <asp:ListItem>B.COM</asp:ListItem>
                                <asp:ListItem>BCA</asp:ListItem>
                                <asp:ListItem>B.TECH</asp:ListItem>
                                <asp:ListItem>BBA</asp:ListItem>
                                <asp:ListItem>MA</asp:ListItem>
                                <asp:ListItem>MCA</asp:ListItem>
                                <asp:ListItem>M.TECH</asp:ListItem>
                                <asp:ListItem>M.COM</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="ddlclass"
                                Display="Dynamic" ErrorMessage="Class Must be Required!."
                                SetFocusOnError="True" InitialValue="Select Class"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>


                        <div class="col-md-4 mt-2">
                            <label for="agetext">Going To</label>
                            <asp:DropDownList ID="ddlgoingto" runat="server" CssClass="form-control">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>School</asp:ListItem>
                                <asp:ListItem>College</asp:ListItem>
                                <asp:ListItem>University</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="ddlgoingto"
                                Display="Dynamic" ErrorMessage="Going To Required!." InitialValue="Select"
                                SetFocusOnError="True"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>


                        <div class="col-md-4 mt-2">
                            <label for="agetext">Subject</label>
                            <asp:TextBox ID="subjecttextbox" CssClass="form-control" placeholder="Enter Subject"
                                runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="subjecttextbox"
                                Display="Dynamic" ErrorMessage="Subject Required!."
                                SetFocusOnError="True"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>


                        <div class="col-md-4 mt-2">
                            <label for="agetext">Contact</label>
                            <asp:TextBox ID="contacttext" CssClass="form-control" placeholder="Enter Contact Number"
                                TextMode="Number" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="contacttext"
                                Display="Dynamic" ErrorMessage="Contact Required!."
                                SetFocusOnError="True"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

                        <%--<div class="col-md-4 mt-2">
                            <label for="agetext">Tution Type</label>
                            <asp:DropDownList ID="ddltutor" runat="server" CssClass="form-control">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>School</asp:ListItem>
                                <asp:ListItem>College</asp:ListItem>
                                <asp:ListItem>University</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>--%>


                        <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddltutor" InitialValue="Select"
                                Display="Dynamic" ErrorMessage="Tution Type Required!."
                                SetFocusOnError="True"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                                
                        </div>--%>


                        <div class="col-md-4 mt-2">
                            <label for="turiontype">Tution Type-Form</label>
                            <asp:DropDownList ID="Dddltutiontypeform" runat="server" CssClass="form-control">
                                <asp:ListItem>Select Tution Type</asp:ListItem>
                                <asp:ListItem>OnLine</asp:ListItem>
                                <asp:ListItem>Physical</asp:ListItem>

                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="Dddltutiontypeform" InitialValue="Select Tution Type"
                                Display="Dynamic" ErrorMessage="Tution Type Form Required!."
                                SetFocusOnError="True"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>





                        <div class="col-md-4 mt-2">
                            <label for="agetext">Tutor Qualification</label>
                            <asp:DropDownList ID="ddltutorquali" runat="server" CssClass="form-control">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Graduate</asp:ListItem>
                                <asp:ListItem>Masters</asp:ListItem>
                                <asp:ListItem>MPHIK</asp:ListItem>
                                <asp:ListItem>PHD</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="ddltutorquali" InitialValue="Select"
                                Display="Dynamic" ErrorMessage="Tutor Qualification Required!."
                                SetFocusOnError="True"
                                ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>

                        <div class="col-md-4 mt-2">
                            <label for="usernametext">UserName</label>
                            <asp:TextBox ID="usernametext" CssClass="form-control" placeholder="Enter UserName"
                                runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="usernametext"
                                Display="Dynamic" ErrorMessage="UserName Required!."
                                SetFocusOnError="True"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

                        <div class="col-md-4 mt-2">
                            <label for="passwordtext">Password</label>
                            <asp:TextBox ID="Passwordtext" CssClass="form-control" placeholder="Enter Password" TextMode="Password"
                                runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="Passwordtext"
                                Display="Dynamic" ErrorMessage="Password Required!."
                                SetFocusOnError="True"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>

                        <div class="col-md-4 mt-2">
                            <label for="agetext">Re-Enter Password</label>
                            <asp:TextBox ID="reentertext" CssClass="form-control" placeholder="Enter Confirm-Password " TextMode="Password"
                                runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="reentertext"
                                Display="Dynamic" ErrorMessage="Re-enter Required!."
                                SetFocusOnError="True"
                                ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server"
                                ErrorMessage="Password must be match!" ControlToCompare="Passwordtext"
                                ControlToValidate="reentertext" Display="Dynamic" ForeColor="Red"
                                SetFocusOnError="True"></asp:CompareValidator>
                        </div>
                    </div>
                    <%--Button--%>
                    <div class="row mb-3 mr-lg-5 ml-lg-5 ">
                        <div class="col-md-6 mx-auto">
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-block" BackColor="#5558c9"
                                Text="SignUp" OnClick="Button1_Click" />
                        </div>
                    </div>


                    <%--<div class="row mb-3 mr-lg-5 ml-lg-5 ">--%>
                    <div class="row">
                        <div class="col-md-6 mx-auto text-center ">

                            <asp:LinkButton ID="LinkButton1" href="../tutorsignup.aspx" CssClass="btn btn-info" Text="SignUp as Tutor" runat="server"></asp:LinkButton>
                        </div>
                    </div>
                    <%--</div>--%>
                </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
