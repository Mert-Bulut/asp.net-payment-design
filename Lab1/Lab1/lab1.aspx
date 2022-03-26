<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab1.aspx.cs" Inherits="Lab1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title></title>
        <style type="text/css">
            .div-1 {
            }
            .div-2 {
                background-color: #d4d4d4;
                font-style:normal;
                font-family:Arial;
                font-size:17px;
            }
        </style>
    </head>
    <body>
        <form id="form1" runat="server">
            <div>
                <div style= "height: 350px; width:673px; margin-left: 100px; margin-top:100px;" class="div-2">
                    <br/>
                    <table>
                        <tr>
                            <td style ="height: 60px; width:80px;"><asp:Image ID="Visa" runat="server" src="images/visa.PNG" Height="60px" Width="80px"/></td>
                            <td style ="height: 60px; width:80px;"><asp:Image ID="Mastercard" runat="server" src="images/mastercard.PNG" Height="60px" Width="80px"/></td>
                            <td style ="height: 60px; width:80px;"><asp:Image ID="BCGlobal" runat="server" src="images/bccard.jpeg" Height="60px" Width="80px"/></td>
                            <td style ="height: 60px; width:80px;"><asp:Image ID="Carte" runat="server" src="images/carte.jpeg" Height="60px" Width="80px"/></td>
                            <td style ="height: 60px; width:80px;"><asp:Image ID="Diners" runat="server" src="images/diners.PNG" Height="60px" Width="80px"/></td>
                            <td style ="height: 60px; width:80px;"><asp:Image ID="Discover" runat="server" src="images/discover.PNG" Height="60px" Width="80px"/></td>
                            <td style ="height: 60px; width:80px;"><asp:Image ID="Maestro" runat="server" src="images/maestro.jpeg" Height="60px" Width="80px"/></td>
                            <td style ="height: 60px; width:80px;"><asp:Image ID="Amex" runat="server" src="images/amex.PNG" Height="60px" Width="80px"/></td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td style ="width:120px;"> Name Surname </td>
                            <td style ="width:366px;"><asp:TextBox ID="TextBox3" runat="server" Width="175px"></asp:TextBox><asp:TextBox ID="TextBox4" runat="server" Width="175px"></asp:TextBox></td>
                            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Name is Empty!"></asp:RequiredFieldValidator>
                                <br/><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Surname is Empty!"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style ="width:120px;"> Card Number </td>
                                <td style ="width:366px;"><asp:TextBox ID="TextBox1" runat="server" Width="358px" TextMode="Number" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>
                                <td><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Card Number!!" 
                                    ValidationExpression="^(?:4[0-9]{12}(?:[0-9]{3})?|[25][1-7][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$"></asp:RegularExpressionValidator>
                                    <br/><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Card Number is Empty!"></asp:RequiredFieldValidator></td>
                            </tr>
                    </table>
                    <table>
                        <tr>
                            <td style ="width:175px; height:50px;"></td>
                            <td style ="width:120px;">&nbsp;&nbsp;Expiry Date <br />
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="20px">
                                    <asp:ListItem Value="01"></asp:ListItem>
                                    <asp:ListItem Value="02"></asp:ListItem>
                                    <asp:ListItem Selected="True" Value="03"></asp:ListItem>
                                    <asp:ListItem Value="04"></asp:ListItem>
                                    <asp:ListItem Value="05"></asp:ListItem>
                                    <asp:ListItem Value="06"></asp:ListItem>
                                    <asp:ListItem Value="07"></asp:ListItem>
                                    <asp:ListItem Value="08"></asp:ListItem>
                                    <asp:ListItem Value="09"></asp:ListItem>
                                    <asp:ListItem Value="10"></asp:ListItem>
                                    <asp:ListItem Value="11"></asp:ListItem>
                                    <asp:ListItem Value="12"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:DropDownList ID="DropDownList2" runat="server" Height="20px">
                                    <asp:ListItem Value="2020"></asp:ListItem>
                                    <asp:ListItem Value="2021"></asp:ListItem>
                                    <asp:ListItem Selected="True" Value="2022"></asp:ListItem>
                                    <asp:ListItem Value="2023"></asp:ListItem>
                                    <asp:ListItem Value="2024"></asp:ListItem>
                                    <asp:ListItem Value="2025"></asp:ListItem>
                                    <asp:ListItem Value="2026"></asp:ListItem>
                                    <asp:ListItem Value="2027"></asp:ListItem>
                                    <asp:ListItem Value="2028"></asp:ListItem>
                                    <asp:ListItem Value="2029"></asp:ListItem>
                                    <asp:ListItem Value="2030"></asp:ListItem>
                                    <asp:ListItem Value="2031"></asp:ListItem>
                                    <asp:ListItem Value="2032"></asp:ListItem>
                                    <asp:ListItem Value="2033"></asp:ListItem>
                                    <asp:ListItem Value="2034"></asp:ListItem>
                                    <asp:ListItem Value="2035"></asp:ListItem>
                                    <asp:ListItem Value="2036"></asp:ListItem>
                                    <asp:ListItem Value="2037"></asp:ListItem>
                                    <asp:ListItem Value="2038"></asp:ListItem>
                                    <asp:ListItem Value="2039"></asp:ListItem>
                                    <asp:ListItem Value="2040"></asp:ListItem>
                                    <asp:ListItem Value="2042"></asp:ListItem>
                                    <asp:ListItem Value="2043"></asp:ListItem>
                                    <asp:ListItem Value="2044"></asp:ListItem>
                                    <asp:ListItem Value="2045"></asp:ListItem>
                                    <asp:ListItem Value="2046"></asp:ListItem>
                                    <asp:ListItem Value="2047"></asp:ListItem>
                                    <asp:ListItem Value="2048"></asp:ListItem>
                                    <asp:ListItem Value="2049"></asp:ListItem>
                                    <asp:ListItem Value="2050"></asp:ListItem>
                                </asp:DropDownList></td>
                            <td style ="width:40px;"></td>
                            <td style ="width:80px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CVV <br/><asp:TextBox ID="TextBox2" runat="server" TextMode="Number" Width="80px" ></asp:TextBox></td>
                            <td style ="width:50px;"></td>
                            <td style ="width:120px;"><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid CCV!!!"
                                ControlToValidate="TextBox2" ValidationExpression="^[0-9]{3,4}$" Display="Dynamic"></asp:RegularExpressionValidator>
                                <br/><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="CVV is Empty!"></asp:RequiredFieldValidator></td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td style ="width:255px;"></td>
                            <td style ="width:100px;"><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Height="40px" Width="100px"/></td>
                            <td style ="width:125px;"></td>
                            <td style ="width:150px;"><asp:Label ID="Label3" runat="server"></asp:Label></td>
                        </tr>
                    </table>
                    <table>
                        <tr>
                            <td style ="width:120px;"></td>
                            <td style ="width:380px;"><asp:Label ID="Label1" runat="server"></asp:Label></td>
                        </tr>
                    </table>
                </div>
            </div>
        </form>
    </body>
</html>
