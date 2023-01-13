<%@ Page Title="User Permission" Language="VB" AutoEventWireup="false" CodeFile="UserPermission.aspx.vb" Inherits="Secured_SystemAdministration_UserPermission" Theme="Skins" MasterPageFile="~/MasterPage/Admin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpConTent" runat="Server">
    <div class="container-fluid">
        <div class="panel panel-warning">
            <div class="panel-heading" style="text-align: center">
                <asp:Label runat="server" ID="Label1" Text="User Permission" SkinID="lblPageTitle"></asp:Label>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-10">
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon">Search </span>
                                <asp:TextBox runat="server" Width="100%" CssClass="form-control" Style="z-index: 0; text-transform: uppercase;" ID="txtSearch"></asp:TextBox>
                                <div class="input-group-btn">
                                    <button runat="server" class="btn btn-success" onserverclick="btnSearch_Click"><span class="glyphicon glyphicon-filter"></span>&nbsp;Filter</button>
                                </div>
                                <span class="input-group-addon" style="background-color: white">
                                    <asp:Label runat="server" ID="lblPaging" CssClass="pull-right "></asp:Label>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>

                <asp:GridView runat="server" ID="_gv" SkinID="gvDefault">
                    <Columns>
                        <asp:TemplateField HeaderText="Employee ID" HeaderStyle-Width="10%">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" ID="lnkGV" SkinID="lnkButton" OnCommand="cmdGVUpdate"
                                    CommandArgument='<%# bind("user_id")%>' Text='<%# bind("user_id") %>' ToolTip="Click to View/Edit" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="user_name" HeaderText="User Name" ItemStyle-Width="30%" />
                    </Columns>
                </asp:GridView>

            </div>
        </div>

    </div>
</asp:Content>





