<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default2.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet" />

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-size: 14px;
        }

        .v20_558 {
            width: 100%;
            height: 1080px;
            background: url("../images/v20_558.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: relative;
            top: 0px;
            left: 0px;
            overflow: hidden;
        }

        .v20_559 {
            width: 100%;
            height: 100%;
            background: rgba(214,214,214,1);
            opacity: 1;
            position: relative;
            top: 0px;
            left: 0px;
            overflow: hidden;
        }

        .v20_560 {
            width: 398px;
            height: 100%;
            background: linear-gradient(rgba(25,103,164,1), rgba(24,102,164,0.6899999976158142));
            opacity: 1;
            position: absolute;
            top: 2px;
            left: 0px;
            overflow: hidden;
        }

        .v20_561 {
            width: 354px;
            color: rgba(246,246,246,1);
            position: absolute;
            top: 985px;
            left: 0px;
            font-family: Montserrat;
            font-weight: Regular;
            font-size: 32px;
            opacity: 1;
            text-align: center;
        }

        .v20_563 {
            width: 235px;
            color: rgba(246,246,246,1);
            position: absolute;
            top: 360px;
            left: 47px;
            font-family: Montserrat;
            font-weight: Regular;
            font-size: 24px;
            opacity: 1;
            text-align: left;
        }

        .v20_564 {
            width: 50px;
            height: 50px;
            background: rgba(246,246,246,0);
            opacity: 1;
            position: absolute;
            top: 73px;
            left: 149px;
            overflow: hidden;
        }

        .v20_565 {
            width: 71px;
            height: 71px;
            background: url("../images/v20_565.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 899px;
            left: 149px;
            overflow: hidden;
        }

        .v20_566 {
            width: 100%;
            height: 100%;
            background: rgba(246,246,246,1);
            opacity: 1;
            position: absolute;
            top: 0px;
            left: 326px;
            border-top-left-radius: 15px;
            border-bottom-left-radius: 15px;
            box-shadow: 0px 4px 25px rgba(0, 0, 0, 0.15000000596046448);
            overflow: hidden;
        }

        .v20_570 {
            width: 603px;
            color: rgba(25,103,164,1);
            position: absolute;
            top: 61px;
            left: 259px;
            font-family: Montserrat;
            font-weight: SemiBold;
            font-size: 48px;
            opacity: 1;
            text-align: left;
        }

        .v20_578 {
            width: 15px;
            height: 10px;
            background: rgba(246,246,246,1);
            opacity: 1;
            position: absolute;
            top: 369px;
            left: 311px;
        }

        .v25_654 {
            width: 15px;
            height: 10px;
            background: rgba(246,246,246,1);
            opacity: 1;
            position: absolute;
            top: 320px;
            left: 311px;
        }

        .v20_579 {
            width: 235px;
            height: 37px;
            background: url("../images/v20_579.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 413px;
            left: 51px;
            overflow: hidden;
        }

        .v20_580 {
            width: 235px;
            color: rgba(246,246,246,1);
            position: absolute;
            top: 0px;
            left: 0px;
            font-family: Montserrat;
            font-weight: Regular;
            font-size: 24px;
            opacity: 1;
            text-align: left;
        }

        .v20_585 {
            width: 235px;
            color: rgba(246,246,246,1);
            position: absolute;
            top: 306px;
            left: 51px;
            font-family: Montserrat;
            font-weight: Regular;
            font-size: 24px;
            opacity: 1;
            text-align: left;
        }

        .v26_709 {
            width: 297px;
            height: 114px;
            background: url("../images/v26_709.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 70px;
            left: 37px;
            overflow: hidden;
        }

        .v20_562 {
            width: 290px;
            color: rgba(246,246,246,1);
            position: absolute;
            top: 77px;
            left: 0px;
            font-family: Montserrat;
            font-weight: Bold;
            font-size: 28px;
            opacity: 1;
            text-align: left;
        }

        .v20_577 {
            width: 15px;
            height: 10px;
            background: rgba(246,246,246,1);
            opacity: 1;
            position: absolute;
            top: 95px;
            left: 282px;
        }

        .v20_590 {
            width: 50px;
            height: 50px;
            background: rgba(246,246,246,1);
            opacity: 1;
            position: absolute;
            top: 0px;
            left: 115px;
        }

        .v20_591 {
            width: 377px;
            height: 24px;
            background: url("../images/v20_591.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 231px;
            left: 226px;
            overflow: hidden;
        }

        .v20_593 {
            width: 377px;
            color: rgba(25,103,164,1);
            position: absolute;
            top: 0px;
            left: 0px;
            font-family: Montserrat;
            font-weight: Medium;
            font-size: 24px;
            opacity: 1;
            text-align: left;
        }

        .v20_616 {
            width: 763px;
            height: 35px;
            background: url("../images/v20_616.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 296px;
            left: 226px;
            overflow: hidden;
        }

        .v20_618 {
            width: 763px;
            color: rgba(25,103,164,1);
            position: absolute;
            top: 0px;
            left: 0px;
            font-family: Montserrat;
            font-weight: Regular;
            font-size: 20px;
            opacity: 1;
            text-align: left;
        }

        .v25_688 {
            width: 109px;
            height: 35px;
            background: url("../images/v25_688.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 258px;
            left: 226px;
            overflow: hidden;
        }

        .v25_690 {
            width: 109px;
            color: rgba(25,103,164,1);
            position: absolute;
            top: 0px;
            left: 0px;
            font-family: Montserrat;
            font-weight: Regular;
            font-size: 20px;
            opacity: 1;
            text-align: left;
        }

        .v20_624 {
            width: 611px;
            height: 50px;
            background: url("../images/v20_624.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 358px;
            left: 231px;
            overflow: hidden;
        }

        .v20_625 {
            width: 611px;
            height: 50px;
            background: rgba(255,251,251,1);
            opacity: 1;
            position: absolute;
            top: 0px;
            left: 0px;
            border: 2px solid linear-gradient(rgba(25,103,164,1), rgba(24,102,164,0.4300000071525574));
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            overflow: hidden;
        }

        .v20_626 {
            width: 469px;
            color: rgba(25,103,164,1);
            position: absolute;
            top: 12px;
            left: 22px;
            font-family: Montserrat;
            font-weight: Regular;
            font-size: 20px;
            opacity: 1;
            text-align: left;
        }

        .v20_627 {
            width: 292px;
            height: 50px;
            background: url("../images/v20_627.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 431px;
            left: 230px;
            overflow: hidden;
        }

        .v20_628 {
            width: 292px;
            height: 50px;
            background: rgba(255,251,251,1);
            opacity: 1;
            position: absolute;
            top: 0px;
            left: 0px;
            border: 2px solid linear-gradient(rgba(25,103,164,1), rgba(24,102,164,0.4300000071525574));
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            overflow: hidden;
        }

        .v20_630 {
            width: 291px;
            height: 50px;
            background: url("../images/v20_630.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 431px;
            left: 90px;
            overflow: hidden;
        }

        .v20_631 {
            width: 291px;
            height: 50px;
            background: rgba(255,251,251,1);
            opacity: 1;
            position: absolute;
            top: 0px;
            left: 0px;
            border: 2px solid linear-gradient(rgba(25,103,164,1), rgba(24,102,164,0.4300000071525574));
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            overflow: hidden;
        }

        .v20_632 {
            width: 201px;
            color: url("../images/v20_632.png");
            position: absolute;
            top: 11px;
            left: 16px;
            font-family: Montserrat;
            font-weight: Regular;
            font-size: 20px;
            opacity: 1;
            text-align: left;
        }

        .v20_651 {
            width: 611px;
            height: 49px;
            background: url("../images/v20_651.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 540px;
            left: 230px;
            overflow: hidden;
        }

        .v20_652 {
            width: 611px;
            height: 49px;
            background: linear-gradient(rgba(73,176,78,1), rgba(73,177,78,0.5));
            opacity: 1;
            position: absolute;
            top: 0px;
            left: 0px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
            border-bottom-left-radius: 10px;
            border-bottom-right-radius: 10px;
            overflow: hidden;
        }

        .v20_653 {
            width: 149px;
            color: rgba(246,246,246,1);
            position: absolute;
            top: 10px;
            left: 230px;
            font-family: Montserrat;
            font-weight: SemiBold;
            font-size: 24px;
            opacity: 1;
            text-align: center;
        }

        .v25_670 {
            width: 355px;
            height: 123px;
            background: url("../images/v25_670.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 195px;
            left: 0px;
            overflow: hidden;
        }

        .name {
            color: #fff;
        }

        .name {
            color: #fff;
        }

        .v25_677 {
            width: 253px;
            color: rgba(25,103,164,1);
            position: absolute;
            top: 11px;
            left: 66px;
            font-family: Montserrat;
            font-weight: Medium;
            font-size: 24px;
            opacity: 1;
            text-align: left;
        }

        .v25_678 {
            width: 235px;
            color: rgba(25,103,164,1);
            position: absolute;
            top: 62px;
            left: 66px;
            font-family: Montserrat;
            font-weight: Regular;
            font-size: 24px;
            opacity: 1;
            text-align: left;
        }

        .v25_684 {
            width: 32px;
            height: 29px;
            background: url("../images/v25_684.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 261px;
            left: 31px;
            overflow: hidden;
        }

        .v25_685 {
            width: 16px;
            height: 25px;
            background: rgba(25,103,164,1);
            opacity: 1;
            position: absolute;
            top: 1px;
            left: 4px;
        }

        .v25_686 {
            width: 18px;
            height: 10px;
            background: rgba(25,103,164,1);
            opacity: 1;
            position: absolute;
            top: 9px;
            left: 10px;
        }

        .v25_687 {
            width: 32px;
            height: 29px;
            background: url("../images/v25_687.png");
            opacity: 1;
            position: absolute;
            top: 0px;
            left: 0px;
        }

        .v26_701 {
            width: 30px;
            height: 9px;
            background: url("../images/v26_701.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 450px;
            left: 210px;
            overflow: hidden;
        }

        .v26_702 {
            width: 30px;
            height: 9px;
            background: rgba(25,103,164,1);
            opacity: 1;
            position: absolute;
            top: 0px;
            left: 0px;
        }

        .v26_703 {
            width: 30px;
            height: 9px;
            background: url("../images/v26_703.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 450px;
            left: 180px;
            overflow: hidden;
        }

        .v26_704 {
            width: 30px;
            height: 9px;
            background: rgba(25,103,164,1);
            opacity: 1;
            position: absolute;
            top: 0px;
            left: 0px;
        }

        .v26_705 {
            width: 30px;
            height: 9px;
            background: url("../images/v26_705.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 450px;
            left: 150px;
            overflow: hidden;
        }

        .v26_706 {
            width: 30px;
            height: 9px;
            background: rgba(25,103,164,1);
            opacity: 1;
            position: absolute;
            top: 0px;
            left: 0px;
        }

        .v26_707 {
            width: 30px;
            height: 9px;
            background: url("../images/v26_707.png");
            background-repeat: no-repeat;
            background-position: center center;
            background-size: cover;
            opacity: 1;
            position: absolute;
            top: 450px;
            left: 119px;
            overflow: hidden;
        }

        .v26_708 {
            width: 30px;
            height: 9px;
            background: rgba(25,103,164,1);
            opacity: 1;
            position: absolute;
            top: 0px;
            left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="v20_558">
            <div class="v20_559"></div>
            <div class="v20_560"></div>
            <span class="v20_561">CMISID Application Inventory System</span><span class="v20_563">User Management</span><div class="v20_564"></div>
            <div class="v20_565"></div>
            <div class="v20_566"></div>
            <span class="v20_570">Update Credentials</span><div class="v20_578"></div>
            <div class="v25_654"></div>
            <div class="v20_579"><span class="v20_580">Report</span></div>
            <span class="v20_585">Application</span><div class="v26_709">
                <span class="v20_562">MORENO, NOEL S.</span><div class="v20_577"></div>
                <div class="v20_590"></div>
            </div>
            <div class="v20_591"><span class="v20_593">MORENO, NOEL S.</span></div>
            <div class="v20_616"><span class="v20_618">Software Development and Database Management Division</span></div>
            <div class="v25_688"><span class="v25_690">Dev, PM</span></div>
            <div class="v20_624">
                <div class="v20_625"></div>
                <span class="v20_626">Appleinc345</span>
            </div>
            <div class="v20_627">
                <div class="v20_628"></div>
            </div>
            <div class="v20_630">
                <div class="v20_631"></div>
                <span class="v20_632">|Confirm Password</span>
            </div>
            <div class="v20_651">
                <div class="v20_652"></div>
                <span class="v20_653">Save</span>
            </div>
            <div class="v25_670">
                <div class="name"></div>
                <div class="name"></div>
                <span class="v25_677">Update Credentials</span><span class="v25_678">Logout</span>
            </div>
            <div class="v25_684">
                <div class="v25_685"></div>
                <div class="v25_686"></div>
                <div class="v25_687"></div>
            </div>
            <div class="v26_701">
                <div class="v26_702"></div>
            </div>
            <div class="v26_703">
                <div class="v26_704"></div>
            </div>
            <div class="v26_705">
                <div class="v26_706"></div>
            </div>
            <div class="v26_707">
                <div class="v26_708"></div>
            </div>
        </div>
    </form>
</body>
</html>


