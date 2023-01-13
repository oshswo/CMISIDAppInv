<%@ Page Title="User Entry" Language="VB" AutoEventWireup="false" CodeFile="UserEntry.aspx.vb" Inherits="Secured_SystemAdministration_UserEntry" MasterPageFile="~/MasterPage/Admin.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpConTent" runat="Server">
     <div class="container-fluid">
           
            <div class="panel panel-warning">
                <div class="panel-heading" style="text-align: center;">
                    <asp:Label runat="server" ID="lblPageTitle" Text="User Entry" Font-Size="18px"
                        ForeColor="#000000"></asp:Label>
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
                            <asp:TemplateField HeaderText="User ID" HeaderStyle-Width="20%" ItemStyle-HorizontalAlign="Left">
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" ID="lnkGV" SkinID="lnkButton" OnCommand="cmdGVUpdate" CommandArgument='<%# bind("user_id")%>' Text='<%# bind("user_id") %>' ToolTip="Click to View/Edit" />
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:BoundField DataField="user_name" HeaderText="User Name" ItemStyle-Width="40%" />
                        </Columns>
                    </asp:GridView>
                </div>

               <%-- <div class="modal-footer">--%>
                    <asp:Button runat="server" ID="btnAdd" CssClass="btn btn-primary" Text="Add" />
               <%-- </div>--%>
            </div>
        </div>
</asp:Content>




