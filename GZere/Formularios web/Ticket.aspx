<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ticket.aspx.cs" Inherits="GZere.Formularios_web.Ticket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style216 {
            width: 1269px;
            border-left-style: solid;
            border-left-width: 3px;
            border-right: 3px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 3px;
            border-bottom: 3px solid #C0C0C0;
        }
        .auto-style228 {
            background-color: #FFFFFF;
        }
        .auto-style230 {
            height: 6px;
            background-color: #FFFFFF;
        }
        .auto-style231 {
            background-color: #C0C0C0;
        }
        .auto-style233 {
            width: 22px;
            background-color: #FFFFFF;
        }
        .auto-style234 {
            height: 6px;
            width: 22px;
            background-color: #FFFFFF;
        }
        .auto-style236 {
            width: 25px;
            background-color: #FFFFFF;
        }
        .auto-style237 {
            height: 6px;
            width: 25px;
            background-color: #FFFFFF;
        }
        .auto-style247 {
            height: 6px;
            width: 221px;
            background-color: #FFFFFF;
        }
        .auto-style248 {
            width: 159px;
            background-color: #FFFFFF;
        }
        .auto-style250 {
            height: 6px;
            width: 159px;
            background-color: #FFFFFF;
        }
        .auto-style252 {
            width: 1661px;
        }
        .auto-style253 {
            width: 159px;
            margin-left: 120px;
            background-color: #FFFFFF;
        }
        .auto-style259 {
            width: 221px;
            background-color: #FFFFFF;
        }
        .auto-style267 {
            width: 159px;
            background-color: #FFFFFF;
            height: 15px;
        }
        .auto-style268 {
            width: 22px;
            height: 15px;
            background-color: #FFFFFF;
        }
        .auto-style270 {
            width: 25px;
            height: 15px;
            background-color: #FFFFFF;
        }
        .auto-style271 {
            height: 15px;
            background-color: #FFFFFF;
        }
        .auto-style274 {
            background-color: #FFFFFF;
            font-family: "Arial Black";
            font-style: italic;
            font-weight: bold;
            font-size: medium;
            width: 47px;
        }
        .auto-style275 {
            width: 47px;
            height: 15px;
            background-color: #FFFFFF;
        }
        .auto-style276 {
            width: 47px;
            background-color: #FFFFFF;
        }
        .auto-style307 {
            width: 190px;
            background-color: #AED7FF;
            height: 20px;
        }
        .auto-style308 {
            width: 2847px;
            background-color: #AED7FF;
            height: 20px;
        }
        .auto-style309 {
            background-color: #FFFFFF;
            height: 20px;
        }
        .auto-style310 {
            width: 190px;
            height: 20px;
            background-color: #FFFFFF;
        }
        .auto-style311 {
            width: 2847px;
            height: 20px;
            background-color: #FFFFFF;
        }
        .auto-style312 {
            width: 221px;
            height: 20px;
            background-color: #FFFFFF;
        }
        .auto-style313 {
            width: 159px;
            margin-left: 120px;
            background-color: #FFFFFF;
            height: 20px;
        }
        .auto-style314 {
            width: 22px;
            background-color: #FFFFFF;
            height: 20px;
        }
        .auto-style315 {
            width: 25px;
            background-color: #FFFFFF;
            height: 20px;
        }
        .auto-style326 {
            width: 47px;
            height: 20px;
            background-color: #FFFFFF;
        }
        .auto-style331 {
            width: 159px;
            background-color: #FFFFFF;
            height: 20px;
        }
        .auto-style332 {
            width: 190px;
            background-color: #AED7FF;
            height: 41px;
        }
        .auto-style333 {
            width: 2847px;
            background-color: #AED7FF;
            height: 41px;
        }
        .auto-style334 {
            width: 221px;
            height: 41px;
            background-color: #FFFFFF;
        }
        .auto-style335 {
            width: 190px;
            background-color: #AED7FF;
            height: 15px;
        }
        .auto-style336 {
            width: 2847px;
            background-color: #AED7FF;
            height: 15px;
        }
        .auto-style337 {
            width: 190px;
            height: 10px;
            background-color: #FFFFFF;
        }
        .auto-style338 {
            width: 2847px;
            height: 10px;
            background-color: #FFFFFF;
        }
        .auto-style339 {
            height: 10px;
            background-color: #FFFFFF;
        }
    </style>
