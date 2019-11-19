using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GZere.Clases;

namespace GZere.Formularios_web
{
    public partial class Menú : System.Web.UI.Page
    {

        Int32 strcode = 0;
            int takecode = 0;



        protected void Page_Load(object sender, EventArgs e)
        {
            solicitud oSolicitud = new solicitud();
            string valida = (string)(Session["Nomcrea"]);
            if (valida != null)
            {
                strcode = Convert.ToInt32(Session["Coderesp"]);
                oSolicitud.RespId = strcode;
               int pxid= oSolicitud.ContarPendientesXid();
                btnmispendientes.Text="Tareas Pendientes de "+ (string)(Session["Nomcrea"]+" ( " +pxid+ " )");

                lbluser.Text = "Hola, " + (string)(Session["Nomcrea"]);
                
               

                int rol = (int)(Session["Rol"]);
                if (rol == 1 || rol == 2)
                {
                    btnusernew.Visible = true;
                }
                else
                {
                    btnusernew.Visible = false;
                }

            }
            else
            {
                HttpContext.Current.Response.Redirect("~/Formularios web/Default.aspx");
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void bt2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConsultAvanzada.aspx");
        }



        protected void btingresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ingresos.aspx?strcode=" + strcode);
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnusernew_Click1(object sender, EventArgs e)
        {
            Response.Redirect("AdminUsuario.aspx");


        }

        protected void btconsultasol_Click(object sender, EventArgs e)
        {
            takecode = 1;
            Response.Redirect("Resultado_query.aspx?takecode="+takecode);

           
        }

        protected void btnmispendientes_Click(object sender, EventArgs e)
        {
            takecode = 2;
            Response.Redirect("Resultado_query.aspx?takecode="+takecode);
        }

        protected void btgestionterm_Click(object sender, EventArgs e)
        {
            Response.Redirect("GestiónTerminales.aspx");
        }
    }
}