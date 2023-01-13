<%@ Page Title="User Entry" Language="VB" AutoEventWireup="false" CodeFile="adminUserEntryAdd.aspx.vb" Inherits="Secured_UserAdmin_adminUserEntryAdd" Theme="Skins" %>

<!DOCTYPE html>

<%@ Register Src="~/Include/wucConfirmBoxBS.ascx" TagName="wucConfirmBox" TagPrefix="wucConfirmBox" %>
<%@ Register Src="~/Include/sHeader.ascx" TagName="sHeader" TagPrefix="uc1" %>
<%@ Register Src="~/Include/sFooter.ascx" TagName="sFooter" TagPrefix="uc3" %>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>Document Location Entry</title>
    <link rel="Shortcut Icon" href="~/favicon.ico" type="image/x-icon" />
    <script src="../../Scripts/jquery-1.12.4.min.js"></script>
    <link href="../../Scripts/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../../Scripts/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/bootstrap/js/bootstrap.min.js"></script>

    <link href="../../Scripts/select2/select2.min.css" rel="stylesheet" />
    <script src="../../Scripts/select2/select2.min.js"></script>

    <script type="text/javascript">
        $(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>

</head>

<body>
    <br />
    <form id="form1" role="form" method="post" runat="server" autocomplete="off">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <div class="container" style="width: 100%">
            <div class="panel panel-primary">
                <div class="panel-heading" style="text-align: center">
                    <button runat="server" onserverclick="btnHome_Click" type="button" id="btnHome" class="btn btn-info btn-default pull-left" causesvalidation="false"><span class="glyphicon glyphicon-backward">&nbsp;BACK</span> </button>
                    <asp:Label runat="server" ID="Label2" Text="USER ENTRY" SkinID="lblPageTitle"></asp:Label>
                </div>
                <div class="panel-body">
                    <asp:UpdatePanel ID="updatePanel2" runat="server">
                        <ContentTemplate>
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">User ID </span>
                                    <asp:TextBox runat="server" ID="txtUserId" CssClass="form-control"></asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator ID="rfvUserId" runat="server" ControlToValidate="txtUserId" SetFocusOnError="true" Font-Bold="true" Font-Size="13pt" Display="Dynamic" Text="UserID is Required!" />
                            </div>

                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">User Name </span>
                                    <asp:TextBox runat="server" ID="txtUserName" CssClass="form-control"></asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName" SetFocusOnError="true" Font-Bold="true" Font-Size="13pt" Display="Dynamic" Text="UserName is Required!" />
                            </div>

                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">User Role </span>
                                    <asp:DropDownList runat="server" ID="ddluserroleid" CssClass="form-control"></asp:DropDownList>
                                </div>
                                <asp:RequiredFieldValidator InitialValue="0" ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddluserroleid" SetFocusOnError="true" Font-Bold="true" Font-Size="13pt" Display="Dynamic" Text="User Role is Required!" />
                            </div>

                           
                            <div class="form-group">
                                <div class="input-group">
                                    <span class="input-group-addon">Is Active? </span>
                                    <asp:RadioButtonList runat="server" ID="rblIsActive" CssClass="form-control " RepeatDirection="Horizontal">
                                        <asp:ListItem Text="&nbsp;Yes&nbsp;&nbsp;&nbsp;" Value="Y" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="&nbsp;No" Value="N"></asp:ListItem>
                                    </asp:RadioButtonList>
                                </div>
                            </div>

                            <asp:Button runat="server" ID="btnSave" CssClass="btn btn-primary" Text="Save" />
                            <asp:Button runat="server" ID="btnCancel" CssClass="btn btn-danger" Text="Cancel" CausesValidation="false" />
                            <asp:Button runat="server" ID="btnresetpassword" CssClass="btn btn-success" Text="Reset Password" CausesValidation="false" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>

            </div>


        </div>

        <asp:UpdatePanel ID="updatePanel1" runat="server">
            <ContentTemplate>
                <asp:HiddenField runat="server" ID="hfUserID"></asp:HiddenField>
                <asp:HiddenField runat="server" ID="hfOldUserID"></asp:HiddenField>
                <asp:HiddenField runat="server" ID="hfTransid"></asp:HiddenField>
                <wucConfirmBox:wucConfirmBox runat="server" ID="thisMsgBox" />
            </ContentTemplate>
        </asp:UpdatePanel>


        <div>
            <uc1:sHeader ID="sHeader1" runat="server" />
        </div>
        <div>
            <uc3:sFooter ID="sFooter1" runat="server" />
        </div>
    </form>

</body>
</html>
