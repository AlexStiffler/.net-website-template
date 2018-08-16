<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="blog.aspx.cs" Inherits="admin_blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <div class="row">
            <div class="col-md-12">
                <div class="card card-cascade narrower mt-5">
                    <div class="view view-cascade py-3 gradient-card-header info-color">
                        <h5 class="mb-0">Career</h5>
                    </div>
                    <div class="card-body card-body-cascade">
                        <div class="container">
                            <div class="row mt-3">
                                <div class="col-sm-2">
                                    <p>Slug</p>
                                </div>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control mb-4"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2">
                                    <p>Heading</p>
                                </div>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control mb-4"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2">
                                    <p>Content</p>
                                </div>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control mb-4" TextMode="MultiLine" Rows="10"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2">
                                    <p>Image</p>
                                </div>
                                <div class="col-sm-10">
                                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="btn btn-default" />
                                </div>
                            </div>
                            <div class="row mt-3">
                                <div class="col-sm-4"></div>
                                <div class="col-sm-4">
                                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-success" />
                                    <asp:Button ID="Button2" runat="server" Text="Reset" CssClass="btn btn-danger pull-left" />
                                </div>
                                <div class="col-sm-4"></div>
                            </div>

                        </div>
                        <hr />
                        <table class="table large-header table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th class="font-weight-bold dark-grey-text"><strong>S. No.</strong></th>
                                    <th class="font-weight-bold dark-grey-text"><strong>Slug</strong></th>
                                    <th class="font-weight-bold dark-grey-text"><strong>Heading</strong></th>
                                    <th class="font-weight-bold dark-grey-text"><strong>Edit</strong></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Into</td>
                                    <td>Introduction</td>
                                    <td><i class="fa fa-edit"></i></td>
                                </tr>
                                  <tr>
                                    <td>1</td>
                                    <td>Into</td>
                                    <td>Introduction</td>
                                    <td><i class="fa fa-edit"></i></td>
                                </tr>
                                  <tr>
                                    <td>1</td>
                                    <td>Into</td>
                                    <td>Introduction</td>
                                    <td><i class="fa fa-edit"></i></td>
                                </tr>
                                  <tr>
                                    <td>1</td>
                                    <td>Into</td>
                                    <td>Introduction</td>
                                    <td><i class="fa fa-edit"></i></td>
                                </tr>
                                  <tr>
                                    <td>1</td>
                                    <td>Into</td>
                                    <td>Introduction</td>
                                    <td><i class="fa fa-edit"></i></td>
                                </tr>
                                  <tr>
                                    <td>1</td>
                                    <td>Into</td>
                                    <td>Introduction</td>
                                    <td><i class="fa fa-edit"></i></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
