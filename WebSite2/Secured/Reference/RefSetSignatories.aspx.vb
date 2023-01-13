Imports System.Data
Partial Class Secured_Reference_RefSetSignatories
    Inherits cPageInit_Secured_BS

    '  Dim _clsRecord As New clsRefFranchiseRoute

    Dim _dtGV As New DataTable

    Dim _clsDB As New clsDatabase

    Dim _btnOK As New HtmlButton

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then
            _clsDB.populateDDLB(ddlCertificates, "form_desc", "trans_id", "tbl_ref_form_type", "form_desc")
            ddlCertificates.Items.RemoveAt(0)
            ddlCertificates.SelectedValue = Session("DDL_CERT")
            fillGridView()
        End If

        _btnOK = thisMsgBox.FindControl("btnMsgBoxYes")
        AddHandler _btnOK.ServerClick, AddressOf btnOK_Click

    End Sub

    Protected Sub btnOK_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        If thisMsgBox.getModalType = "SAVE RECORD" Then
            saveRecord()
            'Response.Redirect("MotorelaFranchiseNewAdd.aspx")
        ElseIf thisMsgBox.getModalType = "CANCEL UPDATE RECORD" Then
            'Response.Redirect("MotorelaFranchiseNewAdd.aspx")
            fillGridView()

        ElseIf thisMsgBox.getModalType = "REMOVE SIG" Then
            removeSig()

        End If

    End Sub

    Protected Sub fillGridView()

        _dtGV = _clsDB.Fill_DataTable("SELECT tbl_signatories.trans_id,form_desc,signature_type,signatory_name,signatory_position, " & _
                                      "CONCAT('data:image/png;base64,',TO_BASE64(sig_specimen)) AS sig_specimen FROM tbl_signatories " & _
                                      "INNER JOIN tbl_ref_form_type ON tbl_signatories.form_type = tbl_ref_form_type.trans_id " & _
                                      "WHERE form_type = '" & ddlCertificates.SelectedValue & "'")
        Session("DTGV") = _dtGV
        _gv.DataSource = _dtGV
        _gv.DataBind()

        Session("DDL_CERT") = ddlCertificates.SelectedValue

    End Sub

    Protected Sub ddlCertificates_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlCertificates.SelectedIndexChanged
        fillGridView()
    End Sub

    Public Sub saveRecord()
        Dim dt As New DataTable

        dt = Session("DTGV")

        For Each _gvr As GridViewRow In _gv.Rows
            With _clsDB.dbUtility
                .fieldItems = "signatory_name,signatory_position"
                .sqlString = .getSQLStatement("tbl_signatories", "UPDATE", "trans_id")
                .ADDPARAM_CMD_String("signatory_name", CType(_gvr.FindControl("txtSigName"), TextBox).Text)
                .ADDPARAM_CMD_String("signatory_position", CType(_gvr.FindControl("txtSigPosition"), TextBox).Text)
                .ADDPARAM_CMD_String("trans_id", dt.Rows(_gvr.RowIndex)("trans_id"))
                .executeUsingCommandFromSQL()
            End With
        Next

    End Sub

    Protected Sub btnSave_Click(sender As Object, e As EventArgs) Handles btnSave.Click
        thisMsgBox.setConfirm()
        thisMsgBox.setHeader("BLUE")

        thisMsgBox.setModalType("SAVE RECORD")
        thisMsgBox.setHeaderText("UPDATE RECORD")
        thisMsgBox.setMessage("Update Record Information ?")

        thisMsgBox.showConfirmBox()

    End Sub

    Protected Sub btnCancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
        thisMsgBox.setConfirm()
        thisMsgBox.setHeader("INDIANRED", "YELLOW")
        thisMsgBox.setModalType("CANCEL UPDATE RECORD")
        thisMsgBox.setHeaderText("CANCEL UPDATE RECORD")
        thisMsgBox.setMessage("CANCEL updating a document ?")
        thisMsgBox.showConfirmBox()
    End Sub

    Protected Sub cmdGVUploadSig(ByVal sender As Object, ByVal e As CommandEventArgs)
        hfTransId.Value = e.CommandArgument.ToString()
        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "mdlUpload", "$('#mdlUpload').modal();", True)

    End Sub

    Private Sub removeSig()
        With _clsDB.dbUtility
            .fieldItems = "sig_specimen"
            .sqlString = .getSQLStatement("tbl_signatories", "UPDATE", "trans_id")
            .ADDPARAM_CMD_String("sig_specimen", Nothing)
            .ADDPARAM_CMD_String("trans_id", hfTransId.Value)
            .executeUsingCommandFromSQL()
        End With
        Response.Redirect("RefSetSignatories.aspx")
    End Sub

    Protected Sub cmdGVRemoveSig(ByVal sender As Object, ByVal e As CommandEventArgs)
        hfTransId.Value = e.CommandArgument.ToString()
        thisMsgBox.setHeader("INDIANRED", "YELLOW")
        thisMsgBox.setModalType("REMOVE SIG")
        thisMsgBox.setHeaderText("REMOVE")
        thisMsgBox.setMessage("Remove signature image ?")
        thisMsgBox.showConfirmBox()
    End Sub
End Class