</head>^
<body>
     

    <form id="form1" runat="server" enctype="multipart/form-data">
    <div class="auto-style252">
        
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <asp:Image ID="Image1" runat="server" Height="75px" ImageUrl="~/Imagenes/logozere.png" Width="461px" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl75" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="Red">Ticket #</asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblnumticket" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="X-Large" ForeColor="Red"></asp:Label>
        <br />
        <table class="auto-style216">
            <tr>
                <td class="auto-style268" rowspan="4"></td>
                <td class="auto-style337">
                </td>
                <td class="auto-style338">
                &nbsp;&nbsp; </td>
                <td class="auto-style259" rowspan="2">
                </td>
                <td class="auto-style231" rowspan="16">&nbsp;</td>
                <td class="auto-style270" rowspan="4">&nbsp; &nbsp;</td>
                <td class="auto-style339">
                </td>
                <td class="auto-style275" rowspan="4">
                    &nbsp;</td>
                <td class="auto-style231" rowspan="16">&nbsp;</td>
                <td class="auto-style271" rowspan="4"></td>
                <td class="auto-style267" rowspan="4"><asp:Label ID="lbltitleadjuntos" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Medium" Text="Adjuntos: "></asp:Label>
                   <asp:FileUpload ID="FileUpload1" runat="server" Width="317px" />
                    

                    <asp:Button ID="btncargar" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Text="Subir" OnClick="btncargar_Click2" />
                </td>
                <td class="auto-style267" rowspan="4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style335">
                    <asp:Label ID="LblmNom" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Medium" Text="Nombre"></asp:Label>
                </td>
                <td class="auto-style336">
                    <asp:Label ID="lblnom" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black"></asp:Label>
                </td>
                <td class="auto-style271">
                    <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Medium" Text="Descripcion"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style310">
                </td>
                <td class="auto-style311">
                </td>
                <td class="auto-style312">
                </td>
                <td class="auto-style228" rowspan="6">
                    <asp:TextBox ID="txtdescripcion" runat="server" BackColor="#CCCCCC" Height="207px" ReadOnly="True" TextMode="MultiLine" Width="404px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style332">
                    <asp:Label ID="LblMape" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Medium" Text="Apellido"></asp:Label>
                </td>
                <td class="auto-style333">
                    <asp:Label ID="lblape" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black"></asp:Label>
                </td>
                <td class="auto-style334">
                </td>
            </tr>
            <tr>
                <td class="auto-style233" rowspan="3">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style310">
                    <asp:Label ID="LblmCed" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Medium" Text="Cedula"></asp:Label>
                </td>
                <td class="auto-style311">
                    <asp:Label ID="lblced" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black"></asp:Label>
                </td>
                <td class="auto-style259" rowspan="3">
                </td>
                <td class="auto-style236" rowspan="3"></td>
                <td class="auto-style276" rowspan="7">
                    &nbsp;</td>
                <td class="auto-style228" rowspan="3"></td>
                <td class="auto-style313">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style313"> </td>
            </tr>
            <tr>
                <td class="auto-style307">
                    <asp:Label ID="LblmTel" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Medium" Text="Telefono"></asp:Label>
                </td>
                <td class="auto-style308">
                    <asp:Label ID="lbltel" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black"></asp:Label>
                </td>
                <td style="vertical-align:top" class="auto-style253" rowspan="5"><asp:GridView ID="gvArchivo" runat="server" AutoGenerateColumns="False" OnRowCommand="gvArchivo_RowCommand" Width="30px" Height="20px" OnRowDataBound="gvArchivo_RowDataBound" DataKeyNames="Numadjunto" BackColor="#AED7FF">
                        <AlternatingRowStyle BackColor="#C6E2FF" />
                        <Columns>
                            <asp:BoundField DataField="Numadjunto" HeaderText="Numero" />
                            <asp:TemplateField HeaderText="Archivo">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Archivo") %>' CommandName="Download" Text='<%# Eval("Archivo") %>'></asp:LinkButton>
                                </ItemTemplate>
                                <ControlStyle Font-Bold="True" Font-Italic="True" Font-Names="Arial" Width="250px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Acción">
                                <ItemTemplate>
                                    <asp:ImageButton ID="imgEliminar" runat="server" CommandName="Eliminar" ImageUrl="~/Imagenes/eliminar.jpg" />
                                </ItemTemplate>
                                <ControlStyle Font-Size="Smaller" Height="25px" Width="25px" />
                                <FooterStyle HorizontalAlign="Center" Width="25px" />
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" Width="20px" />
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle BackColor="#0000CC" Font-Bold="True" Font-Italic="True" ForeColor="White" />
                        <RowStyle BackColor="White" Width="30px" />
                    </asp:GridView>
                </td>
                <td class="auto-style253" rowspan="5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style310">
                    
                    <asp:Label ID="Lblmemail" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Medium" Text="Email"></asp:Label>
                </td>
                <td class="auto-style311">
                    <asp:Label ID="lblemail" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style314"></td>
                <td class="auto-style307">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Medium" Text="Responsable"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style308">
                 
                     
                    <asp:DropDownList ID="ddlresponsable" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" ForeColor="Red" BackColor="#CCCCCC" CssClass="btn btn-primary dropdown-toggle">
                    </asp:DropDownList>
                          
                </td>
                <td class="auto-style312">
                    </td>
                <td class="auto-style315"></td>
                <td class="auto-style309"></td>
            </tr>
            <tr>
                <td class="auto-style314"></td>
                <td class="auto-style310">
                    <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Medium" Text="Creó" ForeColor="Black"></asp:Label>
                </td>
                <td class="auto-style311">
                    <asp:Label ID="lblcreo" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" ForeColor="Black"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style312">
                    </td>
                <td class="auto-style315"></td>
                <td class="auto-style309">
                    </td>
                <td class="auto-style309"></td>
            </tr>
            <tr>
                <td class="auto-style314"></td>
                <td class="auto-style307">
                    
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Medium" Text="Medio Ing."></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style308">
                    <asp:Label ID="lblmedio" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black"></asp:Label>
                </td>
                <td class="auto-style312">
                    </td>
                <td class="auto-style315"></td>
                <td class="auto-style309">
                    <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Medium" Text="Gestion Realizada"></asp:Label>
                </td>
                <td class="auto-style309"></td>
            </tr>
            <tr>
                <td class="auto-style314"></td>
                <td class="auto-style310">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Medium" Text="Fecha"></asp:Label>
                </td>
                <td class="auto-style311">
                 
                     
                    <asp:Label ID="lblfecha" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black"></asp:Label>
                          
                </td>
                <td class="auto-style312">
                 
                     
                </td>
                <td class="auto-style315"></td>
                <td class="auto-style228" rowspan="6">
                    <asp:TextBox ID="txtgestionant" runat="server" BackColor="#CCCCCC" Height="100px" ReadOnly="True" TextMode="MultiLine" Width="403px"></asp:TextBox>
                    <asp:TextBox ID="txtgestionactual" runat="server" Height="100px" Width="403px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style309"></td>
                <td class="auto-style313">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <asp:Label ID="lbladjunto" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Medium"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="auto-style313"> </td>
            </tr>
            <tr>
                <td class="auto-style314"></td>
                <td class="auto-style307">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Medium" Text="Estado"></asp:Label>
                </td>
                <td class="auto-style308">
                    <asp:DropDownList ID="ddlestadosol" runat="server" Font-Bold="True" Font-Italic="True" BackColor="#CCCCCC" Font-Names="Arial Black" ForeColor="Red">
                    </asp:DropDownList>
                </td>
                <td class="auto-style312">
                    </td>
                <td class="auto-style315"></td>
                <td class="auto-style326"></td>
                <td class="auto-style309"></td>
                <td class="auto-style253" rowspan="5">&nbsp;</td>
                <td class="auto-style313"></td>
            </tr>
            <tr>
                <td class="auto-style314"></td>
                <td class="auto-style310">
                    <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Medium" Text="Placa"></asp:Label>
                </td>
                <td class="auto-style311">
                    <asp:Label ID="lblplaca" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black"></asp:Label>
                </td>
                <td class="auto-style312">
                    </td>
                <td class="auto-style315"></td>
                <td class="auto-style326">
                    </td>
                <td class="auto-style309"></td>
                <td class="auto-style313"></td>
            </tr>
            <tr>
                <td class="auto-style314"></td>
                <td class="auto-style307">
                    <asp:Label ID="Lblerror" runat="server"></asp:Label>
                </td>
                <td class="auto-style308">
                    </td>
                <td class="auto-style312">
                    </td>
                <td class="auto-style315"></td>
                <td class="auto-style274" rowspan="3">&nbsp;</td>
                <td class="auto-style309"></td>
                <td class="auto-style331"></td>
            </tr>
            <tr>
                <td class="auto-style234"></td>
                <td class="auto-style230" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnactualizar" runat="server" BackColor="#999999" Font-Bold="True" Font-Italic="True" Font-Names="Arial Black" Font-Size="Medium" OnClick="Button1_Click" Text="GUARDAR" Width="133px" />
                    &nbsp;</td>
                <td class="auto-style247">
                    </td>
                <td class="auto-style237"></td>
                <td class="auto-style230"></td>
                <td class="auto-style250"></td>
            </tr>
            <tr>
                <td class="auto-style233">&nbsp;</td>
                <td class="auto-style228" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblactualización" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Medium" ForeColor="Red" Visible="False"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style259">
                    &nbsp;</td>
                <td class="auto-style236">&nbsp;</td>
                <td class="auto-style228">&nbsp;</td>
                <td class="auto-style248">&nbsp;</td>
            </tr>
            </table>
        <br />
        
       
      
    <asp:HyperLink ID="Hpmenu" runat="server" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="16pt" Font-Underline="True" ForeColor="#3333FF" NavigateUrl="~/Formularios web/Menu.aspx">Menú Principal</asp:HyperLink>

        <br />
    
    </div>
    </form>
</body>
</html>
