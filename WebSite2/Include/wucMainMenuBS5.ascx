<%@ Control Language="VB" AutoEventWireup="false" CodeFile="wucMainMenuBS5.ascx.vb" Inherits="Include_wucMainMenuBS" %>

<style type="text/css">
    .navbar {
        margin-top: 20px;
    }
</style>

<!-- Sidebar-->
<nav class="border-end bg-white" id="sidebar-wrapper">
    <div class="sidebar-heading border-bottom bg-light">CMISID APPLICATION</div>
    <div class="list-group list-group-flush" runat="server" id="navMenu">
        <%--<a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Dashboard</a>
        <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Shortcuts</a>
        <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Overview</a>
        <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Events</a>
        <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Profile</a>
        <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Status</a>--%>
        <%--<a
            href="#"
            class="list-group-item list-group-item-action py-2 ripple collapsed" data-bs-toggle="collapse" data-bs-target="#menuDrop1" aria-expanded="false">
            <i class="fas fa-chart-area fa-fw me-3"></i><span>Webiste traffic</span>
        </a>--%>

        <%--        <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!" data-bs-toggle="collapse" data-bs-target="#menuDrop1" aria-expanded="false">Status</a>

        <div class="collapse" id="menuDrop1" style="">
            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1">
                <li><a href="#" class="link-dark rounded">New</a></li>
                <li><a href="#" class="link-dark rounded">Processed</a></li>
                <li><a href="#" class="link-dark rounded">Shipped</a></li>
                <li><a href="#" class="link-dark rounded">Returned</a></li>
            </ul>
        </div>--%>


       <%-- <a href='/Secured/Home.aspx' class='list-group-item list-group-item-action list-group-item-light p-3'>Home</a>
        <a href='#' class='list-group-item list-group-item-action list-group-item-light p-3' data-bs-toggle='collapse' data-bs-target="#menu1" aria-expanded='false'>Application</a>
        <div class='collapse' id="menu1">
            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1">
                <li><a href='/Secured/TaxRelief/EntryApplication.aspx' class='link-dark rounded'>Entry</a></li>
                <li><a href='/Secured/TaxRelief/ValidateRegistration.aspx' class='link-dark rounded'>Validate</a></li>
                <li><a href='/Secured/TaxRelief/PrintAvailment.aspx' class='link-dark rounded'>Print Availment</a></li>
                <li><a href='/Secured/TaxRelief/AvailmentNotify.aspx' class='link-dark rounded'>Notify to Claim</a></li>
                <li><a href='/Secured/TaxRelief/AvailmentTagClaimed.aspx' class='link-dark rounded'>Tag Claimed</a></li>
                <li><a href='/Secured/TaxRelief/TagStatus.aspx' class='link-dark rounded'>Tag Status</a></li>
                <li><a href='/Secured/TaxRelief/AvailmentTagPaid.aspx' class='link-dark rounded'>Tag Paid</a></li>
            </ul>
        </div>

        <a href='' class='list-group-item list-group-item-action list-group-item-light p-3' data-bs-toggle='collapse' data-bs-target='#83' aria-expanded='false'>Reference</a>
        <div class='collapse' id='83' style=''>
            <ul class='btn-toggle-nav list-unstyled fw-normal pb-1'>
                <li><a href='/Secured/Reference/RefSetSignatories.aspx' class='link-dark rounded'>Set Signatory</a></li>
            </ul>
        </div>
        <a href='' class='list-group-item list-group-item-action list-group-item-light p-3' data-bs-toggle='collapse' data-bs-target='#60' aria-expanded='false'>Report</a><div class='collapse' id='60' style=''>
            <ul class='btn-toggle-nav list-unstyled fw-normal pb-1'>
                <li><a href='/Secured/TaxRelief/Report/ReportUserRecord.aspx' class='link-dark rounded'>User Entry Record</a></li>
                <li><a href='/Secured/TaxRelief/Report/ReportAvailmentAmount.aspx' class='link-dark rounded'>Availment Amount</a></li>
            </ul>
        </div>
        <a href='' class='list-group-item list-group-item-action list-group-item-light p-3' data-bs-toggle='collapse' data-bs-target='#64' aria-expanded='false'>User Account</a><div class='collapse' id='64' style=''>
            <ul class='btn-toggle-nav list-unstyled fw-normal pb-1'>
                <li><a href='/Secured/UserAdmin/adminUserEntry.aspx' class='link-dark rounded'>User Entry</a></li>
                <li><a href='/Secured/UserAdmin/adminUserPermission.aspx' class='link-dark rounded'>User Permission</a></li>
            </ul>
        </div>
        <a href='' class='list-group-item list-group-item-action list-group-item-light p-3' data-bs-toggle='collapse' data-bs-target='#1' aria-expanded='false'>Administration</a>
           <div class='collapse' id='1' style=''>
            <ul class='btn-toggle-nav list-unstyled fw-normal pb-1'>
                <li><a href='/Secured/SystemAdministration/UserEntry.aspx' class='link-dark rounded'>User Account</a></li>
                <li><a href='/Secured/SystemAdministration/UserRole.aspx' class='link-dark rounded'>User Role</a></li>
                <li><a href='/Secured/SystemAdministration/UserPermission.aspx' class='link-dark rounded'>User Permission</a></li>
                <li><a href='/Secured/SystemAdministration/RolePermission.aspx' class='link-dark rounded'>Role Permission</a></li>
                <li><a href='/Secured/SystemAdministration/cmsMenu.aspx' class='link-dark rounded'>CMS</a></li>
                <li><a href='/Secured/SystemAdministration/SystemUsers.aspx' class='link-dark rounded'>System Users</a></li>
            </ul>
        </div>--%>
       <%-- <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!" data-bs-toggle="collapse" data-bs-target="#tt" aria-expanded="false">Status</a>

        <div class="collapse" id="tt" style="">
            <ul class="btn-toggle-nav list-unstyled fw-normal pb-1">
                <li><a href="#" class="link-dark rounded">New</a></li>
                <li><a href="#" class="link-dark rounded">Processed</a></li>
                <li><a href="#" class="link-dark rounded">Shipped</a></li>
                <li><a href="#" class="link-dark rounded">Returned</a></li>
            </ul>
        </div>--%>
    </div>
</nav>

<!-- Sidebar -->






