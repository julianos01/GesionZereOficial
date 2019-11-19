<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ingresos.aspx.cs" Inherits="GZere.Formularios_web.Ingresos"  %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align:center; height: 92px; width: 1001px;">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
 <asp:Image ID="Image2" runat="server" Height="92px" ImageUrl="~/Imagenes/logozere.png" Width="508px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        </div>
    
        <br />
      <div style="text-align:right; height:590px; width:85%; border:2px solid lavender;margin-left:10%" >
        <table style="height: 570px;" >
            <colgroup>
                
                <col    />
                 <col style="width:200px"    />
            </colgroup>
            <tr>
                <td rowspan="2">
                    <br />
                </td>
                <td colspan="5" style="text-align: center; height: 24px;">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Microsoft New Tai Lue" Font-Size="X-Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="5" style="text-align: center; height: 24px;">
                    &nbsp;</td>
            </tr>
            <tr style="height:40px">
                <td>&nbsp;</td>
                <td style="width: 152px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Tipo solicitud"></asp:Label>
                    &nbsp;&nbsp;</td>
                <td style="width: 13px">&nbsp;</td>
                <td style="width: 180px">
                    <asp:DropDownList ID="ddltiposol" runat="server" BackColor="#B0EFFF" AutoPostBack="True" Width="150px">
                        <asp:ListItem Value="1">Externa</asp:ListItem>
                        <asp:ListItem Value="2">Interna</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 49px">&nbsp;</td>
                <td style="width: 25px; text-align:center"> &nbsp;<asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Descripción"></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="valdescr" runat="server" ControlToValidate="txtdescr" Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td style="height: 38px"></td>
                <td style="height: 38px; width: 152px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Nombre"></asp:Label>
                    &nbsp;</td>
                <td style="height: 38px; width: 13px;">
                    <asp:RequiredFieldValidator ID="valnom" runat="server" ControlToValidate="txtnomusr" Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 180px; height: 38px;">
                    <asp:TextBox ID="txtnomusr" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 49px; height: 38px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td style="width: 488px; text-align:center" rowspan="3">
                    <asp:TextBox ID="txtdescr" runat="server" Height="110px" TextMode="MultiLine" Width="442px" BorderColor="#CCCCCC"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td style="height: 41px"></td>
                <td style="height: 41px; width: 152px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Apellido"></asp:Label>
                    &nbsp;&nbsp;</td>
                <td style="height: 41px; width: 13px;">
                    <asp:RequiredFieldValidator ID="valape" runat="server" ControlToValidate="txtapeusr" Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 180px; height: 41px;">
                    <asp:TextBox ID="txtapeusr" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 49px; height: 41px;"></td>
            </tr>
            <tr>
                <td style="height: 31px"></td>
                <td style="height: 31px; width: 152px;"> 
                    &nbsp;<asp:Label ID="lblplaca" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Placa"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    </td>
                <td style="height: 31px; width: 13px;">
                    <asp:RequiredFieldValidator ID="valplaca" runat="server" ControlToValidate="txtplaca" Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                <td style="width: 180px; height: 31px;">
                    <asp:TextBox ID="txtplaca" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 49px; height: 31px;"></td>
            </tr>
            <tr style="height:45px">
                <td>&nbsp;</td>
                <td style="width: 152px">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Responsable Sol."></asp:Label>
                </td>
                <td style="width: 13px">
                    &nbsp;</td>
                <td style="width: 180px">
                    <asp:DropDownList ID="DDLResponsablesol" runat="server" Width="150px">
                    </asp:DropDownList>
                </td>
                <td style="width: 49px">&nbsp;</td>
                <td style="width: 488px; text-align:center; height: 11px;"> &nbsp;<asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Gestión Realizada"></asp:Label>
                    &nbsp;<asp:RequiredFieldValidator ID="valgestion" runat="server" ControlToValidate="txtgestion" Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td style="height: 30px"></td>
                <td style="height: 30px; width: 152px;">
                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Medio"></asp:Label>
