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
    public partial class WebForm1 : System.Web.UI.Page
    {

    
        protected void Page_Load(object sender, EventArgs e)

        {
         
            int conscode =Convert.ToInt32(Request.QueryString["takecode"]);

            if(conscode==1)
            { 
            ConsultarTodasSolicitudes();

            }
            if(conscode==2)
            {
                chktodas.Visible = false;
                ConsultarSolXidrep(GridView1);
             
            }

        }


        public void ConsultarTodasSolicitudes()
        {
            solicitud oSolicitud = new solicitud();
            conexionbd obje = new conexionbd();
            DataSet dt = new DataSet();
           
            dt = obje.CargarSolicitudes("", "", "", 2);

            GridView1.DataSource = dt;
            GridView1.DataBind();
            int conteo = 0;
            conteo = oSolicitud.ContarPendientes();
           


            lbltareas.Text = "Tareas Pendientes: "+conteo ;
            if (chktodas.Checked)
            {
                dt = obje.CargarSolicitudes("", "", "", 3);

                gvtodas.DataSource = dt;
                gvtodas.DataBind();
                GridView1.Dispose();
                Pnlpendientes.Dispose();
                Pnlpendientes.Visible = false;

              
                PnlTodas.Visible = true;
          
                lbltareas.Text = "Todas las tareas";



            }
            else
            {
                Pnlpendientes.Visible = true;
               
                PnlTodas.Visible = false;
             
            }





        }

        private void ConsultarSolXidrep(GridView ddlControl)
        {
            solicitud OSolicitud = new solicitud();

            OSolicitud.RespId = Convert.ToInt32(Session["Coderesp"]);
            if (OSolicitud.ConsultarSolicitudesXidresp())
            {
            


                ddlControl.DataSource = OSolicitud.ListadoSolicitudes;
                
                
                ddlControl.DataBind();
            }
            else
            {
                lblerror.Text = OSolicitud.Error;
           

            }


        }















        protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
        {

            GridViewRow row = GridView1.SelectedRow;
            TextBox1.Text = row.Cells[1].Text;
           
            
            string valor= TextBox1.Text;


          Response.Redirect("Ticket.aspx?valor=" + valor);
            
        }
        

        protected void chktodas_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        protected void gvtodas_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = gvtodas.SelectedRow;
            TextBox1.Text = row.Cells[1].Text;


            string valor = TextBox1.Text;


            Response.Redirect("Ticket.aspx?valor=" + valor);


        }

        protected void gvtodas_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            
                conexionbd obje = new conexionbd();
                DataSet dt = new DataSet();
                gvtodas.PageIndex = e.NewPageIndex;
            
                dt = obje.CargarSolicitudes("", "", "", 3);
                gvtodas.DataSource = dt;
                gvtodas.DataBind();
                GridView1.Dispose();
                Pnlpendientes.Dispose();
                Pnlpendientes.Visible = false;
                // GridView1.Visible = false;

                PnlTodas.Visible = true;
                //  gvtodas.Visible = true;
            }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            conexionbd obje = new conexionbd();
            DataSet dt = new DataSet();
            GridView1.PageIndex = e.NewPageIndex;

            dt = obje.CargarSolicitudes("", "", "", 2);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            gvtodas.Dispose();

            PnlTodas.Dispose();

            Pnlpendientes.Visible = true;
            GridView1.Visible = true;

            PnlTodas.Visible = false;
        }
    }
    }
