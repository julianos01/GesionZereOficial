using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;
using CedeSistemas.ConexionBaseDatos;
using GZere.Clases;

namespace GZere.Formularios_web
{
    public partial class Ticket : System.Web.UI.Page
    {
        string valor;
     //   string gestion;


        protected void Page_Load(object sender, EventArgs e)
        {
           

            lbladjunto.Text = "";
            valor = Request.QueryString["valor"];
            int Varticket = Convert.ToInt32(valor);
            if (!this.IsPostBack)
             {
            try
            {
                btnactualizar.CssClass = "btn btn-primary";
                
                
                CargarMaestros(ddlestadosol, 1);
                CargarMaestros(ddlresponsable, 2);
                ConsultarTicket(Varticket);
                MostrarAdjunto();
            }
            catch
            {
                Lblerror.Text = "Hay un error";
            }


           }
            else
            {
                try
                {
                    RecargarGestion(Varticket);

                    
                    
                }
                catch
                {
                    Lblerror.Text = "Consulta Demorada";
                }
              
            }

       



        }

       

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void txtcodeticket_TextChanged(object sender, EventArgs e)
        {

        }



        protected void fecha_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            procesarticket();
            
        }

        private void procesarticket()
        {
            //  string respuesta;
            // string fecha;
            string valida = (string)(Session["Nomcrea"]);
            solicitud oSolicitud = new solicitud();


          
            oSolicitud.FechaUlt= DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss");
            oSolicitud.Respuesta = txtgestionant.Text + "\n" + "--------------------------------------------------" + "\n" + txtgestionactual.Text + "         " + "\n" + oSolicitud.FechaUlt + " " +"por: "+valida;
            oSolicitud.IdEstadosol = int.Parse(ddlestadosol.SelectedValue);
            oSolicitud.RespId = int.Parse(ddlresponsable.SelectedValue);
            oSolicitud.Ticket = int.Parse(lblnumticket.Text);
            try
            {

                if(oSolicitud.Upticket())
                {
                 
                    lblactualización.Visible = true;
                    lblactualización.Text = "Actualización Exitosa";
                    txtgestionant.ReadOnly = true;
                    txtgestionactual.Text = " ";
                    txtgestionant.Text = oSolicitud.Respuesta;
                  

                }
                else
                {
                    Lblerror.Text = oSolicitud.Error;
                }

  
            }

            catch (Exception erro)
            {
                lblactualización.Visible = true;
                lblactualización.Text = "Actualización fallida" + erro;
            }


        }

        protected void gvArchivo_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
              

               
                ImageButton imgEliminar = (ImageButton)e.Row.FindControl("imgEliminar");
               
                imgEliminar.CommandArgument = e.Row.RowIndex.ToString();
                //mostrar icono según Género

                imgEliminar.Width = 40;
                
