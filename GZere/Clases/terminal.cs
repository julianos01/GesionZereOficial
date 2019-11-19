using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;
using CedeSistemas.ConexionBaseDatos;
using System.Web.UI.WebControls;

namespace GZere.Clases
{
    public class terminal
    {
        #region Constructor
        public terminal()
        {
            Numeroterm = null;
            IdEstadoterm = 0;
            Id_Uso = 0;
            TtObservacion = string.Empty;
            SerialImp = string.Empty;
            Imei1 = null;
            Imei2 = null;
            Error = string.Empty;
            MYSQL = string.Empty;
            Zonat = null;
            
            
            


        }

        #endregion Constructor


        #region atributos

        private string _Numeroterm;
        private int _IdEstadoterm;
        private int _Id_Uso;
        private string _FechaIni;
        private string _FechaFin;
        private string _ttObservacion;
        private string _SerialImp;
        private string _Imei1;
        private string _Imei2;
        private string _Error;
        private string _MYSQL;
        private string _zonat;
        private DataTable _ListadoTerminales;





        #endregion Atributos

        #region Propiedades
        public string Numeroterm
        {
            get
            {
                return _Numeroterm;
            }

            set
            {
                _Numeroterm = value;
            }
        }

        public int IdEstadoterm
        {
            get
            {
                return _IdEstadoterm;
            }

            set
            {
                _IdEstadoterm = value;
            }
        }

        public int Id_Uso
        {
            get
            {
                return _Id_Uso;
            }

            set
            {
                _Id_Uso = value;
            }
        }

        public string FechaIni
        {
            get
            {
                return _FechaIni;
            }

            set
            {
                _FechaIni = value;
            }
        }

        public string FechaFin
        {
            get
            {
                return _FechaFin;
            }

            set
            {
                _FechaFin = value;
            }
        }

        public string TtObservacion
        {
            get
            {
                return _ttObservacion;
            }

            set
            {
                _ttObservacion = value;
            }
        }

        public string SerialImp
        {
            get
            {
                return _SerialImp;
            }

            set
            {
                _SerialImp = value;
            }
        }

        public string Imei1
        {
            get
            {
                return _Imei1;
            }

            set
            {
                _Imei1 = value;
            }
        }

        public string Imei2
        {
            get
            {
                return _Imei2;
            }

            set
            {
                _Imei2 = value;
            }
        }

        public string Error
        {
            get
            {
                return _Error;
            }

            set
            {
                _Error = value;
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

        public DataTable ListadoTerminales
        {
            get
            {
                return _ListadoTerminales;
            }

            set
            {
                _ListadoTerminales = value;
            }
        }

        public string Zonat
        {
            get
            {
                return _zonat;
            }

            set
            {
                _zonat = value;
            }
        }


        #endregion

        #region Metodos Publicos

        public bool Ingresaterminal()
        {
            ConexionBase oConexion = new ConexionBase();
            if (oConexion.AgregarParametro(ParameterDirection.Input, "@nterm",
                MySqlDbType.VarChar, 50, _Numeroterm) == false)
            {
                Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }

            if (oConexion.AgregarParametro(ParameterDirection.Input, "@estadot",
             MySqlDbType.Int32, 0, _IdEstadoterm) == false)
            {
                Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }
            if (oConexion.AgregarParametro(ParameterDirection.Input, "@idusuario",
            MySqlDbType.Int32, 0, _Id_Uso) == false)
            {
                Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }

            if (oConexion.AgregarParametro(ParameterDirection.Input, "@fechaini",
            MySqlDbType.VarChar,100, _FechaIni) == false)
            {
                Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }
            if (oConexion.AgregarParametro(ParameterDirection.Input, "@fechafin",
            MySqlDbType.VarChar, 100,_FechaFin) == false)
            {
                Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }

            if (oConexion.AgregarParametro(ParameterDirection.Input, "@obser",
            MySqlDbType.VarChar, 5000, _ttObservacion) == false)
            {
                Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }

            if (oConexion.AgregarParametro(ParameterDirection.Input, "@serialim",
            MySqlDbType.VarChar, 45, _SerialImp) == false)
            {
                Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }

            if (oConexion.AgregarParametro(ParameterDirection.Input, "@imei1",
           MySqlDbType.VarChar, 45, _Imei1) == false)
            {
                Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }

            if (oConexion.AgregarParametro(ParameterDirection.Input, "@imei2",
            MySqlDbType.VarChar, 45, _Imei2) == false)
            {
                Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }

            if (oConexion.AgregarParametro(ParameterDirection.Input, "@zterm",
             MySqlDbType.VarChar, 45,_zonat) == false)
            {
                Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }

            MYSQL = "Usp_IngTerminal";
            oConexion.SQL = MYSQL;

            if (oConexion.EjecutarSentencia(true))
            {

                oConexion.CerrarConexion();
                oConexion = null;
                return true;


            }
            else
            {
                _Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;
            }


            
        }

        public bool ConsultarTerminales()
        {
            ConexionBase oConexion = new ConexionBase();
            
           
                _MYSQL = "Usp_ConsultarTerminal";
                oConexion.NombreTabla = "tterminal";
           
            oConexion.MYSQL = _MYSQL;


            if (oConexion.LlenarDataSet(true))
            {
                
                _ListadoTerminales = oConexion.MiDataSet.Tables[0];
                oConexion.CerrarConexion();
                oConexion = null;
                return true;
            }
            else
            {
                _Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;
            }


        }


        #endregion Metodos Publicos

    }
}