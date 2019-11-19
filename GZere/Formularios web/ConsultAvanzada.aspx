<%@ Page Title="Consulta avanzada" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConsultAvanzada.aspx.cs" Inherits="GZere.Formularios_web.ConsultAvanzada"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="principal" align="center" > 

    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Image ID="Image1" runat="server" Height="89px" ImageUrl="~/Imagenes/logozere.png" Width="566px" />
    
        <br />
        <br />
        <br />

         <div class="secondary">
        <table class="auto-style13">
            <tr>
                <td>&nbsp;</td>
                <td class="cuadro">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="18pt" Text="Filtros"></asp:Label>
                </td>
            </tr>
        </table>

       
        <table class="auto-style17" >
            <tr>
                <td class="auto-style4"><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="18pt" Text="Cedula" align="left"></asp:Label>
                </td>
                <td class="auto-style18" colspan="2">
                    <asp:TextBox ID="txtcedula" runat="server" Width="88px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                </td>
                <td colspan="2">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="18pt" Text="Placa"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtplaca" runat="server" Width="88px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"><asp:Label ID="lblticket" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="18pt" Text="Ticket"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style18" colspan="2">
                    <asp:TextBox ID="txtticket" runat="server" Width="88px"></asp:TextBox>
                </td>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;</td>
                <td colspan="2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td colspan="3">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Medium" OnClick="Button1_Click" Text="Consultar" />
                </td>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
            </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style16">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblresp" runat="server" Font-Bold="True" Font-Italic="True" ForeColor="#CC0000" Font-Size="16pt"></asp:Label>
                    &nbsp;</td>
            </tr>
        </table>
&nbsp;<table class="auto-style3">
            <tr>
                <td class="auto-style8">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" BackColor="#CEF3FF" BorderColor="Black" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging1" PageSize="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2">
                        <AlternatingRowStyle BackColor="#E6F2FF" ForeColor="#000099" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <Columns>
                            <asp:CommandField HeaderText="Acción" SelectText="Abrir" ShowHeader="True" ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#3939CE" Font-Bold="True" Font-Italic="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#B9CFFF" BorderColor="Black" BorderWidth="3px" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="16pt" Font-Underline="True" NavigateUrl="~/Formularios web/Menu.aspx">Menu Principal</asp:HyperLink>
                                <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:zereuserConnectionString %>" ProviderName="<%$ ConnectionStrings:zereuserConnectionString.ProviderName %>" SelectCommand="SELECT Num_Ticket, nom_usr, ape_usr, ced_usr, tel_usr, email, placa_ve, desc_solicitud, Id_estado_sol, id_resp, respuesta, id_medio, id_resp_crea, fecha, fecUlmodificacion FROM tsolicitudes WHERE (ced_usr = @Param1)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtcedula" Name="@Param1" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
&nbsp;&nbsp;
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
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style2 {
            width: 15px;
        }
        .auto-style3 {
            height: 50px;
            width: 102px;
        }
        .auto-style4 {
            height: 50px;
            width: 94px;
        }
    </style>
</asp:Content>

