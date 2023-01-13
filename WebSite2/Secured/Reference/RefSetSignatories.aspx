<%@ Page Title="Set Signatories" Language="VB" AutoEventWireup="false" CodeFile="RefSetSignatories.aspx.vb" Inherits="Secured_Reference_RefSetSignatories" Theme="Skins" %>

<!DOCTYPE html>


<%@ Register Src="~/Include/wucConfirmBoxBS.ascx" TagName="wucConfirmBox" TagPrefix="wucConfirmBox" %>
<%@ Register Src="~/Include/wucMainMenuBS.ascx" TagName="wucMainMenu" TagPrefix="uc4" %>

<%@ Register Src="~/Include/sHeader.ascx" TagName="sHeader" TagPrefix="uc1" %>
<%@ Register Src="~/Include/sFooterAdmin.ascx" TagName="sFooter" TagPrefix="uc3" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Set Signatories</title>
    <link rel="Shortcut Icon" href="~/favicon.ico" type="image/x-icon" />
    <script src="../../Scripts/jquery-1.12.4.min.js"></script>
    <link href="../../Scripts/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="../../Scripts/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/bootstrap/js/bootstrap.min.js"></script>

    <link href="../../Scripts/kratik/fileinput/css/fileinput.min.css" rel="stylesheet" />
    <script src="../../Scripts/kratik/fileinput/js/fileinput.min.js"></script>

    <script type="text/javascript">
        $(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });
    </script>

    <script type="text/javascript">
        $(document).ready(function () {

            $("#file_BrandImage").fileinput({
                uploadUrl: 'FileUploadHandlerSignatoryImage.ashx',
                uploadAsync: true,
                allowedFileExtensions: ['jpg', 'png'],
                allowMultiple: true,
                maxFileSize: '5000',
                showUploadedThumbs: false,
                autoReplace: true,
                maxFileCount: '1',
                uploadClass: 'btn btn-success',
                removeClass: 'btn btn-danger',
                uploadExtraData: function () {
                    var info = { "transId": $('#hfTransId').val() };
                    return info;
                }
            });
        }).on('fileuploaded', function () {

            location.href = "RefSetSignatories.aspx";

        });

    </script>

    <style>
        #btnReference {
            background-color: white;
            color: seagreen;
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
                    <asp:Label runat="server" ID="Label1" Text="Set Signatory" SkinID="lblPageTitle"></asp:Label>
                </div>
                <div class="panel-body">



                    <div class="form-group" style="width: 100%">
                        <div class="input-group">
                            <span class="input-group-addon">Certificate/Form</span>
                            <asp:DropDownList runat="server" ID="ddlCertificates" CssClass="form-control" Width="100%" data-toggle="tooltip" data-placement="top" title="Certificates" trigger="hover" Style="text-transform: uppercase; z-index: 0" AutoPostBack="true"></asp:DropDownList>

                        </div>
                    </div>
                    <div>
                        <asp:GridView runat="server" ID="_gv" HeaderStyle-Font-Size="11px" CssClass="table table-bordered table-hover" PageSize="15"
                            PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="NONE" AutoGenerateColumns="false" AllowSorting="true"
                            GridLines="None" Font-Names="Arial" Font-Size="14px" ForeColor="#000000" AllowPaging="true" BorderStyle="Solid" BorderColor="Black">

                            <Columns>

                                <asp:BoundField DataField="form_desc" HeaderText="Form" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="10%" />
                                <asp:BoundField DataField="signature_type" HeaderText="Sig. Type" ItemStyle-HorizontalAlign="Center" HeaderStyle-Width="10%" />
                                <asp:TemplateField HeaderText="Signatory Name" HeaderStyle-Width="20%" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:TextBox runat="server" ID="txtSigName" CssClass="form-control" Text='<%# Bind("signatory_name")%>'></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Signatory Position" HeaderStyle-Width="20%" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:TextBox runat="server" ID="txtSigPosition" TextMode="MultiLine" Rows="5" CssClass="form-control" Text='<%# Bind("signatory_position")%>'></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Signature Specimen" HeaderStyle-Width="20%" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Image runat="server" ImageUrl='<%#Bind("sig_specimen")%>' ID="imgSignatory" Height="120px" Width="400px" Visible="true" />

                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Signature Specimen" ItemStyle-Width="15%" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Button runat="server" ID="btnUploadSig" CommandArgument='<%# Bind("trans_id")%>' OnCommand="cmdGVUploadSig" class="btn btn-info btn-lg" Text="Upload Signature" />
                                        <br />
                                        <asp:Button runat="server" ID="btnRemoveSig" CommandArgument='<%# Bind("trans_id")%>' OnCommand="cmdGVRemoveSig" class="btn btn-danger btn-lg" Text="Remove Signature" />
                                    </ItemTemplate>
                                </asp:TemplateField>


                            </Columns>
                        </asp:GridView>
                    </div>

                </div>
                <div class="panel-footer">

                    <asp:Button runat="server" ID="btnSave" class="btn btn-primary btn-lg" Text="Save" ValidationGroup="DOC" />
                    <asp:Button runat="server" ID="btnCancel" class="btn btn-danger btn-lg" Text="Cancel" CausesValidation="false" />

                </div>
            </div>
        </div>


        <div id="mdlUpload" role="dialog" class="modal fade">
            <div class="modal-dialog" style="width: 80%">

                <!-- Modal content-->
                <div class="modal-content" style="width: 100%">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <span class="glyphicon glyphicon-alt-list"></span>
                    </div>

                    <div class="modal-body">

                        <div class="input-group" style="width: 80%">
                            <span class="input-group-addon">Browse File for Upload :</span>
                            <input id="file_BrandImage" type="file" data-min-file-count="1" />
                        </div>

                    </div>
                </div>

            </div>

        </div>

        <div>
            <uc1:sHeader ID="sHeader1" runat="server" />
            <uc3:sFooter ID="sFooter1" runat="server" />
        </div>

        <asp:UpdatePanel ID="updatePanel1" runat="server">
            <ContentTemplate>
                <asp:HiddenField runat="server" ID="hfTransId"></asp:HiddenField>
                <wucConfirmBox:wucConfirmBox runat="server" ID="thisMsgBox" />
            </ContentTemplate>
        </asp:UpdatePanel>


    </form>


</body>
</html>



