<%@ Page Title="User Permission" Language="VB" AutoEventWireup="false" CodeFile="adminUserPermission.aspx.vb" Inherits="Secured_UserAdmin_adminUserPermission" Theme="Skins" %>

<!DOCTYPE html>

<%@ Register Src="~/Include/wucConfirmBoxBS.ascx" TagName="wucConfirmBox" TagPrefix="wucConfirmBox" %>
<%@ Register Src="~/Include/wucMainMenuBS.ascx" TagName="wucMainMenu" TagPrefix="uc4" %>

<%@ Register Src="~/Include/sHeader.ascx" TagName="sHeader" TagPrefix="uc1" %>
<%@ Register Src="~/Include/sFooter.ascx" TagName="sFooter" TagPrefix="uc3" %>

<html xmlns="http://www.w3.org/1999/xhtml">

<head id="Head1" runat="server">
    <title>User Permission</title>
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

    <style>
        #btnUserEntry {
            background-color: white;
            color: seagreen;
        }

        .modal .modal-dialog {
            width: 80%;
            margin-left: auto;
            margin-right: auto;
        }

        .modal-content {
            max-height: 95vh;
            overflow: scroll;
        }

        .modal-body {
            max-height: 90vh;
        }
    </style>
</head>

<body>
    <form id="form1" role="form" method="post" runat="server" autocomplete="off">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <div class="container" style="width: 100%">
            <uc4:wucMainMenu ID="wucMainMenu2" runat="server" />
        </div>

        <div class="container" style="width: 100%">

            <div class="panel panel-primary">
                <div class="panel-heading" style="text-align: center">
                    <asp:Label runat="server" ID="Label1" Text="User Permission" SkinID="lblPageTitle"></asp:Label>
                </div>
                <div class="panel-body">
                    <table style="width: 100%">
                        <tr>
                            <td style="text-align: left; width: 60%">

                                <div class="form-group">
                                    <div class="input-group">
                                        <span class="input-group-addon">Search </span>

                                        <asp:TextBox runat="server" Width="100%" CssClass="form-control" Style="z-index: 0; text-transform: uppercase;" ID="txtSearch"></asp:TextBox>
                                    </div>
                                </div>


                            </td>
                            <td style="text-align: right; width: 40%">
                                <div class="form-group">

                                    <button runat="server" class="btn btn-primary" onserverclick="btnSearch_Click"><span class="glyphicon glyphicon-filter"></span>&nbsp;Filter</button>
                                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label runat="server" ID="lblPaging"></asp:Label>
                                </div>
                            </td>
                        </tr>
                    </table>

                    <asp:GridView runat="server" ID="_gv" HeaderStyle-Font-Size="11px" CssClass="gridviewYellow" PageSize="10"
                        PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" AutoGenerateColumns="false" AllowSorting="true"
                        GridLines="None" Font-Names="Arial" Font-Size="14px" ForeColor="#000000" AllowPaging="true">
                        <Columns>
                            <asp:TemplateField HeaderText="" HeaderStyle-Width="1%" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                <ItemTemplate>
                                    <asp:ImageButton runat="server" ID="lnkEdit" ImageUrl="~/images/edit.png" OnCommand="cmdGVSelect"
                                        CommandArgument='<%# Bind("user_id")%>' ToolTip="Click to View/Edit Record" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="user_id" HeaderText="User ID" ItemStyle-Width="25%" />
                            <asp:BoundField DataField="user_name" HeaderText="User Name" ItemStyle-Width="25%" />
                                                  </Columns>
                    </asp:GridView>

                </div>

            </div>

        </div>

        <div>
            <uc1:sHeader ID="sHeader1" runat="server" />
        </div>
        <div>
            <uc3:sFooter ID="sFooter1" runat="server" />
        </div>
    </form>

</body>

</html>

