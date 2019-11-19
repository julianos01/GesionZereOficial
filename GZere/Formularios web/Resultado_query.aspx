<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resultado_query.aspx.cs" Inherits="GZere.Formularios_web.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 75px;
        }
        .auto-style3 {
            width: 674px;
        }
        .auto-style4 {
            width: 1075px;
        }
        .auto-style8 {
            width: 80%;
           
            
           
        }

        .estatable
        {   
           
        }

        .prueba {
            margin-left: 25%;
        }

        .label
        {
            margin-left:7.5%;

        }
         .Pepito
        {
            position:relative;
            z-index:-1;

        }

        .Grid

        {
            border: solid 1px #525252;
           border-collapse: collapse;
           background-color:red;
           border-top-left-radius:50px;
           

        }

       

    </style>
   <link rel="stylesheet" href="../style/julystyle.css" type="text/css" media="screen" />  
</head>
<body >
    <form id="form1" runat="server">
    <div class="principal" >
    
   <header>
             
             <asp:Image ID="Image2" CssClass="prueba"  runat="server" Height="89px" ImageUrl="~/Imagenes/logozere.png" Width="566px" />
            <nav>
    			<ul>
       				 <li><a href="Resultado_query?takecode=1">Consultar Solicitud</a></li>
       				 <li><a href="Ingresos.aspx">Ingresar Solicitud</a></li>
        			 <li><a href="ConsultAvanzada.aspx">Consulta Avanzada</a></li>               
        			 <li><a href="AdminUsuario.aspx">Crear Usuario</a></li>
                     
                </ul>
                </nav>
        </header>

        <asp:Label ID="lbltareas" CssClass="label" runat="server" Font-Bold="false" Font-Italic="True" Font-Names="Arial" Font-Size="14pt"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
         <asp:Panel ID="Pnlpendientes" runat="server">
        <table class="auto-style8" >
            <tr >
                <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="estatable" >
                    <asp:GridView ID="GridView1" CssClass="Pepito" runat="server" AutoGenerateColumns="False"  BorderColor="Black"    BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="951px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2" DataKeyNames="Ticket" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="15">
                      
                          <AlternatingRowStyle BackColor="#E6F2FF" ForeColor="#000099" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <Columns>
                            <asp:CommandField  HeaderText="Acción" SelectText="Abrir" ShowSelectButton="True" />
                            <asp:BoundField DataField="Ticket" HeaderText="Ticket" InsertVisible="False" ReadOnly="True" SortExpression="Ticket" />
                            <asp:BoundField DataField="Nombre_Usuario" HeaderText="Nombre_Usuario" SortExpression="Nombre_Usuario" />
                            <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                            <asp:BoundField DataField="Placa" HeaderText="Placa" SortExpression="Placa" />
                            <asp:BoundField DataField="Responsable" HeaderText="Responsable" SortExpression="Responsable" />
                            <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                        </Columns>
                        <FooterStyle BackColor="#2B95FF" ForeColor="#0033CC" />
                        <HeaderStyle BackColor="#3939CE" Font-Bold="True" ForeColor="White" Cssclass="estatable" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <RowStyle BackColor="#B9CFFF" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                          </td>
                <td>&nbsp;</td>
            </tr>
        </table>

             </asp:Panel>
         <asp:Panel ID="PnlTodas" runat="server" Visible="False">
&nbsp;&nbsp;&nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style3">
                  
                    
                    <asp:GridView ID="gvtodas" runat="server" AutoGenerateColumns="False" BackColor="#B9CFFF" BorderColor="Black" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Ticket" Width="951px" OnSelectedIndexChanged="gvtodas_SelectedIndexChanged" OnPageIndexChanging="gvtodas_PageIndexChanging" AllowPaging="True" PageSize="15">
                        <AlternatingRowStyle BackColor="#E6F2FF" ForeColor="#000099" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <Columns>
                            <asp:CommandField HeaderText="Acción" SelectText="Abrir" ShowSelectButton="True" />
                            <asp:BoundField DataField="Ticket" HeaderText="Ticket" InsertVisible="False" ReadOnly="True" SortExpression="Ticket" />
                            <asp:BoundField DataField="Nombre_Usuario" HeaderText="Nombre_Usuario" SortExpression="Nombre_Usuario" />
                            <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                            <asp:BoundField DataField="Placa" HeaderText="Placa" SortExpression="Placa" />
                            <asp:BoundField DataField="Responsable" HeaderText="Responsable" SortExpression="Responsable" />
                            <asp:BoundField DataField="Estado_Solicitud" HeaderText="Estado_Solicitud" SortExpression="Estado_Solicitud" />
                            <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                        </Columns>
                        <FooterStyle BackColor="#2B95FF" ForeColor="#0033CC" />
                        <HeaderStyle BackColor="#3939CE" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <RowStyle BorderColor="Black" Font-Bold="False" HorizontalAlign="Center" VerticalAlign="Middle" Width="3px" />
                    </asp:GridView>
                        
                </td>
                <td>&nbsp;</td>
            </tr>
            </table>
              </asp:Panel>
        <table class="auto-style8">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td>
                    <asp:HyperLink ID="Hpmenu" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="16pt" Font-Underline="True" ForeColor="#3333FF" NavigateUrl="~/Formularios web/Menu.aspx">Menú Principal</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Visible="False" Width="16px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="chktodas" runat="server" AutoPostBack="True" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" ForeColor="#2020FF" OnCheckedChanged="chktodas_CheckedChanged" Text="Ver Todas" />
                   
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;<asp:Label ID="lblerror" runat="server"></asp:Label>
                   
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
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
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
