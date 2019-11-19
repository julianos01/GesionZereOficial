using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GZere.Clases;
using System.Data;

namespace GZere.Formularios_web
{
    public partial class AdminUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            
            solicitud oSolicitud = new solicitud();
            string valida = (string)(Session["Nomcrea"]);
            if (valida != null)
            {
             /*   txtape.Text = "";
                txtced.Text = "";
                txtnom.Text = "";
                txtpass.Text = "";*/

                divsec.Visible = false;
                if (!this.IsPostBack)
                {
                    CargarMaestros(ddlroles, 4);
                    CargarMaestros(ddldesactiva, 2);
                }


            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void rbtndesactiva_CheckedChanged(object sender, EventArgs e)
        {
            divppal.Visible = false;
            divsec.Visible = true;

            rbtndesactiva.Checked = false;
            lblcorrecto.Text = "";
            CargarMaestros(ddldesactiva, 2);
        }

        protected void rbtdeshabilitar_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        protected void rbtncreacion_CheckedChanged(object sender, EventArgs e)
        {
            divppal.Visible = true;
            divsec.Visible = false;
            rbtncreacion.Checked = false;
            lblrespuesta.Text = "";
        }

      

        private void CargarMaestros(DropDownList ddlcontrol,int tabla)

        {
            solicitud oSolicitud = new solicitud();
           if( oSolicitud.ConsultarMaestro(tabla))
            {
              //  DataTable Listado = oSolicitud.ListadoSolicitudes;
                ddlcontrol.DataSource = oSolicitud.ListadoSolicitudes;
                ddlcontrol.DataValueField = "id";
                ddlcontrol.DataTextField = "valor";

                ddlcontrol.DataBind();


            }
           else
            {
                lblcorrecto.Text = oSolicitud.Error;
            }


        }
        public void CrearUsuariooooo()
        {
            solicitud oSolicitud = new solicitud();
            oSolicitud.Identificacion = txtced.Text;

            oSolicitud.Nombres = txtnom.Text;
            oSolicitud.Apellidos = txtape.Text;
           
            oSolicitud.Rol = Convert.ToInt32(ddlroles.SelectedItem.Value);
            oSolicitud.Pwd = txtpasscnu.Text;
            try
            {


                if (oSolicitud.CrearUsuario())
                {
                    lblcorrecto.Text = "Usuario Creado Exitosamente";
                    txtnom.Text = "";
                    txtape.Text = "";
                    txtced.Text = "";

                    txtpasscnu.Text = "";
                    CargarMaestros(ddlroles, 4);
                    

                }
                else
                {
                    lblcorrecto.Text = oSolicitud.Error;
                }
            }
            catch
            {
                lblcorrecto.Text = "Hay Una excepción Grave a Revisar";
            }
        }

        protected void btnguardar_Click(object sender, EventArgs e)
        {
            //   CrearUsuario();
            CrearUsuariooooo();
        }




        private void DesUser()
        {
            solicitud oSolicitud = new solicitud();
            oSolicitud.RespId =Convert.ToInt32( ddldesactiva.SelectedItem.Value);
            if(oSolicitud.DesactivaUsuario())
            {
                lblrespuesta.Text = "Usuario Desactivado Exitosamente";
                CargarMaestros(ddldesactiva, 2);
            }
            else
            {
                lblrespuesta.Text = oSolicitud.Error;
            }
            divppal.Visible = false;
            divsec.Visible = true;
        }

        protected void btndesacuser_Click(object sender, EventArgs e)
        {
            DesUser();
        }
    }
}