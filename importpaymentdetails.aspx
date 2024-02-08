﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="importpaymentdetails.aspx.cs" Inherits="importpaymentdetails" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <asp:UpdateProgress ID="updateProgress1" runat="server">
            <ProgressTemplate>
                <div style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0;
                    right: 0; left: 0; z-index: 9999; background-color: #FFFFFF; opacity: 0.7;">
                    <asp:Image ID="imgUpdateProgress" runat="server" ImageUrl="thumbnails/loading.gif"
                        Style="padding: 10px; position: absolute; top: 40%; left: 40%; z-index: 99999;" />
                </div>
            </ProgressTemplate>
        </asp:UpdateProgress>
    </div>
    <section class="content-header">
        <h1>
            Rate Master<small>Preview</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i>Operations</a></li>
            <li><a href="#">Rate Master</a></li>
        </ol>
    </section>
    <section class="content">
        <div class="box box-info">
            <div class="box-header with-border">
                <h3 class="box-title">
                    <i style="padding-right: 5px;" class="fa fa-cog"></i>IMPORT PAYMENT Details
                </h3>
            </div>
            <div class="box-body">
             <table align="center">
                       <tr>
                            <td>
                                <label>
                                    Branch Name</label>
                            </td>
                            <td style="height: 40px;">
                               <asp:DropDownList ID="ddl_branch" runat="server" CssClass="form-control">
                               
                               </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    DOP</label>
                            </td>
                            <td style="height: 40px;">
                                <asp:TextBox ID="txtdate" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:CalendarExtender ID="enddate_CalendarExtender" runat="server" Enabled="True"
                            TargetControlID="txtdate" Format="MM/dd/yyyy HH:mm">
                        </asp:CalendarExtender>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    Pay to</label>
                            </td>
                            <td style="height: 40px;">
                              <asp:TextBox ID="txtname" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                <label>
                                    A/C Number</label>
                            </td>
                            <td style="height: 40px;">
                               <asp:DropDownList ID="ddl_account" runat="server" CssClass="form-control">
                               </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    Main Head of Account
                                </label>
                            </td>
                            <td>
                            <asp:FileUpload ID="FileUploadToServer" runat="server" Style="height: 25px; width:100px; font-size: 16px;" />&nbsp;&nbsp;
                            </td>
                             <td style="width: 5px;">
                             <asp:Button ID="Button1" Text="Import" runat="server" CssClass="btn btn-primary" OnClick="btn_import_click"/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <div>
                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="grdReports" runat="server" ForeColor="White" Width="100%" CssClass="gridcls"
                                    GridLines="Both" Font-Bold="true" Font-Size="Smaller">
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="Gray" Font-Bold="False" ForeColor="White" />
                                    <HeaderStyle BackColor="#f4f4f4" Font-Bold="False" ForeColor="Black" Font-Italic="False"
                                        Font-Names="Raavi" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#ffffff" ForeColor="#333333" HorizontalAlign="Center" />
                                    <AlternatingRowStyle HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" />
                                </asp:GridView>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    Total Amount</label>
                            </td>
                            <td style="height: 40px;">
                                  <asp:TextBox ID="txttotalamount" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                           <tr>
                            <td>
                                <label>
                                    Branch</label>
                            </td>
                            <td style="height: 40px;">
                               <asp:DropDownList ID="ddl_subbranch" runat="server" CssClass="form-control">
                               
                               </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    Sub Head of Account
                                </label>
                            </td>
                             <td>
                            <asp:FileUpload ID="FileUploadTosubaccounts" runat="server" Style="height: 25px; width:100px; font-size: 16px;" />&nbsp;&nbsp;
                            </td>
                             <td style="width: 5px;">
                             <asp:Button ID="btnsubimport" Text="Import" runat="server" CssClass="btn btn-primary" OnClick="btnsubimport_click"/>
                            </td>
                             <td style="width: 5px;">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                               <div>
                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                            <ContentTemplate>
                                <asp:GridView ID="grdsubReports" runat="server" ForeColor="White" Width="100%" CssClass="gridcls"
                                    GridLines="Both" Font-Bold="true" Font-Size="Smaller">
                                    <EditRowStyle BackColor="#999999" />
                                    <FooterStyle BackColor="Gray" Font-Bold="False" ForeColor="White" />
                                    <HeaderStyle BackColor="#f4f4f4" Font-Bold="False" ForeColor="Black" Font-Italic="False"
                                        Font-Names="Raavi" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#ffffff" ForeColor="#333333" HorizontalAlign="Center" />
                                    <AlternatingRowStyle HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" ForeColor="#333333" />
                                </asp:GridView>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        </div>
                            </td>
                        </tr>
                          <tr>
                            <td>
                                <label>
                                    Total Amount</label>
                            </td>
                            <td style="height: 40px;">
                                <asp:TextBox ID="txtsubtotalamount" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                         <td>
                                <label>
                                   SAP Import</label>
                            </td>
                            <td style="height: 40px;">
                              <asp:DropDownList ID="ddl_sapimport" runat="server" CssClass="form-control">
                               <asp:ListItem Text="Main Head Of Accounts" Value="1">Main Head Of Accounts</asp:ListItem>
                               <asp:ListItem Text="Sub Head Of Accounts" Value="2"></asp:ListItem>
                               </asp:DropDownList>
                            </td>
                        
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    Remarks</label>
                            </td>
                            <td colspan="2">
                             <textarea id="txtremarks" cols="20" runat="server"></textarea>
                               <%-- <asp:TextBox ID="txtremarks" runat="server" MaxLength="500" Height="100px" Width="150px"></asp:TextBox>--%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    ApprovedBy</label>
                            </td>
                            <td style="height: 40px;">
                              <asp:DropDownList ID="ddl_emp" runat="server" CssClass="form-control">
                               
                               </asp:DropDownList>
                            </td>
                        </tr>
                        <tr style="display: none;">
                            <td>
                                <label id="txtsno">
                                </label>
                            </td>
                        </tr>
                        <tr>
                            <td style="display: none">
                                <input id="txt_sub_head" type="hidden" style="height: 28px; opacity: 1.0; width: 150px;" />
                                <input id="txt_head" type="hidden" style="height: 28px; opacity: 1.0; width: 150px;" />
                            </td>
                        </tr>
                    </table>
                    <table align="center">
                        <tr>
                            <td colspan="2" align="center" style="height: 40px;">
                            <asp:Button ID="btn_save" runat="server" class="btn btn-success" Text="Save" OnClick="save_payment_click" />
                            </td>
                        </tr>
                    </table>
                <table style="width: 100%;">
                    <tr>
                        <td style="float: left; width: 20%;">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                               </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                        <td style="float: right;">
                         <%--   <asp:Button ID="Button3" Text="Export To Excel" runat="server" CssClass="btn btn-primary"
                                OnClick="btn_Export_Click" />--%>
                        </td>
                         <td style="width:5px;">
                        </td>
                       
                    </tr>
                </table>
                
                <asp:UpdatePanel ID="upd" runat="server">
                    <ContentTemplate>
                        
                        <br />
                        <asp:Button ID="btnPrint" CssClass="btn btn-primary" Text="Print" OnClientClick="javascript:CallPrint('divPrint');"
                            runat="Server" />
                        <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Text="" Font-Size="20px"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>


        <asp:Panel ID="pnlHide" runat="server" Visible="false">
                                <div style="width: 100%;">
                                        <asp:GridView ID="grdmissing" runat="server" ForeColor="White" Width="100%" CssClass="gridcls"
                                            GridLines="Both" Font-Bold="true">
                                            <EditRowStyle BackColor="#999999" />
                                            <FooterStyle BackColor="Gray" Font-Bold="False" ForeColor="White" />
                                            <HeaderStyle BackColor="#f4f4f4" Font-Bold="False" ForeColor="Black" Font-Italic="False"
                                                Font-Names="Raavi" Font-Size="Small" />
                                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#ffffff" ForeColor="#333333" />
                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        </asp:GridView>
                                    </div>
                         </asp:Panel>
    </section>
</asp:Content>
