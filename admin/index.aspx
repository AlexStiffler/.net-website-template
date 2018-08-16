<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="admin_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="notification-card">
        <div class="row">
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card">
                    <div class="row mt-3">
                        <div class="col-md-5 col-5 text-left pl-4">
                            <a type="button" class="btn-floating btn-lg success-color ml-4 waves-effect waves-light"><i class="fa fa-file-text-o" aria-hidden="true"></i></a>
                        </div>
                        <div class="col-md-7 col-7 text-right pr-5">
                            <h5 class="ml-4 mt-4 mb-2 font-weight-bold">200</h5>
                            <p class="font-small grey-text">
                                Email Subscription
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card">
                    <div class="row mt-3" id="td_Worksheet">
                        <div class="col-md-5 col-5 text-left pl-4">
                            <a type="button" class="btn-floating btn-lg warning-color ml-4 waves-effect waves-light"><i class="fa fa-server" aria-hidden="true"></i></a>
                        </div>
                        <div class="col-md-7 col-7 text-right pr-5">
                        <h5 class="ml-4 mt-4 mb-2 font-weight-bold">200</h5>
                            <p class="font-small grey-text">
                                Job Application
                              </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card">
                    <div class="row mt-3">
                        <div class="col-md-5 col-5 text-left pl-4">
                            <a type="button" class="btn-floating btn-lg light-blue lighten-1 ml-4 waves-effect waves-light"><i class="fa fa-bolt" aria-hidden="true"></i></a>
                        </div>
                        <div class="col-md-7 col-7 text-right pr-5">
                         <h5 class="ml-4 mt-4 mb-2 font-weight-bold">200</h5>
                            <p class="font-small grey-text">
                               Blogs
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6 mb-4">
                <div class="card">
                    <div class="row mt-3">
                        <div class="col-md-5 col-5 text-left pl-4">
                            <a type="button" class="btn-floating btn-lg red accent-2 ml-4 waves-effect waves-light"><i class="fa fa-video-camera" aria-hidden="true"></i></a>
                        </div>
                        <div class="col-md-7 col-7 text-right pr-5">
                           <h5 class="ml-4 mt-4 mb-2 font-weight-bold">200</h5>
                            <p class="font-small grey-text">
                                Enquiry
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="row">
            
            <div class="col-md-6">
                <div class="card card-cascade narrower mt-5">
                    <div class="view view-cascade py-3 gradient-card-header info-color">
                        <h5 class="mb-0">Email Subcription</h5>
                    </div>
                    <div class="card-body card-body-cascade">
                        <table class="table large-header">
                            <thead>
                                <tr>
                                    <th class="font-weight-bold dark-grey-text"><strong>Name</strong></th>
                                    <th class="font-weight-bold dark-grey-text"><strong>Email ID</strong></th>
                                </tr>
                            </thead>
                        </table>
                        <div class="card-scroll style-scroll">
                            <table class='table'>
                                <tr><td>Akhil</td><td>akhilsharma_9@outlook.com</td></tr>
                                <tr><td>Akhil</td><td>akhilsharma_9@outlook.com</td></tr>
                                <tr><td>Akhil</td><td>akhilsharma_9@outlook.com</td></tr>
                                <tr><td>Akhil</td><td>akhilsharma_9@outlook.com</td></tr>
                                <tr><td>Akhil</td><td>akhilsharma_9@outlook.com</td></tr>
                                </table>
                        </div>
                        <a href="SisNotification.aspx" class="btn btn btn-flat grey lighten-3 btn-rounded waves-effect float-right font-weight-bold dark-grey-text" style="padding: 1rem!important;">View more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="card card-cascade narrower mt-5">
                    <div class="view view-cascade py-3 gradient-card-header info-color">
                        <h5 class="mb-0">Enquiry</h5>
                    </div>
                    <div class="card-body card-body-cascade">
                        <table class="table large-header">
                            <thead>
                                <tr>
                                    <th class="font-weight-bold dark-grey-text"><strong>Name</strong></th>
                                    <th class="font-weight-bold dark-grey-text"><strong>Email</strong></th>
                                    <th class="font-weight-bold dark-grey-text"><strong>Subject</strong></th>
                                </tr>
                            </thead>
                        </table>
                        <div class="card-scroll style-scroll">
                            <div>
	                        <table class='table'>
                                <tr><td>Akhil</td><td>akhilsharma_9@outlook.com</td><td>TEST</td></tr>
                                 <tr><td>Akhil</td><td>akhilsharma_9@outlook.com</td><td>TEST</td></tr>
                                 <tr><td>Akhil</td><td>akhilsharma_9@outlook.com</td><td>TEST</td></tr>
                                 <tr><td>Akhil</td><td>akhilsharma_9@outlook.com</td><td>TEST</td></tr>
                                 <tr><td>Akhil</td><td>akhilsharma_9@outlook.com</td><td>TEST</td></tr>
                                 <tr><td>Akhil</td><td>akhilsharma_9@outlook.com</td><td>TEST</td></tr>
                                </table>
                            </div>
                        </div>
                        <a class="btn btn-flat grey lighten-3 btn-rounded waves-effect float-right font-weight-bold dark-grey-text" href="SisNotification.aspx" style="padding: 1rem!important;">View More</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

