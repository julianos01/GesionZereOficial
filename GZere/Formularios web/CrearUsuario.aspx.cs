using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace GZere.Formularios_web
{
    public partial class CrearUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }



        protected void btnguardar_Click(object sender, EventArgs e)
        {
            string nombre = txtnom.Text;
            string ape = txtape.Text;
            string pass = txtpass.Text;
            string ced = txtced.Text;
            string rol = ddlrol.SelectedItem.Value;


            string conexion = "server=Ingeniero;user id=julian;password=Pulsar0830;port=3307;database=zereuser";
            MySqlConnection conn = new MySqlConnection(conexion);
            try
            {


                conn.Open();


                String insert = "insert into tresponsable (Nomb_resp,ape_resp,id_rol,nom_usuario,pass) values ('" + nombre + "', '" + ape + "' , '" + rol + "', '" + ced + "', '" + pass + "')";



                MySqlCommand mycomand = new MySqlCommand(insert, conn);

                mycomand.ExecuteNonQuery();
                lblrespuesta.Text = "Registro Exitoso";
                conn.Close();

            }
            catch (Exception erro)
            {
                lblrespuesta.Text = "Error en el registro" + erro;
            }


        }

        protected void txtced_TextChanged(object sender, EventArgs e)
        {

        }
    }
}