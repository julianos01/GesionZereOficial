using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;
using GZere.Clases;


namespace GZere
{
    public class conexionbd
    {

        #region "Constructor"

        public conexionbd()
        {
            //Datos del constructor
            OCommand1 = new MySqlCommand();
            OConexionBaDa1 = new MySqlConnection();
            ODataSet = new DataSet();
            OParametro1 = new MySqlParameter();
            OAdapter1 = new MySqlDataAdapter();
            _MYSQL = string.Empty;
    }
                #endregion

        #region "Destructor"
        ~conexionbd()
        {
            CerrarConexion();
        }

        #endregion

        #region "Atributos"

        private string _MYSQL;
        private string _StringConexion;
        private MySqlCommand OCommand;
        private MySqlConnection OConexionBaDa;
        private MySqlDataReader OReader;
        private string _Error;
        private bool _Abrio;
        private string _NombreTabla;
        private MySqlDataAdapter OAdapter;
        private DataSet ODataSet;
        private MySqlParameter OParametro;
        private MySqlTransaction MiTransaccion;



        #endregion Atributos

        #region Propiedades

        public string MYSQL
        {
            get
            {
                return _MYSQL;
            }

            set
            {
                _MYSQL = value;
            }
        }

        public string StringConexion
        {
            get
            {
                return _StringConexion;
            }

            set
            {
                _StringConexion = value;
            }
        }

        public MySqlCommand OCommand1
        {
            get
            {
                return OCommand;
            }

            set
            {
                OCommand = value;
            }
        }

        public MySqlConnection OConexionBaDa1
        {
            get
            {
                return OConexionBaDa;
            }

            set
            {
                OConexionBaDa = value;
            }
        }

        public MySqlDataReader OReader1
        {
            get
            {
                return OReader;
            }

            set
            {
                OReader = value;
            }
        }

        public string Error
        {
            get
            {
                return _Error;
            }
        }


        public bool Abrio
        {
            get
            {
                return _Abrio;
            }

            set
            {
                _Abrio = value;
            }
        }

        public string NombreTabla
        {
            get
            {
                return _NombreTabla;
            }

            set
            {
                _NombreTabla = value;
            }
        }

        public MySqlDataAdapter OAdapter1
        {
            get
            {
                return OAdapter;
            }

            set
            {
                OAdapter = value;
            }
        }

        public DataSet MiDataSet
        {
            get
            {
                return ODataSet;
            }

            set
            {
                ODataSet = value;
            }
        }

        public MySqlParameter OParametro1
        {
            get
            {
                return OParametro;
            }

            set
            {
                OParametro = value;
            }
        }

        public MySqlTransaction MiTransaccion1
        {
            get
            {
                return MiTransaccion;
            }

            set
            {
                MiTransaccion = value;
            }
        }








        #endregion Propiedades



        #region Metodos Publicos

        public MySqlConnection obtenerconexion()
        {

            MySqlConnection conn = null;

            String servidor = "localhost";
            String puerto = "3307";
            String usuario = "julian";
            String password = "Pulsar0830";
            String database = "zereuser";

            //Cadena de conexion
            string connStr =
                String.Format("server={0};port={1};user id={2}; password={3}; " +
                    "database={4}; pooling=false;" +
                    "Allow Zero Datetime=False;Convert Zero Datetime=True",
                   servidor, puerto, usuario, password, database);
            conn = new MySqlConnection(connStr);

            try
            {

                conn.Open();//se abre la conexion

            }
            catch (MySqlException ex)
            {

                Console.WriteLine("ERROR: " + ex.Message);
            }

            return conn;


        }

        public bool CerrarConexion()
        {
            try
            {
                OConexionBaDa.Close();
            }
            catch (Exception ex)
            {
                
            }
            try
            {
                OConexionBaDa = null;
            }
            catch (Exception ex1)
            {
               
            }
            return true;
        }

     


        public DataSet CargarSolicitudes(string ced,string tk,string placa,int llama )
        {
            MySqlConnection cnn = new MySqlConnection();
            conexionbd conectar = new conexionbd();
            cnn = conectar.obtenerconexion();
           
            


            DataSet dt = new DataSet();
            //   using (SqlConnection cnn = new SqlConnection("Data Source=.;Initial Catalog=AdventureWorks2012;Integrated Security=True"))
            conectar.obtenerconexion();
            string Consultasol="";

            if (llama == 1)
                {
                 Consultasol = "SELECT Num_ticket as Ticket , nom_usr as Nombre, ape_usr as Apellido, ced_usr as Cedula,tel_usr as Telefono,placa_ve as Placa, testadosol.desc_estado as Estado , tresponsable.Nomb_resp as Responsable,fecha as Fecha_Creacion,fecUlmodificacion as Fecha_Ult_modificación from tsolicitudes inner join testadosol on testadosol.Id_estado_sol= tsolicitudes.Id_estado_sol  inner join tresponsable on tresponsable.id_resp= tsolicitudes.id_resp where ced_usr like'" + ced + "%' and Num_Ticket like'" + tk + "%'  and placa_ve like'" + placa + "%' order by fecha desc";

            }
            else if (llama == 2)
                    {
                Consultasol = "select Num_Ticket as Ticket, nom_usr as Nombre_Usuario, ape_usr as Apellido,placa_ve as Placa, tresponsable.Nomb_resp as Responsable, tsolicitudes.fecha from tsolicitudes inner join tresponsable on tsolicitudes.id_resp = tresponsable.id_resp  where tsolicitudes.Id_estado_sol < 3 order by fecha desc";

            }

            if (llama == 3)
            {
                Consultasol = "select Num_Ticket as Ticket, nom_usr as Nombre_Usuario, ape_usr as Apellido,placa_ve as Placa, tresponsable.Nomb_resp as Responsable,testadosol.desc_estado as Estado_Solicitud, tsolicitudes.fecha from tsolicitudes  inner join tresponsable on tsolicitudes.id_resp = tresponsable.id_resp  inner join testadosol on tsolicitudes.Id_estado_sol = testadosol.Id_estado_sol order by fecha desc";

            }


            try
            {
               
                MySqlCommand cmd = new MySqlCommand(Consultasol, cnn);
                
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                
                da.Fill(dt);
            }
            catch(Exception erro)
            {
                
            }

            return dt;
        }