&nbsp;<asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Ingreso"></asp:Label>
                </td>
                <td style="height: 30px; width: 13px;">
                    </td>
                <td style="width: 180px; height: 30px;">
                    <asp:DropDownList ID="DDLMedioing" runat="server" Width="150px">
                    </asp:DropDownList>
                </td>
                <td style="width: 49px; height: 30px;"></td>
                <td style="width: 488px; text-align:center" rowspan="3"> &nbsp;<asp:TextBox ID="txtgestion" runat="server" Height="115px" TextMode="MultiLine" Width="442px" CssClass="col-md-offset-0"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 40px"></td>
                <td style="height: 40px; width: 152px;">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Crea"></asp:Label>
&nbsp;<asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Solicitud"></asp:Label>
                    &nbsp;</td>
                <td style="height: 40px; width: 13px;">
                    </td>
                <td style="width: 180px; height: 40px;">
                    <asp:TextBox ID="txtcreasol" runat="server" BackColor="Silver" ReadOnly="True" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 49px; height: 40px;"></td>
            </tr>
            <tr style="height:45px">
                <td style="height: 35px"></td>
                <td style="height: 35px; width: 152px;">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Estado Solicitud"></asp:Label>
                </td>
                <td style="height: 35px; width: 13px;">
                    </td>
                <td style="width: 180px; height: 35px;">
                    <asp:DropDownList ID="DDLEstadosol" runat="server" Width="150px">
                    </asp:DropDownList>
                </td>
                <td style="width: 49px; height: 35px;"></td>
            </tr>
            <tr>
                <td style="height: 40px"></td>
                <td style="width: 152px; height: 40px;">&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Cedula"></asp:Label>
                </td>
                <td style="width: 13px; height: 40px;">
                    <asp:RequiredFieldValidator ID="valced" runat="server" ControlToValidate="txtcedusr" Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 180px; height: 40px;">
                    <asp:TextBox ID="txtcedusr" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 49px; height: 40px;"></td>
                <td style="width: 488px; text-align:center; height: 40px;">
                                </td>
            </tr>
            <tr>
                <td style="height: 40px"></td>
                <td style="width: 152px; height: 40px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Telefono"></asp:Label>
                </td>
                <td style="width: 13px; height: 40px;">
                    <asp:RequiredFieldValidator ID="valtel" runat="server" ControlToValidate="txttel" Display="Dynamic" ErrorMessage="*" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td style="width: 180px; height: 40px;">
                    <asp:TextBox ID="txttel" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 49px; height: 40px;"></td>
                <td style="width: 488px; text-align:center; height: 40px;">&nbsp;<asp:Button ID="Button3" runat="server" Text="INGRESAR SOLICITUD" OnClick="Button3_Click1" />
&nbsp;&nbsp; </td>
            </tr>
            <tr>
                <td style="height: 40px"></td>
                <td style="width: 152px; height: 40px;">&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" Text="Email"></asp:Label>
                </td>
                <td style="width: 13px; height: 40px;"></td>
                <td style="width: 180px; height: 40px;">
                    <asp:TextBox ID="txtemail" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td style="width: 49px; height: 40px;"></td>
                <td style="width: 488px; text-align:center; height: 40px;">
                                <asp:Label ID="lblcorrecto" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large" ForeColor="Red" Visible="False"></asp:Label>
                                </td>
            </tr>
            <tr style="height:45px; text-align:left">
                <td>&nbsp;</td>
                <td colspan="4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;<asp:RegularExpressionValidator ID="valemail" runat="server" ControlToValidate="txtemail" ErrorMessage="Formato de Email inválido" Font-Bold="True" Font-Italic="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                <td style="width: 488px; text-align:center">
                                &nbsp;
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="16pt" Font-Underline="True" NavigateUrl="~/Formularios web/Menu.aspx">Menu Principal</asp:HyperLink>
                                &nbsp;&nbsp;&nbsp;
                                </td>
            </tr>
        </table>
        <br />
        <br />
       </div>

    </asp:Content>
