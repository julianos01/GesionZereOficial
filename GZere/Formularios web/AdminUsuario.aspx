<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminUsuario.aspx.cs" Inherits="GZere.Formularios_web.AdminUsuario" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
   
    <style>
     td{
         height:45px;
         text-align:right;
     }

     td.cen{
          height:45px;
         text-align:center;
     }
     
        .auto-style2 {
            height: 363px;
        }
        .auto-style3 {
            height: 44px;
        }
        .auto-style4 {
            width: 22px;
        }
        .auto-style6 {
            height: 45px;
        }
        .auto-style7 {
            width: 22px;
            height: 45px;
        }
     
        </style>

  

    </asp:content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
        <asp:Image ID="Image1" runat="server" Height="75px" ImageUrl="~/Imagenes/logozere.png" Width="461px" />
        <br />
    <br />
    <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="XX-Large" Text="Administración Usuarios"></asp:Label>

    <br />
      <br />
    <div runat="server" id="divppal" style="text-align:center; margin-left:38%;border:2px solid lavender;max-width:25%" class="auto-style2" >
       
         <table>
            <tr>
                <td>&nbsp; &nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Text="Cedula"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="vlced" runat="server" ControlToValidate="txtced" ErrorMessage="*" Font-Size="25px" Font-Strikeout="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="txtced" runat="server" Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style6">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Text="Nombre"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="vlnom" runat="server" ControlToValidate="txtnom" ErrorMessage="*" Font-Size="25px" Font-Strikeout="False" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtnom" runat="server" Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Text="Apellido"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="vlape" runat="server" ControlToValidate="txtape" ErrorMessage="*" Font-Size="25px" Font-Strikeout="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="txtape" runat="server" Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Text="Rol"></asp:Label>
                </td>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddlroles" runat="server" Width="130px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Text="Clave"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:RequiredFieldValidator ID="vlpwd" runat="server" ControlToValidate="txtpasscnu" ErrorMessage="*" Font-Size="25px" Font-Strikeout="False" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="txtpasscnu" runat="server" Width="130px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr class="cen">
                <td class="auto-style3"></td>
                <td class="auto-style3"></td>
                <td class="auto-style3" colspan="2">
                    <asp:Button ID="btnguardar" runat="server" Text="Guardar" OnClick="btnguardar_Click" />
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
                <td colspan="2" style="text-align: center">
                    <asp:RadioButton ID="rbtndesactiva" runat="server" Text="     Desactivar Usuario" AutoPostBack="True" OnCheckedChanged="rbtndesactiva_CheckedChanged" />
                </td>
            </tr>
           
            </table>
        <asp:Label ID="lblcorrecto" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" ForeColor="Red"></asp:Label>
          <br />
    </div>
    <div runat="server" id="divsec" style="text-align:center; margin-left:38%;border:2px solid lavender;max-width:25%" class="auto-style2" >
       


         <table>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Text="Usuario"></asp:Label>
                </td>
                <td class="auto-style4">
                    &nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddldesactiva" runat="server" Width="130px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr class="cen">
                <td class="auto-style3"></td>
                <td class="auto-style3" colspan="3" style="text-align: center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="btndesacuser" runat="server" OnClick="btndesacuser_Click" Text="Desactivar Usuario" />
                </td>
            </tr>
             <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td colspan="2" style="text-align: center">
                    <asp:RadioButton ID="rbtncreacion" runat="server" AutoPostBack="True" OnCheckedChanged="rbtncreacion_CheckedChanged" Text="Creación Usuarios" />
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
             <tr>
                <td colspan="4">&nbsp;<asp:Label ID="lblrespuesta" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="Red"></asp:Label>
&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
            </table>
       


        </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="16pt" Font-Underline="True" NavigateUrl="~/Formularios web/Menu.aspx">Menu Principal</asp:HyperLink>
    <br />
    

</asp:Content>