        public bool LlenarDataSet()
        {
            if (_MYSQL == "")
            {
                _Error = "No definio la instrucción SQL";
                return false;
            }
            if (_NombreTabla == "")
            {
                _Error = "No definio el nombre de la tabla";
                return false;
            }

           
            MySqlConnection cnn = new MySqlConnection();
            conexionbd conectar = new conexionbd();
            cnn = conectar.obtenerconexion();


                // string Consultasol = "select * from testadosol";
                   string Consultasol= "SELECT Num_ticket as Ticket , nom_usr as Nombre, ape_usr as Apellido, ced_usr as Cedula,tel_usr as Telefono,placa_ve as Placa, testadosol.desc_estado as Estado , tresponsable.Nomb_resp as Responsable,fecha as Fecha_Creacion,fecUlmodificacion as Fecha_Ult_modificación from tsolicitudes inner join testadosol on testadosol.Id_estado_sol= tsolicitudes.Id_estado_sol  inner join tresponsable on tresponsable.id_resp= tsolicitudes.id_resp  order by fecha desc"; 
                        

            try
            {
                MySqlCommand cmd = new MySqlCommand(Consultasol, cnn);
                 

                OCommand = cmd;
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                OAdapter = da;
                OAdapter.Fill(ODataSet, _NombreTabla);


  
                return true;
            }
            catch (Exception ex)
            {
                _Error = ex.Message+"Mamiño";
                return false;
            }
        }


      

        public Boolean insertararchivo(string nombre,string ext,string contentType,byte[] imagen)
        {
            MySqlConnection cnn = new MySqlConnection();
            conexionbd conectar = new conexionbd();
            cnn = conectar.obtenerconexion();



            String selectss = " insert into carga (nombre,ext,ctype,imagen)  values ('" + nombre + " ','" + ext + "','" + contentType + "','" + imagen + "')";
            try
            {
                MySqlCommand mycomand = new MySqlCommand(selectss, cnn);

                mycomand.ExecuteNonQuery();
                cnn.Close();


                return true;
            }
            catch(Exception e)
            {
                return false;
            }

        }

        public DataSet llenarddl(int llama,int est)
        {
            MySqlConnection cnn = new MySqlConnection();
            conexionbd conectar = new conexionbd();
            cnn = conectar.obtenerconexion();
            conectar.obtenerconexion();
            string Consultasol = "";

            if (llama == 2)
            {
                Consultasol = "select Id_estado_sol,desc_estado from testadosol ";
            }

            if(llama==3)

            {
                Consultasol = "select Id_estado_sol,desc_estado from testadosol where Id_estado_sol='"+est+"' ";

            }
            DataSet dt = new DataSet();
            conectar.obtenerconexion();
            

            try
            {

                MySqlCommand cmd = new MySqlCommand(Consultasol, cnn);
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
            }
            catch (Exception erro)
            {

            }


            return dt;
        }
      

        public MySqlDataReader consultarlogin(string struser,string strpass)
        {
            conexionbd conectar = new conexionbd();
            String query = "select cod_auto,id_rol from logins where nom_usuario='" + struser + "' and pass='" + strpass + "' ";
            MySqlCommand mycomand = new MySqlCommand(query, conectar.obtenerconexion());
            MySqlDataReader myreader= mycomand.ExecuteReader();

            try
           {


                myreader.Read();

  
             }
             catch (Exception erro)
              {

            //   validausuario.Visible = true;

             }
            return myreader;


        }


        public bool Consultar()
        {


            MySqlConnection cnn = new MySqlConnection();
            conexionbd conectar = new conexionbd();
            cnn = conectar.obtenerconexion();


            string Consultasol = "select * from testadosol";


            MySqlCommand cmd = new MySqlCommand(Consultasol, cnn);


            OCommand = cmd;

           // OCommand.Connection = cnn;
         //   OCommand.CommandText = Consultasol;
            try
            {
                OReader = OCommand.ExecuteReader();
                return true;
            }
            catch (Exception ex)
            {
                _Error = ex.Message+ "Consultar en Conexionbd.cs";
                return false;
            }
        }


        #endregion Metodos Publicos

    }




}