<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="admin_contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <div class="row">
            <div class="col-md-12">
                <div class="card card-cascade narrower mt-5">
                    <div class="view view-cascade py-3 gradient-card-header info-color">
                        <h5 class="mb-0">Contact</h5>
                    </div>
                    <div class="card-body card-body-cascade">
                        <div class="container">
                            <div class="row mt-3">
                                <div class="col-sm-2">
                                    <p>Name</p>
                                </div>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control mb-4"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-2">
                                    <p>Email Id</p>
                                </div>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="TextBox2" runat="server" class="form-control mb-4" ></asp:TextBox>
                                </div>
                            </div>
                              <div class="row">
                                <div class="col-sm-2">
                                    <p>Subject</p>
                                </div>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="TextBox3" runat="server" class="form-control mb-4" ></asp:TextBox>
                                </div>
                            </div>
                              <div class="row">
                                <div class="col-sm-2">
                                    <p>Message</p>
                                </div>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="TextBox5" runat="server" class="form-control mb-4" TextMode="MultiLine" Rows="5"></asp:TextBox>
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
                        <table class="table large-header table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th class="font-weight-bold dark-grey-text"><strong>S. No.</strong></th>
                                    <th class="font-weight-bold dark-grey-text"><strong>Name</strong></th>
                                    <th class="font-weight-bold dark-grey-text"><strong>Email ID</strong></th>
                                    <th class="font-weight-bold dark-grey-text"><strong>Subject</strong></th>
                                    <th class="font-weight-bold dark-grey-text"><strong>Message</strong></th>
                                    <th class="font-weight-bold dark-grey-text"><strong>Edit</strong></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Akhil</td>
                                    <td>akhilsharma_9@outlook.com</td>
                                    <td>Test</td>
                                    <td>Testing</td>
                                    <td><i class="fa fa-edit"></i></td>
                                </tr>
                                  <tr>
                                    <td>1</td>
                                    <td>Akhil</td>
                                    <td>akhilsharma_9@outlook.com</td>
                                    <td>Test</td>
                                    <td>Testing</td>
                                    <td><i class="fa fa-edit"></i></td>
                                </tr>
                                  <tr>
                                    <td>1</td>
                                    <td>Akhil</td>
                                    <td>akhilsharma_9@outlook.com</td>
                                    <td>Test</td>
                                    <td>Testing</td>
                                    <td><i class="fa fa-edit"></i></td>
                                </tr>
                                  <tr>
                                    <td>1</td>
                                    <td>Akhil</td>
                                    <td>akhilsharma_9@outlook.com</td>
                                    <td>Test</td>
                                    <td>Testing</td>
                                    <td><i class="fa fa-edit"></i></td>
                                </tr>
                                  <tr>
                                    <td>1</td>
                                    <td>Akhil</td>
                                    <td>akhilsharma_9@outlook.com</td>
                                    <td>Test</td>
                                    <td>Testing</td>
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
