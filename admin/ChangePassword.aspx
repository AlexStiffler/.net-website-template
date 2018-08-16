<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="admin_ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <div class="row">
            <div class="col-md-12">
                <div class="card card-cascade narrower mt-5">
                    <div class="view view-cascade py-3 gradient-card-header info-color">
                        <h5 class="mb-0">Change Password</h5>
                    </div>
                    <div class="card-body card-body-cascade">
                        <div class="container">
                            <div class="row mt-3">
                                <div class="col-sm-2">
                                    <p>Old Password</p>
                                </div>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control mb-4"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2">
                                    <p>New Password</p>
                                </div>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control mb-4" ></asp:TextBox>
                                </div>
                            </div>
                              <div class="row">
                                <div class="col-sm-2">
                                    <p>Retype New Password</p>
                                </div>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control mb-4"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-sm-4"></div>
                                <div class="col-sm-4">
                                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-success" />
                                    <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="btn btn-danger pull-left" />
                                </div>
                                <div class="col-sm-4"></div>
                            </div>
                        </div>
                        <hr />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

