using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Data;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;


namespace CedeSistemas.ConexionBaseDatos
{
    public class ConexionBase
    {
        #region "Constructor"

        public ConexionBase()
        {
            //Datos del constructor
            OCommand = new MySqlCommand();
          
            OConexionBD = new MySqlConnection();
            ODataSet = new DataSet();
            OParametro = new MySqlParameter();
            OAdapter = new MySqlDataAdapter();
        }

        #endregion

        #region "Destructor"
        ~ConexionBase()
        {
            CerrarConexion();
        }

        #endregion

        #region "Atributos"

        private string  _MYSQL;
        private string  _StringConexion;
        
        private MySqlCommand OCommand;
        private MySqlConnection OConexionBD;
        
        private MySqlDataReader OReader;
        
        private string  _Error;
        private bool _Abrio;
        private string  _NombreTabla;
        private MySqlDataAdapter OAdapter;
       
        private DataSet ODataSet;
        private MySqlParameter OParametro;
        
        private MySqlTransaction MiTransaccion;
        

        #endregion

        #region "Propiedades"

        public string NombreTabla
        {
            get
            {
                return  _NombreTabla;
            }
            set
            {
                 _NombreTabla = value;
            }
        }

        public MySqlCommand MiCommand
        {
            get
            {
                return OCommand;
            }
        }

        public DataSet MiDataSet
        {
            get
            {
                return ODataSet;
            }
        }

