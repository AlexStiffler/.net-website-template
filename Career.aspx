<%@ Page Title="" Language="C#" MasterPageFile="~/SI.master" AutoEventWireup="true" CodeFile="Career.aspx.cs" Inherits="Career" %>

<%@ Register Assembly="GoogleReCaptcha" Namespace="GoogleReCaptcha" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
    <script type="text/javascript">
        function saveInfo() {
            var txtname = document.getElementById('<%= txtname.ClientID %>');
            var txtemail = document.getElementById('<%= txtemail.ClientID %>');
            var txtmobile = document.getElementById('<%= txtmobile.ClientID %>');
            var txtdob = document.getElementById('<%= txtdob.ClientID %>');
            var txtmessage = document.getElementById('<%= txtmessage.ClientID %>');
            var FileUpload1 = document.getElementById('<%= FileUpload1.ClientID %>');
            if (txtname.value.trim() == '') {
                alert("Enter the name");
                txtname.focus();
                return false;
            }
            if (txtemail.value.trim() == '') {
                alert("Enter the email id");
                txtemail.focus();
                return false;
            }
            if (txtmobile.value.trim() == '') {
                alert("Enter the mobile no.");
                txtmobile.focus();
                return false;
            }
            if (txtdob.value.trim() == '') {
                alert("Enter the DOB.");
                txtdob.focus();
                return false;
            }
            if (txtmessage.value.trim() == '') {
                alert("Enter the message.");
                txtmessage.focus();
                return false;
            }
            return true;
        }

    </script>
    <section id="inner-headline" style="background-image: url(img/about-banner.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <ul class="breadcrumb">
                        <li><a href="Index.aspx"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
                        <li class="active">Career</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section id="content">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <h4 class="text-center">Come work with Us</h4>
                    <p class="text-center">Transform your career. Fill in the following details to apply for job.</p>
                    <div class="form-group">
                        <input type="text" class="form-control" runat="server" id="txtname" placeholder="Enter name" />
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" runat="server" id="txtemail" placeholder="Enter email" />
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" runat="server" id="txtdob" placeholder="Enter Date Of Birth" />
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" runat="server" id="txtmobile" maxlength="10" placeholder="Enter Mobile No." />
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" runat="server" id="txtmessage" placeholder="Enter message" rows="5" textmode="MultiLine" />
                    </div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label>Attach Resume:</label>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <div class="form-group">
                                <center>
                                <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                                <asp:Label ID="Label1" runat="server" Text="" ForeColor="#e84c3d"></asp:Label>
                                </center>
                            </div>
                        </div>
                    </div>
                    <center>
                    <asp:Button ID="btnsend" runat="server" Text="Submit" OnClientClick="return saveInfo();" CssClass="btn btn-theme" OnClick="btnsend_Click" />
                      <asp:Button ID="Button1" runat="server" Text="Reset" CssClass="btn btn-theme btn-theme1" OnClick="btncancel_Click" />
                        </center>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

