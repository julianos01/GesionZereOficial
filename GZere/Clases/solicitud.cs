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
    public class solicitud
    {
        #region Constructor

        public solicitud()
        {
            Ticket = 0;
            ListadoSolicitudes = null;
            Error = string.Empty;
            MYSQL = string.Empty;
            RespId = 0;
            Identificacion = string.Empty;
            Nombres = string.Empty;
            Apellidos = string.Empty;
            PlacaVe = string.Empty;
            Telefono = string.Empty;
            Email = string.Empty;
            ListadoMaestro = string.Empty;
            Descripcion = string.Empty;
            IdEstadosol=0;
            Respuesta=string.Empty;
            Idmedio = 0;
            Idrespcrea=0;
            NombResponsable = string.Empty;
            Nombcrea = string.Empty;
            Descmedio = string.Empty;
            Pwd=String.Empty;
            Rol=0;
            NomAdjunto = string.Empty;
            EstadoAdj = 0;
            Opcion=0;
            IdAA = 0;
            FechaUlt = string.Empty;


            DDL =null;
        }
        #endregion Constructor



        #region Atributos

        private DataTable _ListadoSolicitudes;

        private int _Ticket;
        private string _Error;
        private string _MYSQL;
        private string _ListadoMaestro;
        private DropDownList _DDL;
        private string _NombResponsable;
        private string _Nombcrea;
        private string  _Descmedio;
        private string _Identificacion;
        private string _Nombres;
        private string _Apellidos;
        private string _Pwd;
        private int _IdAA;
       
        private string _Telefono;
        private string _Email;
        private string _PlacaVe;
        private string _Descripcion;
        private int _IdEstadosol;
        private int _respId;
        private string _respuesta;
        private int _Rol;
        
        
        private int _Idmedio;
        private int _Idrespcrea;
        private DateTime _Fechacrea;
        private DateTime _Fechamodifica;
        private string _FechaUlt;
        private string _NomAdjunto;
        private int _EstadoAdj;
        private int _Opcion;

        #endregion Atributos

        #region Propiedades

        public DataTable ListadoSolicitudes
        {
            get
            {
                return _ListadoSolicitudes;
            }

            set
            {
                _ListadoSolicitudes = value;
            }
        }

        public int Ticket
        {
            get
            {
                return _Ticket;
            }

            set
            {
                _Ticket = value;
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

        

        public string Identificacion
        {
            get
            {
                return _Identificacion;
            }

            set
            {
                _Identificacion = value;
            }
        }

        public string Nombres
        {
            get
            {
                return _Nombres;
            }

            set
            {
                _Nombres = value;
            }
        }

        public string Apellidos
        {
            get
            {
                return _Apellidos;
            }

            set
            {
                _Apellidos = value;
            }
        }

        public string Telefono
        {
            get
            {
                return _Telefono;
            }

            set
            {
                _Telefono = value;
            }
        }

        public string Email
        {
            get
            {
                return _Email;
            }

            set
            {
                _Email = value;
            }
        }

        public string PlacaVe
        {
            get
            {
                return _PlacaVe;
            }

            set
            {
                _PlacaVe = value;
            }
        }

        public string Descripcion
        {
            get
            {
                return _Descripcion;
            }

            set
            {
                _Descripcion = value;
            }
        }

        public int IdEstadosol
        {
            get
            {
                return _IdEstadosol;
            }

            set
            {
                _IdEstadosol = value;
            }
        }

        public int RespId
        {
            get
            {
                return _respId;
            }

            set
            {
                _respId = value;
            }
        }


        public string Respuesta
        {
            get
            {
                return _respuesta;
            }

            set
            {
                _respuesta = value;
            }
        }

        public int Idmedio
        {
            get
            {
                return _Idmedio;
            }

            set
            {
                _Idmedio = value;
            }
        }

        public int Idrespcrea
        {
            get
            {
                return _Idrespcrea;
            }

            set
            {
                _Idrespcrea = value;
            }
        }

        public DateTime Fechacrea
        {
            get
            {
                return _Fechacrea;
            }

            set
            {
                _Fechacrea = value;
            }
        }

        public DateTime Fechamodifica
        {
            get
            {
                return _Fechamodifica;
            }

            set
            {
                _Fechamodifica = value;
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

        public string ListadoMaestro
        {
            get
            {
                return _ListadoMaestro;
            }

            set
            {
                _ListadoMaestro = value;
            }
        }

        public DropDownList DDL
        {
            get
            {
                return _DDL;
            }

            set
            {
                _DDL = value;
            }
        }

        public string NombResponsable
        {
            get
            {
                return _NombResponsable;
            }

            set
            {
                _NombResponsable = value;
            }
        }

        public string Nombcrea
        {
            get
            {
                return _Nombcrea;
            }

            set
            {
                _Nombcrea = value;
            }
        }

        public string Descmedio
        {
            get
            {
                return _Descmedio;
            }

            set
            {
                _Descmedio = value;
            }
        }

        public string Pwd
        {
            get
            {
                return _Pwd;
            }

            set
            {
                _Pwd = value;
            }
        }

        public int Rol
        {
            get
            {
                return _Rol;
            }

            set
            {
                _Rol = value;
            }
        }

        public string NomAdjunto
        {
            get
            {
                return _NomAdjunto;
            }

            set
            {
                _NomAdjunto = value;
            }
        }

        public int EstadoAdj
        {
            get
            {
                return _EstadoAdj;
            }

            set
            {
                _EstadoAdj = value;
            }
        }

        public int Opcion
        {
            get
            {
                return _Opcion;
            }

            set
            {
                _Opcion = value;
            }
        }

        public int IdAA
        {
            get
            {
                return _IdAA;
            }

            set
            {
                _IdAA = value;
            }
        }

        public string FechaUlt
        {
            get
            {
                return _FechaUlt;
            }

            set
            {
                _FechaUlt = value;
            }
        }







        #endregion Propiedades


        #region Metodos Publicos


        public bool IngAdjunto()
        {
            ConexionBase OConexion = new ConexionBase();


            if (_Opcion == 2)
            {
                _MYSQL = "Usp_BorrarAdj";

                if (OConexion.AgregarParametro(ParameterDirection.Input, "@IAA",
                  MySqlDbType.Int32, 0, _Ticket) == false)
                {
                    _Error = OConexion.Error;
                    OConexion.CerrarConexion();
                    OConexion = null;
                    return false;
                }
            }


            if (_Opcion == 1)
            {

                _MYSQL = "Usp_IngArchivoAdj";



                if (OConexion.AgregarParametro(ParameterDirection.Input, "@NAdj",
                MySqlDbType.VarChar, 80, _NomAdjunto) == false)
                {
                    _Error = OConexion.Error;
                    OConexion.CerrarConexion();
                    OConexion = null;
                    return false;
                }



                if (OConexion.AgregarParametro(ParameterDirection.Input, "@NT",
                  MySqlDbType.Int32, 0, _Ticket) == false)
                {
                    _Error = OConexion.Error;
                    OConexion.CerrarConexion();
                    OConexion = null;
                    return false;
                }

            }

            if (OConexion.AgregarParametro(ParameterDirection.Input, "@EstAdj",
             MySqlDbType.VarChar, 80, _EstadoAdj) == false)
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }


            
            OConexion.SQL = _MYSQL;

            if (OConexion.EjecutarSentencia(true))
            {

                OConexion.CerrarConexion();
                OConexion = null;
                return true;


            }
            else
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }





        }


        public bool Upticket()
        {
            ConexionBase oConexion = new ConexionBase();
            if (oConexion.AgregarParametro(ParameterDirection.Input, "@estadosol",
                MySqlDbType.Int32, 0, _IdEstadosol) == false)
            {
                _Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }

            if (oConexion.AgregarParametro(ParameterDirection.Input, "@inrespuesta",
               MySqlDbType.VarChar,5000, _respuesta) == false)
            {
                _Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }

            if (oConexion.AgregarParametro(ParameterDirection.Input, "@fechaul",
             MySqlDbType.Timestamp,0,_FechaUlt) == false)
            {
                _Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }

            if (oConexion.AgregarParametro(ParameterDirection.Input, "@Nresponsable",
            MySqlDbType.Int32, 0,_respId) == false)
            {
                _Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }

            if (oConexion.AgregarParametro(ParameterDirection.Input, "@valor",
            MySqlDbType.Int32, 0, _Ticket) == false)
            {
                _Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }


            _MYSQL = "Usp_Upticket";
            oConexion.SQL = _MYSQL;

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




        public bool DesactivaUsuario()
        {
            ConexionBase oConexion = new ConexionBase();
            if (oConexion.AgregarParametro(ParameterDirection.Input, "@id",
                MySqlDbType.Int32, 0, _respId) == false)
            {
                _Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }

            _MYSQL = "Usp_DesactivaResp";
            oConexion.SQL = _MYSQL;

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

        public bool CrearUsuario()
        {
            ConexionBase oConexion = new ConexionBase();
            if(oConexion.AgregarParametro(ParameterDirection.Input,"@nomres",
                MySqlDbType.VarChar,50,_Nombres)==false)
            {
                _Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }

            if (oConexion.AgregarParametro(ParameterDirection.Input, "@aperesp",
                MySqlDbType.VarChar, 50, _Apellidos) == false)
            {
                _Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }
            if (oConexion.AgregarParametro(ParameterDirection.Input, "@idrol",
               MySqlDbType.Int32, 0, _Rol) == false)
            {
                _Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }
            if (oConexion.AgregarParametro(ParameterDirection.Input, "@nomusuario",
              MySqlDbType.VarChar, 50,Identificacion) == false)
            {
                _Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }
            if (oConexion.AgregarParametro(ParameterDirection.Input, "@pwd",
             MySqlDbType.VarChar, 50, _Pwd) == false)
            {
                _Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }
            if (oConexion.AgregarParametro(ParameterDirection.Input, "@ER",
            MySqlDbType.VarChar, 30,"Activo") == false)
            {
                _Error = oConexion.Error;
                oConexion.CerrarConexion();
                oConexion = null;
                return false;

            }

            _MYSQL = "Usp_IngResponsable";
            oConexion.SQL = _MYSQL;

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


        public bool IngresarSolicitud()
        {
            ConexionBase OConexion = new ConexionBase();



            if (OConexion.AgregarParametro(ParameterDirection.Input, "@nomuser",
                MySqlDbType.VarChar, 50, _Nombres) == false)
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }

            if (OConexion.AgregarParametro(ParameterDirection.Input, "@apeuser",
               MySqlDbType.VarChar, 50, _Apellidos) == false)
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }

            if (OConexion.AgregarParametro(ParameterDirection.Input, "@ceduser",
             MySqlDbType.VarChar, 15, _Identificacion) == false)
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }

            if (OConexion.AgregarParametro(ParameterDirection.Input, "@telusr",
                MySqlDbType.VarChar, 100, _Telefono) == false)
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }

            if (OConexion.AgregarParametro(ParameterDirection.Input, "@email",
                 MySqlDbType.VarChar, 100, _Email) == false)
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }

            if (OConexion.AgregarParametro(ParameterDirection.Input, "@placave",
                MySqlDbType.VarChar, 12, _PlacaVe) == false)
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }

            if (OConexion.AgregarParametro(ParameterDirection.Input, "@descsol",
                 MySqlDbType.VarChar, 5000, _Descripcion) == false)
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }

            if (OConexion.AgregarParametro(ParameterDirection.Input, "@idestadosol",
                MySqlDbType.Int32, 0, _IdEstadosol) == false)
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }

            if (OConexion.AgregarParametro(ParameterDirection.Input, "@idresp",
               MySqlDbType.Int32, 0, _respId) == false)
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }

            if (OConexion.AgregarParametro(ParameterDirection.Input, "@respuesta",
             MySqlDbType.VarChar, 5000, _respuesta) == false)
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }

            if (OConexion.AgregarParametro(ParameterDirection.Input, "@idmedio",
                 MySqlDbType.Int32, 0, _Idmedio) == false)
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }

            if (OConexion.AgregarParametro(ParameterDirection.Input, "@idrespcrea",
              MySqlDbType.Int32, 0, _Idrespcrea) == false)
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }


            _MYSQL = "Usp_IngSolicitud";
            OConexion.SQL = _MYSQL;

            if (OConexion.EjecutarSentencia(true))
            {
                
                OConexion.CerrarConexion();
                OConexion = null;
                return true;


            }
            else
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }



        }


        public int ContarPendientes()
        {
            ConexionBase OConexion = new ConexionBase();

            _MYSQL = "NroPendientes";
            OConexion.SQL = _MYSQL;

            if (OConexion.Consultar(true))
            {
                while (OConexion.Reader.Read())
                {
                    _Ticket = OConexion.Reader.GetInt32(0);
                   
                }
                OConexion.CerrarConexion();
                OConexion = null;

                return _Ticket;

            }
            else
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return 0;
            }



        }


        public int ContarPendientesXid()
        {
            ConexionBase OConexion = new ConexionBase();

            if (OConexion.AgregarParametro(ParameterDirection.Input, "@idresp",
               MySqlDbType.Int32, 0,RespId) == false)
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return 0;
            }

            _MYSQL = "NroPendientesXid";
            OConexion.SQL = _MYSQL;

            if (OConexion.Consultar(true))
            {
                while (OConexion.Reader.Read())
                {
                    _Ticket = OConexion.Reader.GetInt32(0);

                }
                OConexion.CerrarConexion();
                OConexion = null;

                return _Ticket;

            }
            else
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return 0;
            }



        }





        public bool ValidarUsuario()
        {
            ConexionBase OConexion = new ConexionBase();
           
           

            if (OConexion.AgregarParametro(ParameterDirection.Input, "@user",
                MySqlDbType.VarChar, 30,_Nombres) == false)
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }

            if (OConexion.AgregarParametro(ParameterDirection.Input, "@pwd",
                MySqlDbType.VarChar, 30,_Pwd) == false)
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }

            

            _MYSQL = "ConsultaLogin";
            OConexion.SQL = _MYSQL;

            if (OConexion.Consultar(true))
            {
                while (OConexion.Reader.Read())
                {
                    _respId= OConexion.Reader.GetInt32(0);
                    _Rol= OConexion.Reader.GetInt32(1);
                    _Nombcrea = OConexion.Reader.GetString(2);

                   
                    

                }
                OConexion.CerrarConexion();
                OConexion = null;
                if (_respId != 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
                
              
            }
            else
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }


            
        }


        public bool ConsultarSolicitudes()
        {

            ConexionBase OConexion = new ConexionBase();
          
            _MYSQL = "select Num_Ticket as Ticket, nom_usr as Nombre_Usuario, ape_usr as Apellido,placa_ve as Placa, tresponsable.Nomb_resp as Responsable, tsolicitudes.fecha from tsolicitudes inner join tresponsable on tsolicitudes.id_resp = tresponsable.id_resp  where tsolicitudes.Id_estado_sol < 3 order by fecha desc ";








            OConexion.SQL = _MYSQL;
            OConexion.NombreTabla = "tsolicitudes";

            if (OConexion.LlenarDataSet(false))
            {
                _ListadoSolicitudes = OConexion.MiDataSet.Tables[0];
                OConexion.CerrarConexion();
                OConexion = null;
                return true;
            }
            else
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }
        }

        public bool ConsultarSolicitudesXidresp()
        {
            ConexionBase OConexion = new ConexionBase();

            if (OConexion.AgregarParametro(ParameterDirection.Input, "Idresp",
                MySqlDbType.VarChar, 50, _respId) == false)
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }

            _MYSQL = "Usp_ConspendXId";


            OConexion.SQL = _MYSQL;
            OConexion.NombreTabla = "tsolicitudes";

            if (OConexion.LlenarDataSet(true))
            {
                _ListadoSolicitudes = OConexion.MiDataSet.Tables[0];
                OConexion.CerrarConexion();
                OConexion = null;
                return true;
            }
            else
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }
        }


        public bool ConsultarMaestro(int tabla)
        {
            ConexionBase oConexion = new ConexionBase();

            if (tabla == 1)
            {
                _MYSQL = "Usp_ConsultarEstado";
                oConexion.NombreTabla = "testadosol";
            }
            else if (tabla == 2)
            {
                _MYSQL = "Usp_tresponsable";
                oConexion.NombreTabla = "tresponsable";
            }
            else if (tabla == 3)
            {
                _MYSQL = "Usp_Medios";
                oConexion.NombreTabla = "tmedios";
            }
            else if (tabla == 4)
            {
                _MYSQL = "Usp_troles";
                oConexion.NombreTabla = "troles";
            }
            else if (tabla == 5)
            {
                _MYSQL = "Usp_ConsultarEstadoterm";
                oConexion.NombreTabla = "testadosol";
            }

            else if (tabla == 6)
            {
                _MYSQL = "Usp_uso";
                oConexion.NombreTabla = "uso";
            }
            oConexion.MYSQL = _MYSQL;
            

            if (oConexion.LlenarDataSet(true))
                {
                    _ListadoSolicitudes = oConexion.MiDataSet.Tables[0];
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


        public bool ConsultArchivo()
        {

            ConexionBase OConexion = new ConexionBase();
           
            if (OConexion.AgregarParametro(ParameterDirection.Input, "@NT",
                  MySqlDbType.Int32, 0,_Ticket) == false)
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }

            _MYSQL = "Usp_ConsArchivo";
            OConexion.SQL = _MYSQL;
            OConexion.NombreTabla = "AADJUNTOS";

            if (OConexion.LlenarDataSet(true))
            {
                _ListadoSolicitudes= OConexion.MiDataSet.Tables[0];
               
                OConexion.CerrarConexion();
                OConexion = null;
                return true;
            }
            else
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }
        }

        public bool ConsultarTk()
        {
           
                ConexionBase OConexion = new ConexionBase();

               
                

                if (OConexion.AgregarParametro(ParameterDirection.Input, "Ticket",
                    MySqlDbType.Int16, 0, _Ticket) == false)
                {
                    _Error = OConexion.Error;
                    OConexion.CerrarConexion();
                    OConexion = null;
                    return false;
                }

                _MYSQL = "Usp_ConsultarTicket";
                OConexion.SQL = _MYSQL;

                if (OConexion.Consultar(true))
                {
                    while (OConexion.Reader.Read())
                    {
                         _Ticket =OConexion.Reader.GetInt32(0);
                        _Nombres= OConexion.Reader.GetString(1);
                        _Apellidos= OConexion.Reader.GetString(2);
                        _Identificacion= OConexion.Reader.GetString(3);
                        _Telefono= OConexion.Reader.GetString(4);
                        _Email= OConexion.Reader.GetString(5);
                        _PlacaVe= OConexion.Reader.GetString(6);
                        _Descripcion= OConexion.Reader.GetString(7);
                        _respuesta= OConexion.Reader.GetString(8);
                        _NombResponsable= OConexion.Reader.GetString(9);
                        _Nombcrea= OConexion.Reader.GetString(10);
                        _Descmedio= OConexion.Reader.GetString(11);
                        _Fechacrea= OConexion.Reader.GetDateTime(12);
                        _IdEstadosol = OConexion.Reader.GetInt32(13);
                        _respId= OConexion.Reader.GetInt32(14);

                }

                    OConexion.CerrarConexion();
                    OConexion = null;
                    return true;
                }
                else
                {
                    _Error = OConexion.Error;
                    OConexion.CerrarConexion();
                    OConexion = null;
                    return false;
                }
        
        }

        public bool ConsultarTkFin()
        {

            ConexionBase OConexion = new ConexionBase();



            _MYSQL = "Usp_CNumTicket";
            OConexion.SQL = _MYSQL;

            if (OConexion.Consultar(false))
            {
                while (OConexion.Reader.Read())
                {
                    _Ticket = OConexion.Reader.GetInt32(0);
                    
                }

                OConexion.CerrarConexion();
                OConexion = null;
                return true;
            }
            else
            {
                _Error = OConexion.Error;
                OConexion.CerrarConexion();
                OConexion = null;
                return false;
            }

        }





        #endregion Metodos Publicos




    }
}