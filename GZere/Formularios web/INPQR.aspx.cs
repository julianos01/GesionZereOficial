using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using GZere.Clases;


namespace GZere.Formularios_web
{
    public partial class INPQR : System.Web.UI.Page
    {
      //  string nomcrea;



        protected void Page_Load(object sender, EventArgs e)
        {
            string telep = "";
            string strcode = Request.QueryString["strcode"];
           // nomcrea = Request.QueryString["Nomcrea"];


            if (!this.IsPostBack)
            {
                
               
               
                CargarMaestros(DDLResponsablesol, 2);
 //               CargarMaestros(DDLcreasol, 2);
                CargarMaestros(DDLMedioing, 3);
                CargarMaestros(DDLEstadosol, 1);
               // string nomcrea = Request.QueryString["Nomcrea"];
                txtcreasol.Text = (string)(Session["Nomcrea"]);

            

            }

            int tiposol = Convert.ToInt32(ddltiposol.SelectedItem.Value);
            if (tiposol == 1)
            {
                txttel.Visible = true;
                Label8.Visible = true;



                txtemail.Visible = true;
                Label4.Visible = true;

                Label3.Text = "INGRESO PQRS USUARIOS";

                conexionbd conectar = new conexionbd();

                SqlDataSource test = new SqlDataSource();


            }


            if (tiposol == 2)
            {
                txttel.Visible = false;
                Label8.Visible = false;
                txttel.Text = "N / A";
                telep = "N/A";




                txtemail.Visible = false;
                Label4.Visible = false;
                Label3.Text = "INGRESO PQRS EMPLEADO ZER-E";

            }


        }

        private void CargarMaestros(DropDownList ddlControl, int tabla)
        {
            solicitud OSolicitud = new solicitud();


            if (OSolicitud.ConsultarMaestro(tabla))
            {
                DataTable Listado = OSolicitud.ListadoSolicitudes;


                ddlControl.DataSource = OSolicitud.ListadoSolicitudes;
                ddlControl.DataValueField = "Id";
                ddlControl.DataTextField = "Valor";
               
                ddlControl.DataBind();
            }
            else
            {

                lblcorrecto.Text = OSolicitud.Error;

            }


        }



        protected void Button3_Click(object sender, EventArgs e)
        {          
           try
            {
                IngresarSolicitud();
                
                            }
                            catch (Exception erro)
                            {

                                lblcorrecto.Text = "Error" + erro;
                                lblcorrecto.Visible = true;

                            }
        }


        public void IngresarSolicitud()
        {
            solicitud oSolicitud = new solicitud();
            oSolicitud.Nombres = txtnomusr.Text;
            oSolicitud.Apellidos = txtapeusr.Text;
            oSolicitud.Identificacion = txtcedusr.Text;
            oSolicitud.Email = txtemail.Text;
            oSolicitud.Telefono = txttel.Text;
            oSolicitud.PlacaVe = txtplaca.Text;
            oSolicitud.Descripcion = txtdescr.Text;
            oSolicitud.Respuesta = txtgestion.Text;
            oSolicitud.RespId = Convert.ToInt32(DDLResponsablesol.SelectedItem.Value);
            oSolicitud.Idmedio = Convert.ToInt32(DDLMedioing.SelectedItem.Value);
            oSolicitud.Idrespcrea=(Int32)(Session["Coderesp"]);

            oSolicitud.IdEstadosol = Convert.ToInt32(DDLEstadosol.SelectedItem.Value);
           if( oSolicitud.IngresarSolicitud())
            {
                ConsTicketFinal();

            }
        }

        public void ConsTicketFinal()
        {
            solicitud oSolicitud = new solicitud();
            oSolicitud.ConsultarTkFin();
            int ticket;
            ticket =1 + oSolicitud.Ticket;
            lblcorrecto.Text = "Solicitud Ingresada Exitosamente con Ticket # " + ticket;
            lblcorrecto.Visible = true;


            txtnomusr.Text = "";
            txtapeusr.Text = "";
            txtcedusr.Text = "";
            txtdescr.Text = "";
            txtemail.Text = "";
            txtgestion.Text = "";
            txtplaca.Text = "";
            txttel.Text = "";


        }

        protected void ddltiposol_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}