<%@ Page Title="Menu" Language="VB" AutoEventWireup="false" CodeFile="cmsMenuAdd.aspx.vb" Inherits="Secured_cmsMenuAdd" Theme="Skins" %>

<!DOCTYPE html>
<%@ Register Src="~/Include/wucConfirmBoxBS.ascx" TagName="wucConfirmBox" TagPrefix="wucConfirmBox" %>
<%@ Register Src="~/Include/sHeader.ascx" TagName="sHeader" TagPrefix="uc1" %>
<%@ Register Src="~/Include/sFooterAdmin.ascx" TagName="sFooter" TagPrefix="uc3" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
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

        <div class="container-fluid">
            <div class="panel panel-primary">
                <div class="panel-heading" style="text-align: center">
                    <button runat="server" onserverclick="btnHome_Click" type="button" id="btnHome" class="btn btn-info btn-default pull-left" causesvalidation="false"><span class="glyphicon glyphicon-backward">&nbsp;BACK</span> </button>
                    <asp:Label runat="server" ID="Label2" Text="Menu" SkinID="lblPageTitle"></asp:Label>
                </div>

                <div class="panel-body">
                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">Menu : </span>
                            <asp:TextBox runat="server" ID="txtmenu" CssClass="form-control" ToolTip="Text"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtmenu" SetFocusOnError="true" Font-Bold="true" Font-Size="13pt" Display="Dynamic" Text="Menu is Required!" ValidationGroup="DOC" />
                    </div>

                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">Page URL : </span>
                            <asp:TextBox runat="server" ID="txtpageurl" CssClass="form-control" ToolTip="Text"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">Sort Order : </span>
                            <asp:TextBox runat="server" ID="txtSortOrder" TextMode="Number" CssClass="form-control" ToolTip="Text"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" InitialValue="" ControlToValidate="txtmenu" SetFocusOnError="true" Font-Bold="true" Font-Size="13pt" Display="Dynamic" Text="Sort Order is Required!" ValidationGroup="DOC" />
                    </div>

                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">Is Public? </span>
                            <asp:RadioButtonList runat="server" ID="rdolispublic" CssClass="form-control " RepeatDirection="Horizontal">
                                <asp:ListItem Text="&nbsp;Yes&nbsp;&nbsp;&nbsp;" Value="Y" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="&nbsp;No" Value="N"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon">Is Active? </span>
                            <asp:RadioButtonList runat="server" ID="rdolisactive" CssClass="form-control " RepeatDirection="Horizontal">
                                <asp:ListItem Text="&nbsp;Yes&nbsp;&nbsp;&nbsp;" Value="Y" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="&nbsp;No" Value="N"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>

                </div>

                <div class="modal-footer">
                    <asp:Button runat="server" ID="btnSave" CssClass="btn btn-primary" Text="Save" ValidationGroup="DOC" />
                    <asp:Button runat="server" ID="btnCancel" CssClass="btn btn-danger" Text="Cancel" CausesValidation="false" />
                </div>
            </div>
        </div>

        <asp:UpdatePanel ID="updatePanel1" runat="server">
            <ContentTemplate>
                <wucConfirmBox:wucConfirmBox runat="server" ID="thisMsgBox" />
            </ContentTemplate>
        </asp:UpdatePanel>

        <%-- <div>
            <uc1:sHeader ID="sHeader1" runat="server" />
        </div>
        <div>
            <uc3:sFooter ID="sFooter1" runat="server" />
        </div>--%>
    </form>
</body>
</html>