        public string SQL
        {
            get
            {
                return  MYSQL;
            }
            set
            {
                 MYSQL = value;
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
        public MySqlDataReader Reader
        {
            get
            {
                return OReader;
            }
        }        
        public MySqlParameter miOParametro
        {
            get
            {
                return (OParametro);
            }
        }
        public string Error
        {
            get
            {
                return  _Error;
            }
        }

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

        #endregion

        #region "Metodos Privados"

        private bool GenerarString()
        {
            try
            {


                String servidor = "localhost";
                String puerto = "3307";
                String usuario = "julian";
                String password = "Pulsar0830";
                String database = "zereuser";

                //Cadena de conexion
                _StringConexion =
                    String.Format("server={0};port={1};user id={2}; password={3}; " +
                        "database={4}; pooling=false;" +
                        "Allow Zero Datetime=False;Convert Zero Datetime=True",
                       servidor, puerto, usuario, password, database);






                /*
                 * Seguridad Integrada
                 * Data Source=SERVIDOR;Initial Catalog=BASEDATOS; Integrated Security = SSPI;
                 * 
                 * Usuario Sql
                 * Data Source=SERVIDOR;Initial Catalog=BASEDATOS;User Id =USUARIO; Password=CLAVE;
                 * */

                //  _StringConexion= System.Configuration.ConfigurationManager.AppSettings["StringConexion"].ToString();
                //      _StringConexion="server=Ingeniero;user id=julian;password=Pulsar0830;port=3307;database=zereuser providerName="MySql.Data.MySqlClient";
                return true;
            }
            catch(Exception ex)
            {
                 _Error = ex.Message;
                return false;
            }
        }

        private bool AbrirConexion()
        {
            if (GenerarString())
            {
                OConexionBD.ConnectionString =  _StringConexion;
                try 
                {
                    OConexionBD.Open();
                    _Abrio = true;
                    return true;
                }
                catch (Exception exception)
                {
                     _Error = exception.Message;
                    _Abrio = false;
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        #endregion

        #region "Metodos Publicos"

        public bool AgregarParametro(ParameterDirection Direccion, string Nombre, MySqlDbType TipoDato, Int16 Tamano, object Valor)
        {
            try
            {
                OParametro.Direction = Direccion;
                OParametro.ParameterName = Nombre;
                OParametro.MySqlDbType = TipoDato;
                OParametro.Size = Tamano;
                OParametro.Value = Valor;

                OCommand.Parameters.Add(OParametro);
                OParametro = new MySqlParameter();
                return (true);
            }
            catch (Exception ex)
            {
                 _Error = ex.Message;
                return (false);
            }
        }

        public bool EjecutarSentencia(bool blnParametros)
        {
            if (MYSQL == "")
            {
                 _Error = "No definio la instrucción SQL";
                return false;
            }
            if (_Abrio == false)
            {

                if (AbrirConexion() == false)
                {
                    return false;
                }
            }
            OCommand.Connection = OConexionBD;
            
            if (blnParametros)
            {
                OCommand.CommandType = CommandType.StoredProcedure;
            }
            else
            {
                OCommand.CommandType = CommandType.Text;
            }

            OCommand.CommandText =  MYSQL;
            try
            {
                OCommand.ExecuteNonQuery();               
                return true;
            }
            catch (Exception exception)
            {
                 _Error = exception.Message;
                return false;
            }
        }

        public bool AbrirTransaccion()
        {
            if ( MYSQL == "")
            {
                 _Error = "No definio la instrucción SQL";
                return false;
            }
            if (_Abrio == false)
            {

                if (AbrirConexion() == false)
                {
                    return false;
                }
            }
            try
            {
                MiTransaccion = OConexionBD.BeginTransaction();
                OCommand.Transaction = MiTransaccion;
                return (true);
            }
            catch (Exception ex)
            {
                 _Error = ex.Message;
                return false;
            }
        }

        public bool AceptarTransaccion()
        {
            try
            {
                MiTransaccion.Commit();
                return (true);
            }
            catch (Exception ex)
            {
                try
                {
                    MiTransaccion.Rollback();
                     _Error = "No se aceptó la transacción" + ex.Message;
                    return (false);
                }
                catch (Exception ex1)
                {
                     _Error = "No se aceptó la transacción ni la retrocedio: " + ex1.Message;
                    return (false);
                }
            }
        }

        public bool RechazarTransaccion()
        {
            try
            {
                MiTransaccion.Rollback();
                return (true);
            }
            catch (Exception ex)
            {
                 _Error = "No se retrocedió la transacción: " + ex.Message;
                return (false);
            }
        }

        public bool CerrarConexion()
        {
            try
            {
                OConexionBD.Close();
            }
            catch (Exception ex) 
            {
                 _Error = "No cerró la conexion" + ex.Message;
            }
            try
            {
                OConexionBD = null;
            }
            catch (Exception ex1)
            {
                 _Error = "No liberó la conexion" + ex1.Message;//error #2
            }
            return true;
        }

        public bool LlenarDataSet(bool blnParametros)
        {
            if ( MYSQL == "")
            {
                 _Error = "No definio la instrucción SQL";
                return false;
            }
            if ( _NombreTabla == "")
            {
                 _Error = "No definio el nombre de la tabla";
                return false;
            }

            if (_Abrio == false)
            {
                if (AbrirConexion() == false)
                {
                    return false;
                }
            }

            if (blnParametros)
            {
                OCommand.CommandType = CommandType.StoredProcedure;
            }
            else
            {
                OCommand.CommandType = CommandType.Text;
            }

            OCommand.Connection = OConexionBD;
            OCommand.CommandText =  MYSQL;

            try
            {
                OAdapter.SelectCommand = OCommand;
                OAdapter.Fill(ODataSet,  _NombreTabla);
                return true;
            }
            catch (Exception ex)
            {
                 _Error = ex.Message;
                return false;
            }
        }

        public bool Consultar(bool blnParametros)
        {
            if ( MYSQL == "")
            {
                 _Error = "No definio la instrucción SQL";
                return false;
            }
            if (_Abrio == false)
            {
                if (AbrirConexion() == false)
                {
                    return false;
                }
            }

            if (blnParametros)
            {
                OCommand.CommandType = CommandType.StoredProcedure;
            }
            else
            {
                OCommand.CommandType = CommandType.Text;
            }

            OCommand.Connection = OConexionBD;
            OCommand.CommandText =  MYSQL;
            try
            {
                OReader = OCommand.ExecuteReader();
                return true;
            }
            catch (Exception ex)
            {
                 _Error = ex.Message;
                return false;
            }
        }

        #endregion
    }

}
