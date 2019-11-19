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
    public partial class GestiónTerminales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            solicitud OSolicitud = new solicitud();
            terminal OTerminal = new terminal();
            string valida = (string)(Session["Nomcrea"]);
            if (valida != null)
            {
                
                if (!this.IsPostBack)
                {
                    
                    CargarMaestros(ddlestado,5 );
                    CargarMaestros(ddluso, 6);
                   
                    consultartodasterminales(gvconsultartodastermi);
                    divsecun.Visible = false;

                }
            }
        }

        


        protected void Button1_Click(object sender, EventArgs e)
        {
            cargardatos(); 

        }

        private void consultartodasterminales(GridView gvterminales)
        {
            terminal OTerminal = new terminal();
            
            

            if (OTerminal.ConsultarTerminales())
            {
                // DataTable Listado = OTerminal.ListadoTerminales;
             DataTable Listado = OTerminal.ListadoTerminales;
                gvterminales.DataSource = Listado.DataSet;
                gvterminales.DataBind();
              

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
        private void cargardatos()
        {
            terminal OTerminal = new terminal();
            OTerminal.Numeroterm = txtnumero.Text;
            OTerminal.SerialImp = txtserialimp.Text;
            OTerminal.Imei1 = txtimei1.Text;
            OTerminal.Imei2 = txtimei2.Text;
            OTerminal.IdEstadoterm = Convert.ToInt32(ddlestado.SelectedValue);
            OTerminal.Id_Uso = Convert.ToInt32(ddluso.SelectedValue);
            OTerminal.TtObservacion = txtobs.Text;
            OTerminal.FechaIni= DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");
            OTerminal.Zonat = txtzona.Text;

            try
            {

              if( OTerminal.Ingresaterminal())
                {
                    lblcorrecto.Text = "Terminal Ingresada con Éxito";
                }
              else
                {
                    lblcorrecto.Text = "Error en el ingreso  " +OTerminal.Error;
                }

            }
            catch
            {
                lblcorrecto.Text = OTerminal.Error;
            }

        }


        protected void rbttnueva_CheckedChanged(object sender, EventArgs e)
        {
            divconsulta.Visible = false;
            divsecun.Visible = true;
            rbttnueva.Checked = false;
            
        }

        protected void rbtconsultarter_CheckedChanged(object sender, EventArgs e)
        {
            consultartodasterminales(gvconsultartodastermi);
            divconsulta.Visible = true;
            divsecun.Visible = false;
            rbtconsultarter.Checked = false;
            
        }

        protected void gvconsultartodastermi_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DropDownList ddlest = (DropDownList)e.Row.FindControl("ddlestadotempl");
                int tabla = 5;
                solicitud OSolicitud = new solicitud();

                if (OSolicitud.ConsultarMaestro(tabla))
                {
                    DataTable Listado = OSolicitud.ListadoSolicitudes;


                    ddlest.DataSource = OSolicitud.ListadoSolicitudes;
                    ddlest.DataValueField = "Id";
                    ddlest.DataTextField = "Valor";

                    ddlest.DataBind();
                }
                else
                {

                    lblcorrecto.Text = OSolicitud.Error;

                }



            }

            }

            /* private void gvconsultartodastermi_RowDataBound(object sender, GridViewRowEventArgs e)
             {
                  if (e.Row.RowType == DataControlRowType.DataRow)
                 {

                     DropDownList ddlest = (DropDownList)e.Row.FindControl("ddlestadotempl");
                         ddlest.DataSource = SelectAll();
                         ddlCosts.DataTextField = "SUPPLIER_NAME";
                         ddlCosts.DataValueField = "SUPPLIER_ID";
                         ddlCosts.DataBind();

                     int tabla = 5;
                     solicitud OSolicitud = new solicitud();


                     if (OSolicitud.ConsultarMaestro(tabla))
                     {
                         DataTable Listado = OSolicitud.ListadoSolicitudes;


                         ddlest.DataSource = OSolicitud.ListadoSolicitudes;
                         ddlest.DataValueField = "Id";
                         ddlest.DataTextField = "Valor";

                         ddlest.DataBind();
                     }
                     else
                     {

                         lblcorrecto.Text = OSolicitud.Error;

                     }









                 }*/


        }
    }
