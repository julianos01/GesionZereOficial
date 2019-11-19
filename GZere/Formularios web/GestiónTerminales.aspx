<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GestiónTerminales.aspx.cs" Inherits="GZere.Formularios_web.GestiónTerminales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style56 {
            width: 95%;
        }
        .auto-style57 {
            width: 102px;
        }
        .auto-style58 {
            width: 118px;
        }
        .auto-style59 {
            width: 118px;
            height: 22px;
        }
        .auto-style60 {
            height: 22px;
        }
        .auto-style62 {
            width: 44px;
            height: 22px;
        }
        .auto-style63 {
            width: 44px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
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
        <br />
    <div runat="server" id="divconsulta" style="text-align:center; margin-left:23%;border:2px solid lavender;max-width:50%" class="auto-style2" >
       


        <table class="nav-justified">
            <tr>
                <td>&nbsp;</td>
                <td>
                     &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                     <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" Text="Estado de Terminales"></asp:Label>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>
        <asp:GridView ID="gvconsultartodastermi" runat="server" AutoGenerateColumns="False" BackColor="#B9CFFF" BorderColor="Black" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="473px" HorizontalAlign="Center" OnRowDataBound="gvconsultartodastermi_RowDataBound">
                        <AlternatingRowStyle BackColor="#E6F2FF" ForeColor="#000099" HorizontalAlign="Center" VerticalAlign="Middle" />


                         <Columns>
                             <asp:BoundField DataField="Numero_Terminal" HeaderText="               Num_Terminal" ReadOnly="True" >
                             <HeaderStyle HorizontalAlign="Center" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Zona" HeaderText="               Zona" >
                             <HeaderStyle HorizontalAlign="Center" />
                             <ItemStyle HorizontalAlign="Center" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Estado" HeaderText="               Estado" >
                             <HeaderStyle HorizontalAlign="Center" />
                             </asp:BoundField>
                             <asp:BoundField DataField="Usuario" HeaderText="               Usuario" />
                         </Columns>
                        <EditRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <FooterStyle HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#3939CE" Font-Bold="True" Font-Italic="False" ForeColor="White" HorizontalAlign="Left" VerticalAlign="Middle" />
                        <RowStyle HorizontalAlign="Center" />
                        <SelectedRowStyle HorizontalAlign="Center" />
                     </asp:GridView>























                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:RadioButton ID="rbttnueva" runat="server" Text="   Terminal Nueva" AutoPostBack="True" OnCheckedChanged="rbttnueva_CheckedChanged" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: &quot;left&quot;;">
                                <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="16pt" Font-Underline="True" NavigateUrl="~/Formularios web/Menu.aspx">Menu Principal</asp:HyperLink>
    &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: &quot;left&quot;;">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
         </div>

     <div runat="server" id="divsecun" style="text-align:center; margin-left:23%;border:2px solid lavender;max-width:50%" class="auto-style2" >
         <br />
         
        
         <table class="auto-style56">
             <tr>
                 <td class="auto-style63">
                     
                     &nbsp;</td>
                 <td colspan="6">
                     
                 </td>
             </tr>
             <tr>
                 <td class="auto-style63">
                     &nbsp;</td>
                 <td colspan="2">
                     <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Ingresar Terminal"></asp:Label>
                 </td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style63">&nbsp;</td>
                 <td class="auto-style58">&nbsp;</td>
                 <td class="auto-style57">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style63">
                 </td>
                 <td class="auto-style58">
                     <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Número Terminal"></asp:Label>
                 </td>
                 <td class="auto-style57">
                     <asp:TextBox ID="txtnumero" runat="server" Width="85px"></asp:TextBox>
                 </td>
                 <td>
                     <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Estado"></asp:Label>
                 </td>
                 <td>
                     <asp:DropDownList ID="ddlestado" runat="server">
                     </asp:DropDownList>
                 </td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style63">
                     &nbsp;</td>
                 <td class="auto-style58">
                     <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Zona"></asp:Label>
                 </td>
                 <td class="auto-style57">
                     <asp:TextBox ID="txtzona" runat="server" Width="85px"></asp:TextBox>
                 </td>
                 <td>
                     <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Usuario"></asp:Label>
                 </td>
                 <td>
                     <asp:DropDownList ID="ddluso" runat="server">
                     </asp:DropDownList>
                 </td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style63">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </td>
                 <td class="auto-style58">
                     <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Serial Impresora"></asp:Label>
                 </td>
                 <td class="auto-style57">
                     <asp:TextBox ID="txtserialimp" runat="server" Width="85px"></asp:TextBox>
                 </td>
                 <td>
                     <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Observaciones"></asp:Label>
                 </td>
                 <td colspan="2" rowspan="2">
                     <asp:TextBox ID="txtobs" runat="server" Height="60px" TextMode="MultiLine" Width="178px"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style63">
                     &nbsp;</td>
                 <td class="auto-style58">
                     <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Imei 1"></asp:Label>
                 </td>
                 <td class="auto-style57">
                     <asp:TextBox ID="txtimei1" runat="server" Width="85px"></asp:TextBox>
                 </td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style63">&nbsp;</td>
                 <td class="auto-style58">
                     <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Imei 2"></asp:Label>
                 </td>
                 <td class="auto-style57">
                     <asp:TextBox ID="txtimei2" runat="server" Width="85px"></asp:TextBox>
                 </td>
                 <td colspan="2">
                     &nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style63">&nbsp;</td>
                 <td class="auto-style58">&nbsp;</td>
                 <td class="auto-style57">&nbsp;</td>
                 <td colspan="2">
                     &nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style63">&nbsp;</td>
                 <td class="auto-style58">&nbsp;</td>
                 <td class="auto-style57">&nbsp;</td>
                 <td colspan="2">
                     <asp:Button ID="btnguardar" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Guardar" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style62"></td>
                 <td class="auto-style59"></td>
                 <td class="auto-style60" colspan="3">&nbsp;
                     <asp:Label ID="lblcorrecto" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                 <td class="auto-style60"></td>
                 <td class="auto-style60"></td>
             </tr>
             <tr>
                 <td class="auto-style63">&nbsp;</td>
                 <td class="auto-style58">&nbsp;</td>
                 <td class="auto-style57">&nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style63">&nbsp;</td>
                 <td class="auto-style58">&nbsp;</td>
                 <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rbtconsultarter" runat="server" Text="   Consultar Terminales" AutoPostBack="True" OnCheckedChanged="rbtconsultarter_CheckedChanged" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style63">&nbsp;</td>
                 <td colspan="4">
                                <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="16pt" Font-Underline="True" NavigateUrl="~/Formularios web/Menu.aspx">Menu Principal</asp:HyperLink>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style63">&nbsp;</td>
                 <td colspan="4">&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
         </table>
        
        </div>

</asp:Content>
