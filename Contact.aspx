<%@ Page Title="" Language="C#" MasterPageFile="~/SI.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<%@ Register Assembly="GoogleReCaptcha" Namespace="GoogleReCaptcha" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="Server">
    <section id="inner-headline" style="background-image: url(img/about-banner.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <ul class="breadcrumb">
                        <li><a href="Index.aspx"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
                        <li class="active">Contact Us</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section id="content">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <h4 class="text-center">Get in touch today</h4>
                    <p class="text-center">Transform your business processes. Talk to us to find out how.</p>
                    <div class="form-group">
                        <asp:TextBox ID="txtname" class="form-control" placeholder="Your Name" data-msg="Please enter at least 4 chars" runat="server" required></asp:TextBox>
                        <div class="validation"></div>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtemailid" class="form-control" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" runat="server" required></asp:TextBox>
                        <div class="validation"></div>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtsubject" class="form-control" placeholder="Subject" data-msg="Please enter at least 8 chars of subject" runat="server" required></asp:TextBox>
                        <div class="validation"></div>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtmessage" class="form-control" placeholder="Glad to hear from you." Rows="5" TextMode="MultiLine" data-msg="Please enter at least 8 chars of subject" runat="server" required></asp:TextBox>
                        <div class="validation"></div>
                    </div>
                    <div class="form-group">
                        <center>
                                <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                                <asp:Label ID="Label1" runat="server" Text="" ForeColor="#e84c3d"></asp:Label>
                                </center>
                    </div>
                    <center><asp:Button ID="Submit" runat="server" class="btn btn-theme" Text="Send Message" onclick="btnsubmit_Click"/>
                    </center>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

