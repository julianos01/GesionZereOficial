<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Probando.aspx.cs" Inherits="GZere.Formularios_web.Probando" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="col-md-6 col-med-offset-3" style="left: 4px; top: 10px; width: 335px; height: 22px;" > 

            <asp:Label ID="Label2" runat="server" Text="Hola Izquierda"></asp:Label>

        </div>

    <div class="col-md-6 col-lg-6 clearfix" style="left: 373px; top: -4px; width: 336px; height: 20px">
              <asp:Label ID="Label1" runat="server" Text="Hola Derecha"></asp:Label>

    </div>


</asp:Content>
