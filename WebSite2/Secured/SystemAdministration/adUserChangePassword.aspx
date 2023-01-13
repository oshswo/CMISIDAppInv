<%@ Page Title="Change Password" Language="VB" AutoEventWireup="false" CodeFile="adUserChangePassword.aspx.vb" Inherits="Secured_SystemAdministration_adUserChangePassword" Theme="Skins" %>

<%@ Register Src="~/Include/sSearchPaging.ascx" TagName="sSearchPaging" TagPrefix="uc6" %>

<%@ Register Src="~/Include/wucConfirmBoxBS.ascx" TagName="wucConfirmBox" TagPrefix="wucConfirmBox" %>
<%@ Register Src="~/Include/wucMainMenuBS.ascx" TagName="wucMainMenu" TagPrefix="uc4" %>

<%@ Register Src="~/Include/sHeader.ascx" TagName="sHeader" TagPrefix="uc1" %>
<%@ Register Src="~/Include/sFooterAdmin.ascx" TagName="sFooter" TagPrefix="uc3" %>


<%@ Register Src="~/Include/wucErrorMessageBox.ascx" TagName="wucErrorMessageBox" TagPrefix="wucErrorMsgBox" %>
<%@ Register Src="~/Include/wucValidateMessageBox.ascx" TagName="wucMessageBox" TagPrefix="wucMsgBox" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>User Entry</title>
    <link rel="Shortcut Icon" href="~/favicon.ico" type="image/x-icon" />
    <script src="../../Scripts/jquery-1.12.4.min.js"></script>
    <link href="../../Scripts/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../../Scripts/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/bootstrap/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        $(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>

    <body>
        <form id="form1" role="form" method="post" runat="server" autocomplete="off">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        <%--    <div class="container" style="width: 100%">
                <uc4:wucMainMenu ID="wucMainMenu2" runat="server" />
            </div>--%>
            <div class="container-fluid">
                <div class="panel panel-primary">
                    <div class="panel-heading" style="text-align: center">
                        <asp:Label runat="server" ID="lblPageTitle" Text="Change Password" SkinID="lblPageTitle"></asp:Label>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon">Current Password </span>
                                <asp:TextBox runat="server" ID="txtCurrentPassword" CssClass="form-control" Width="30%" data-toggle="tooltip" data-placement="top" title="Current Password" trigger="hover" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon">New Password </span>
                                <asp:TextBox runat="server" ID="txtNewPassword" CssClass="form-control" Width="30%" data-toggle="tooltip" data-placement="top" title="New Password" trigger="hover" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon">Re-type Password </span>
                                <asp:TextBox runat="server" ID="txtRetypePassword" CssClass="form-control" Width="30%" data-toggle="tooltip" data-placement="top" title="Re-type Password" trigger="hover" TextMode="Password"></asp:TextBox>
                            </div>
                        </div>

                    </div>
                    <div class="panel-footer">
                        <asp:Button runat="server" ID="btnSave" class="btn btn-primary btn-lg" Text="Save" ValidationGroup="DOC" />
                        <asp:Button runat="server" ID="btnCancel" class="btn btn-danger btn-lg" Text="Cancel" CausesValidation="false" />
                    </div>
                </div>
            </div>

            <div>
                <uc1:sHeader ID="sHeader1" runat="server" />
            </div>
            <div>
                <uc3:sFooter ID="sFooter1" runat="server" />
            </div>

            <asp:UpdatePanel ID="updatePanel1" runat="server">
                <contenttemplate>
                <asp:HiddenField runat="server" ID="hfTransid"></asp:HiddenField>
                <wucConfirmBox:wucConfirmBox runat="server" ID="thisMsgBox" />
            </contenttemplate>
            </asp:UpdatePanel>

        </form>

    </body>
</head>


</html>

<%--<asp:content id="Content1" contentplaceholderid="cphSContent" runat="Server">
    <asp:Table runat="server" ID="tblForm" SkinID="tblForm">
        <asp:TableRow HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#b9b9b9"
            Height="30px">
            <asp:TableCell>
               </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Table runat="server" ID="tblFormContent" SkinID="tblFormContent">
                    
                    <asp:TableRow>
                        <asp:TableCell SkinID="celFormLabel3" Text="Current Password : "></asp:TableCell>
                        <asp:TableCell SkinID="celFormLabel2"><asp:TextBox runat="server" ID="txtCurrentPassword" TextMode="Password" SkinID="txtInputForm"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell SkinID="celFormLabel3" Text="New Password : "></asp:TableCell>
                        <asp:TableCell SkinID="celFormLabel2"><asp:TextBox runat="server" ID="txtNewPassword" TextMode="Password" SkinID="txtInputForm"></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell SkinID="celFormLabel3" Text="Re-type Password : "></asp:TableCell>
                        <asp:TableCell SkinID="celFormLabel2"><asp:TextBox runat="server" ID="txtRetypePassword"  TextMode="Password" SkinID="txtInputForm" ></asp:TextBox></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell></asp:TableCell>
                        <asp:TableCell HorizontalAlign="Left">
                            <wucMsgBox:wucMessageBox runat ="server" ID="thisMsgBox" />
                            <wucErrorMsgBox:wucErrorMessageBox runat ="server" ID="thisErrorMsgBox" />
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>       
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    
</asp:content>--%>
