<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearUsuario.aspx.cs" Inherits="GZere.Formularios_web.CrearUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style5 {
            width: 32%;
            border-left: 2px solid #A0A0A0;
            border-right-style: solid;
            border-right-width: 2px;
            border-top: 2px solid #A0A0A0;
            border-bottom-style: solid;
            border-bottom-width: 2px;
        }
        .auto-style6 {
            height: 27px;
            width: 2px;
        }
        .auto-style7 {
            width: 171px;
        }
        .auto-style8 {
            height: 27px;
            width: 171px;
        }
        .auto-style9 {
            width: 62px;
        }
        .auto-style10 {
            height: 27px;
            width: 62px;
        }
        .auto-style11 {
            width: 2px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Image ID="Image1" runat="server" Height="75px" ImageUrl="~/Imagenes/logozere.png" Width="461px" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Larger" Text="Usuario Nuevo"></asp:Label>
        <br />
        <br />
        <table class="auto-style5">
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Text="Cedula"></asp:Label>
                </td>
                <td class="auto-style7"> <asp:TextBox ID="txtced" runat="server" Width="95px" OnTextChanged="txtced_TextChanged"></asp:TextBox>
                </td>
                   
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Text="Nombre"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtnom" runat="server" Width="122px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Text="Apellido"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtape" runat="server" Width="122px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style9">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Text="Rol"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="ddlrol" runat="server" DataSourceID="SqlDataSource1" DataTextField="desc_rol" DataValueField="id_rol">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style10">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Text="Clave"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtpass" runat="server" Width="95px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnguardar" runat="server" BackColor="#999999" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Text="Guardar" OnClick="btnguardar_Click" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Label ID="lblrespuesta" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="16pt" Font-Underline="True" NavigateUrl="~/Formularios web/Menu.aspx">Menu Principal</asp:HyperLink>
                                <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zereuserConnectionString %>" ProviderName="<%$ ConnectionStrings:zereuserConnectionString.ProviderName %>" SelectCommand="SELECT * FROM troles"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
