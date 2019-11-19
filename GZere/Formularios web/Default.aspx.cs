using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GZere.Clases;
using System.Web.Security;

namespace GZere.Formularios_web
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        public void ValUsuario()
        {
            solicitud oSolicitud = new solicitud();
            oSolicitud.Nombres = txtuser.Text;
            oSolicitud.Pwd = txtpass.Text;
            int strcode;
            int rol;
            Session["Nombre"] = null;
            Session["Nomcrea"] = null;
            Session["Coderesp"] = null;
            Session["Rol"] = null;


            try
            {
                if (oSolicitud.ValidarUsuario())
                {
                    Session.RemoveAll();
                    Session["Nombre"] = oSolicitud.Nombres;
                    Session["Nomcrea"] = oSolicitud.Nombcrea;
                    Session["Coderesp"] = oSolicitud.RespId;
                    Session["Rol"] = oSolicitud.Rol;
                    strcode = oSolicitud.RespId;
                    rol = oSolicitud.Rol;
                    FormsAuthentication.RedirectFromLoginPage(txtuser.Text, false);
                    //       Response.Redirect("Menu.aspx?strcode=" + strcode + "&rol=" + rol);






                }
                else
                {
                    lblvalidar.Visible = true;

                    //  lblvalidar.Text = oSolicitud.Error;
                    lblvalidar.Text = "Usuario o Clave Inválidos";

                }
            }
            catch
            {
                lblvalidar.Text = "No pasó la consulta";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (this.IsValid)
            {
                ValUsuario();
            }
        }
    }
}