<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GZere.Formularios_web.Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  
    <div align="center"> 
         <asp:Image ID="Image1" runat="server" ImageUrl="~/Imagenes/Logos.png" Height="86px" />
        <br />
         <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Lucida Console" Font-Size="25px" Text="Gestión ZER-E"></asp:Label>
        <br />
        <br />
        <div style="border-radius:15px; border: 2px solid #0099FF ;width:400px;" >
        <table align="center" 
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Usuario" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="18px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 22px"></td>
                <td style="height: 22px"></td>
                <td style="height: 22px"></td>
                <td style="height: 22px"></td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Clave" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="18px" style="position: relative; left: 2px"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button1" runat="server" Text="Ingresar" OnClick="Button1_Click" style="position: relative; left: 88px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="height: 21px"></td>
                <td style="height: 21px" colspan="2">
                    <asp:Label ID="lblvalidar" runat="server" Text="Usuario o Clave Inválidos" CssClass="dropdown" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" ForeColor="Red" style="float: right; position: relative; left: -20px" Visible="False"></asp:Label>
                </td>
                <td style="height: 21px"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

            </div>
        <br />
         <br />




        </div>


</asp:Content>
