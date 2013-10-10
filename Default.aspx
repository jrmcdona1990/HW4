<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <link rel="stylesheet" type="text/css" href="style.css" />
    <form id="form1" runat="server">
    <div>
    
        <p>
            <h1 ALIGN="center" STYLE="background: yellow; font: 40 Comic Sans MS; font-variant: small-caps; border: thick dashed black"> Calculator Application </h1>
        </p>
        <h3>
            Hours Worked:</h3>
        <p>
            <asp:TextBox ID="TbHoursWorked" runat="server" style="margin-left: 6px" Width="83px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="**Please Enter Hours Worked" ControlToValidate="TbHoursWorked"></asp:RequiredFieldValidator>
       </p>
            <h3>Wage:</h3>
        <p>
            <asp:TextBox ID="TbWage" runat="server" Height="22px" style="margin-left: 6px" Width="83px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="**Please Enter Wage Amount" ControlToValidate="TbWage"></asp:RequiredFieldValidator>
        </p>
      
            <h3>Pre-Tax Deductions:</h3>
        <p>
            <asp:TextBox ID="tbPreTax" runat="server" Wrap="False" style="margin-left: 6px" Width="83px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="**Please Enter Pre-Tax Duction Amount" ControlToValidate="tbPreTax"></asp:RequiredFieldValidator>
        </p>
   
            <h3>Post Tax Deductions:</h3>
        <p>
            <asp:TextBox ID="TbPostTax" runat="server" Width="83px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="**Please Enter Post Tax Amount" ControlToValidate="TbPostTax"></asp:RequiredFieldValidator>
        </p>

            <h3>Net Income:<asp:Label ID="lblSalaryPay" runat="server"></asp:Label></h3>
    
        <p>
            <asp:Button ID="Button1" runat="server" Text="Calculate " />
            <asp:Button ID="Button2" runat="server" Text="Clear" />
        </p>
    
    </div>
    </form>
</body>
</html>
