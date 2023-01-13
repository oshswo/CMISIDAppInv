<%@ WebHandler Language="VB" Class="FileUploadHandlerOperatorImage" %>

Imports System
Imports System.Web

Public Class FileUploadHandlerOperatorImage : Implements IHttpHandler, System.Web.SessionState.IRequiresSessionState

    Dim _clsDB As New clsDatabase
 
    
    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        If (context.Request.Files.Count > 0) Then
            '  MsgBox(context.Request.Files.Count)
            Dim files As HttpFileCollection = context.Request.Files
            Dim _transId As String = context.Request.Form("transId")
            '  MsgBox(context.Request.Form("sig"))
            ' Dim docdesc As String = context.Request.Form("docdesc")
            Dim lastUser As String = context.Request.Form("lastUser")
            
            Dim file As HttpPostedFile = files(0)
            
            Dim file_bytes(file.InputStream.Length) As Byte
            file.InputStream.Read(file_bytes, 0, file_bytes.Length)
           
            With _clsDB.dbUtility
                .fieldItems = "sig_specimen"
                .sqlString = .getSQLStatement("tbl_signatories", "UPDATE", "trans_id")
                .ADDPARAM_CMD_String("sig_specimen", file_bytes)
                .ADDPARAM_CMD_String("trans_id", _transId)
                .executeUsingCommandFromSQL()
            End With
                     
            context.Session("ReqUploaded") = "Y"
                    
            context.Response.ContentType = "application/json"
            context.Response.Write("{}")

        End If
    End Sub
 
    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class