                imgEliminar.ToolTip = "Eliminar";


            }
            else if (e.Row.RowType == DataControlRowType.Header)
            {
               

            }




        }


        protected void btnCargar_Click(object sender, EventArgs e)
        {

            //cargarImagenes_Click();

        }

        //   protected void cargarImagenes_Click(object sender, EventArgs e)
     /*   public void cargarImagenes_Click()
        {
            try
            {
                if (FUadjuntar.HasFile)
                {
                    // Se verifica que la extensión sea de un formato válido
                    string ext = FUadjuntar.PostedFile.FileName;
                    ext = ext.Substring(ext.LastIndexOf(".") + 1).ToLower();
                    string[] formatos =
                      new string[] { "xls", "xlsx", "docx", "db", "gif", "jpg", "png" };
                    if (Array.IndexOf(formatos, ext) < 0)
                        lblcarga.Text = "Formato de imagen inválido.";


                    else
                        GuardarBD(FUadjuntar.PostedFile, lblcarga, lblcargados, pnlAdjuntos);
                }
                else
                    lblcarga.Text = "Seleccione un archivo a cargar.";
            }
            catch (Exception ex)
            {
                lblcarga.Text = ex.Message;
            }
        }*/


       

        private void CargarMaestros(DropDownList ddlControl,int tabla)
        {
            solicitud OSolicitud = new solicitud();

            
            if (OSolicitud.ConsultarMaestro(tabla))
            {
                DataTable Listado = OSolicitud.ListadoSolicitudes;


                ddlControl.DataSource = OSolicitud.ListadoSolicitudes;
                ddlControl.DataValueField = "Id";
                ddlControl.DataTextField = "Valor";
                // ddlControl.SelectedValue ="Aprobada" ;
                ddlControl.DataBind();
            }
            else
            {

                Lblerror.Text = OSolicitud.Error;

            }


        }

        private void RecargarGestion(int NumTicket)
        {
            solicitud oSolicitud = new solicitud();
            oSolicitud.Ticket = NumTicket;


            if (oSolicitud.ConsultarTk())
            {
                txtgestionant.Text = oSolicitud.Respuesta;
            }
        }
       

        private void ConsultarTicket(int NumTicket)
        {
            solicitud oSolicitud = new solicitud();
            oSolicitud.Ticket = NumTicket;
           

            if (oSolicitud.ConsultarTk())
            {

                lblnumticket.Text = NumTicket.ToString();
                lblnom.Text = oSolicitud.Nombres;
                lblape.Text = oSolicitud.Apellidos;
                lblced.Text = oSolicitud.Identificacion;
                lbltel.Text = oSolicitud.Telefono;
                lblemail.Text = oSolicitud.Email;
                lblplaca.Text = oSolicitud.PlacaVe;
                ddlresponsable.Text = oSolicitud.NombResponsable;
                lblcreo.Text = oSolicitud.Nombcrea;
                lblmedio.Text = oSolicitud.Descmedio;
                lblfecha.Text = oSolicitud.Fechacrea.ToString();
                int valestado = oSolicitud.IdEstadosol;
                if (valestado>2)
                {
                    ddlestadosol.Enabled = false;
                }
                ddlestadosol.SelectedValue = oSolicitud.IdEstadosol.ToString();
                ddlresponsable.SelectedValue = oSolicitud.RespId.ToString();
                txtdescripcion.Text = oSolicitud.Descripcion;
                txtgestionant.Text = oSolicitud.Respuesta;


            }
            else
            {
                Lblerror.Text = oSolicitud.Error;
               
            }
        }

        protected void btncargar_Click1(object sender, EventArgs e)
        {
            solicitud oSolicitud = new solicitud();
            if (FileUpload1.HasFile)
            {

                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/") + FileUpload1.FileName);

                oSolicitud.NomAdjunto = FileUpload1.FileName;
                oSolicitud.Ticket = int.Parse(lblnumticket.Text);
                oSolicitud.EstadoAdj = 1;
                oSolicitud.Opcion = 1;

                if( oSolicitud.IngAdjunto())
                {
                   
                    MostrarAdjunto();
                    lbladjunto.Text = "Archivo Cargado Correctamente";
                }


            }
            else
            {
                lbladjunto.Text = "No ha Seleccionado un Archivo Adjunto";
            }


        }

        public void MostrarAdjunto()
        {
            solicitud oSolicitud = new solicitud();

            oSolicitud.Ticket = int.Parse(lblnumticket.Text);
            
            if (oSolicitud.ConsultArchivo())
            {

                gvArchivo.DataSource = oSolicitud.ListadoSolicitudes;
                gvArchivo.DataBind();
                              
            }
            else
            {

                lbladjunto.Text = oSolicitud.Error;
                
            }


        }


        protected void gvArchivo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/Data/") + e.CommandArgument);
                Response.End();

            }

            if (e.CommandName == "Eliminar")
            {
                solicitud oSolicitud = new solicitud();

                oSolicitud.Ticket = int.Parse(gvArchivo.DataKeys[Convert.ToInt32(e.CommandArgument)][0].ToString());
               // oSolicitud.Ticket = 4;
                oSolicitud.EstadoAdj = 2;
                oSolicitud.Opcion = 2;

                oSolicitud.IngAdjunto();
                MostrarAdjunto();

                //ConsultarPaciente(_PacienteId);

            }
        }

        protected void btncargar_Click2(object sender, EventArgs e)
        {
            solicitud oSolicitud = new solicitud();
            lbladjunto.Text = "";
            try {
                if (FileUpload1.HasFile)
                {

                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/") + FileUpload1.FileName);

                    oSolicitud.NomAdjunto = FileUpload1.FileName;
                    oSolicitud.Ticket = int.Parse(lblnumticket.Text);
                    oSolicitud.EstadoAdj = 1;
                    oSolicitud.Opcion = 1;

                    if (oSolicitud.IngAdjunto())
                    {

                        MostrarAdjunto();
                        lbladjunto.Text = "Archivo Cargado Correctamente";
                    }


                }
                else
                {
                    lbladjunto.Text = "No ha Seleccionado un Archivo Adjunto";
                }
            }
            catch(Exception ex)
            {
                lbladjunto.Text = ex.ToString();
            }

        }
    }
}

 