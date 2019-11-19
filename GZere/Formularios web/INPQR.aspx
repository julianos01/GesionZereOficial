<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="INPQR.aspx.cs" Inherits="GZere.Formularios_web.INPQR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 785px;
            width: 1735px;
        }
        .auto-style2 {
            height: 190px;
        }
        .auto-style56 {
            height: 40px;
            width: 276px;
        }
        .auto-style61 {
            height: 40px;
            width: 343px;
        }
        .auto-style67 {
            width: 70%;
        }
        .auto-style68 {
            width: 628px;
        }
        .auto-style69 {
            width: 100%;
        }
        .auto-style70 {
            height: 23px;
        }
        .auto-style71 {
            height: 40px;
            width: 279px;
        }
        .auto-style75 {
            height: 41px;
            width: 279px;
        }
        .auto-style76 {
            height: 41px;
            width: 343px;
        }
        .auto-style78 {
            height: 41px;
            width: 276px;
        }
        .auto-style81 {
            height: 796px;
        }
        .auto-style82 {
            margin-left: 0px;
        }
        .auto-style83 {
            height: 10px;
            width: 279px;
        }
        .auto-style84 {
            height: 10px;
            width: 343px;
        }
        .auto-style86 {
            height: 10px;
            width: 276px;
        }
        .auto-style87 {
            height: 10px;
            width: 270px;
        }
        .auto-style88 {
            height: 40px;
            width: 270px;
        }
        .auto-style89 {
            height: 41px;
            width: 270px;
        }
    </style>
</head>
<body class="" >
    <form id="form1" runat="server" class="auto-style81">
    <div class="auto-style1">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Image ID="Image1" runat="server" Height="75px" ImageUrl="~/Imagenes/logozere.png" Width="461px" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Microsoft New Tai Lue" Font-Size="X-Large"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style83">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Tipo solicitud"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddltiposol" runat="server" AutoPostBack="True" BackColor="#B9E9FF" CssClass="auto-style82" Width="72px" OnSelectedIndexChanged="ddltiposol_SelectedIndexChanged">
                        <asp:ListItem Value="1">Externa</asp:ListItem>
                        <asp:ListItem Value="2">Interna</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style84">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style87">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Estado Solicitud"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DDLEstadosol" runat="server" BackColor="#B9E9FF">
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style86">
                </td>
            </tr>
            <tr>
                <td class="auto-style71">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Nombre"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtnomusr" runat="server" Height="18px" Width="142px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valnom" runat="server" ControlToValidate="txtnomusr" Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style61">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Responsable Sol."></asp:Label>
                    &nbsp;&nbsp;
                    <asp:DropDownList ID="DDLResponsablesol" runat="server" AppendDataBoundItems="True" AutoPostBack="True" Width="100px">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;</td>
                <td class="auto-style88">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Cedula"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtcedusr" runat="server" Width="94px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valced" runat="server" ControlToValidate="txtcedusr" Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style56">
&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style75">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Apellido"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txtapeusr" runat="server" Height="18px" Width="138px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valape" runat="server" ControlToValidate="txtapeusr" Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style76">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Medio"></asp:Label>
&nbsp;<asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Ingreso"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DDLMedioing" runat="server" Width="100px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style89">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Telefono"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="txttel" runat="server" Height="18px" Width="83px" TextMode="Phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valtel" runat="server" ControlToValidate="txttel" Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style78">
                </td>
            </tr>
            <tr>
                <td class="auto-style71">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Placa"></asp:Label>
                    &nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtplaca" runat="server" Height="18px" Width="58px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valplaca" runat="server" ControlToValidate="txtplaca" Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style61">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Crea"></asp:Label>
&nbsp;<asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Solicitud"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtcreasol" runat="server" BackColor="Silver" ReadOnly="True" Width="100px"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style88"><asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Email"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtemail" runat="server" Height="18px" Width="180px" TextMode="Email"></asp:TextBox>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RegularExpressionValidator ID="valemail" runat="server" ControlToValidate="txtemail" ErrorMessage="Formato de Email inválido" Font-Bold="True" Font-Italic="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                <td class="auto-style56">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
        &nbsp;<table class="auto-style67">
            <tr>
                <td class="auto-style68">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Descripción"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="valdescr" runat="server" ControlToValidate="txtdescr" Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Gestión Realizada"></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="valgestion" runat="server" ControlToValidate="txtgestion" Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style68">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtdescr" runat="server" Height="292px" TextMode="MultiLine" Width="469px"></asp:TextBox>
                    &nbsp;</td>
                <td>
                    <table class="auto-style69">
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="txtgestion" runat="server" Height="70px" TextMode="MultiLine" Width="496px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style70"></td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Button3" runat="server" BackColor="#999999" Font-Bold="True" Font-Italic="True" Font-Names="Kartika" Font-Size="Medium" Height="74px" OnClick="Button3_Click" Text="INGRESAR SOLICITUD" Width="213px" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style70">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblcorrecto" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red" Visible="False"></asp:Label>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style70">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="16pt" Font-Underline="True" NavigateUrl="~/Formularios web/Menu.aspx">Menu Principal</asp:HyperLink>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
        <p>
            <br />
        </p>
    </form>
</body>
</html>
