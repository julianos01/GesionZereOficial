using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;


namespace GZere.Formularios_web
{
    public partial class ConsultAvanzada : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string ced ="";
            string tk = "";
            string placa ="";
            ced = txtcedula.Text;
            tk = txtticket.Text;
            placa = txtplaca.Text;
            
            conexionbd obje = new conexionbd();
            DataSet dt = new DataSet();
            dt = obje.CargarSolicitudes(ced,tk,placa,1);

            GridView1.DataSource = dt;
            GridView1.DataBind();

            if (ced == "" && placa=="" && tk=="") 
            {
               
                        lblresp.Text = "Consulta sin filtros";
                  
            }

            else
            {
                
                lblresp.Text = "Consulta Filtrada";
            }


        }
          protected void  GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
          {
               string ced = "";
               string tk = "";
               string placa = "";
               ced = txtcedula.Text;
               tk = txtticket.Text;
               placa = txtplaca.Text;

               conexionbd obje = new conexionbd();
               DataSet dt = new DataSet();
              GridView1.PageIndex = e.NewPageIndex;
              dt = obje.CargarSolicitudes(ced, tk, placa,1);

            
              GridView1.DataSource = dt;
            
              GridView1.DataBind();
             
           

        }

        protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
        {

            GridViewRow row = GridView1.SelectedRow;
            string valor = row.Cells[1].Text;


            


            Response.Redirect("Ticket.aspx?valor=" + valor);

        }


    }


}
