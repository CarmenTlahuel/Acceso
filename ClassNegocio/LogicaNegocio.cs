using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using ClassAccesoSQL;
using ClassEntidad;

namespace ClassNegocio
{
    public class LogicaNegocio
    {
        public AccesoDatosSQL nuevo = null;

        public LogicaNegocio(string conec)
        {
            nuevo = new AccesoDatosSQL(conec);
        }
        public List<Marcas> VerMarca(ref string m)
        {
            List<Marcas> lista = new List<Marcas>();

            SqlDataReader atrapa = null;

            SqlConnection nuev = null;
            nuev = nuevo.AbrirConexion(ref m);

            string consulta = "Select Marca from Marca";

            atrapa = nuevo.Consulta_DataReader(consulta, nuev, ref m);

            if (atrapa != null)
            {
                while (atrapa.Read())
                {
                    lista.Add(new Marcas()
                    {

                        Marca = (string)atrapa[1]
                    }
                    );
                }
            }
            nuev.Close();
            nuev.Dispose();
            return lista;
        }

        public List<TipoRAM> VerTipoRAM(ref string m)
        {
            List<TipoRAM> lista = new List<TipoRAM>();

            SqlDataReader atrapa = null;

            SqlConnection nuev = null;
            nuev = nuevo.AbrirConexion(ref m);

            string consulta = "Select Tipo from TipoRAM";

            atrapa = nuevo.Consulta_DataReader(consulta, nuev, ref m);

            if (atrapa != null)
            {
                while (atrapa.Read())
                {
                    lista.Add(new TipoRAM()
                    {

                        Tipo = (string)atrapa[1]
                    }
                    );
                }
            }
            nuev.Close();
            nuev.Dispose();
            return lista;
        }

        public List<Laboratorios> verLaboratorios(ref string m)
        {
            List<Laboratorios> lista = new List<Laboratorios>();

            SqlDataReader atrapa = null;
            SqlConnection nuev = null;
            nuev = nuevo.AbrirConexion(ref m);

            string consulta = "Select nombre_laboratorio from laboratorio";

            atrapa = nuevo.Consulta_DataReader(consulta, nuev, ref m);

            if (atrapa != null)
            {
                while (atrapa.Read())
                {
                    lista.Add(new Laboratorios()
                    {

                        nombre_laboratorio = (string)atrapa[0]
                    }
                    );
                }
            }
            nuev.Close();
            nuev.Dispose();
            return lista;

        }

        public Boolean InsertarDisco(Disco_Duro nueva, ref string m)
        {
            string Insertar = "insert into Disco_Duro(TipoDisco, conector, capacidad, F_MarcaDisco, Extra)" +
                " values (@tip, @con, @cap, @fmar, @ex )";
            SqlParameter[] coleccion = new SqlParameter[]
            {

                new SqlParameter("Tip", SqlDbType.VarChar,20),
                new SqlParameter("con", SqlDbType.VarChar,10),
                new SqlParameter("cap", SqlDbType.VarChar,12),
                new SqlParameter("fmar", SqlDbType.Int),
                new SqlParameter("ex", SqlDbType.VarChar,25)

            };

            coleccion[0].Value = nueva.TipoDisco;
            coleccion[1].Value = nueva.conector;
            coleccion[2].Value = nueva.Capacidad;
            coleccion[3].Value = nueva.F_MarcaDisco;
            coleccion[4].Value = nueva.Extra;

            Boolean salida = false;

            salida = nuevo.InsertarBD(Insertar, nuevo.AbrirConexion(ref m), ref m, coleccion);

            return salida;
        }

        public Boolean InsertarTeclado(Teclado nueva, ref string m)
        {
            string Insertar = "insert into Teclado(f_marcat, conector)" +
                " values (@f_mar, @cone)";
            SqlParameter[] coleccion = new SqlParameter[]
            {

                new SqlParameter("f_mar", SqlDbType.Int),
                new SqlParameter("cone", SqlDbType.VarChar,5)

            };

            coleccion[0].Value = nueva.f_marcat;
            coleccion[1].Value = nueva.conector;

            Boolean salida = false;

            salida = nuevo.InsertarBD(Insertar, nuevo.AbrirConexion(ref m), ref m, coleccion);

            return salida;
        }

        public Boolean InsertarMouse(Mouse nueva, ref string m)
        {
            string Insertar = "insert into Mouse(f_marcamouse, conector)" +
                " values (@f_marca, @cont)";
            SqlParameter[] coleccion = new SqlParameter[]
            {

                new SqlParameter("f_marca", SqlDbType.Int),
                new SqlParameter("cont", SqlDbType.VarChar,64)

            };

            coleccion[0].Value = nueva.f_marcamouse;
            coleccion[1].Value = nueva.conector;

            Boolean salida = false;

            salida = nuevo.InsertarBD(Insertar, nuevo.AbrirConexion(ref m), ref m, coleccion);

            return salida;
        }

        public Boolean InsertarMonitor(Monitor nueva, ref string m)
        {
            string Insertar = "insert into Monitor(f_marcam, conectores, tamano)" +
                " values (@f_mark, @conts, @tam)";
            SqlParameter[] coleccion = new SqlParameter[]
            {

                new SqlParameter("f_mark", SqlDbType.Int),
                new SqlParameter("conts", SqlDbType.VarChar,64),
                new SqlParameter("tam", SqlDbType.VarChar,64)

            };

            coleccion[0].Value = nueva.f_marcam;
            coleccion[1].Value = nueva.conectores;
            coleccion[2].Value = nueva.tamano;

            Boolean salida = false;

            salida = nuevo.InsertarBD(Insertar, nuevo.AbrirConexion(ref m), ref m, coleccion);

            return salida;
        }


        public Boolean InsertarRAM(RAM nueva, ref string m)
        {
            string Insertar = "insert into Monitor(capacidad, velocidad, f_TipoR)" +
                " values (@cap, @velo, @ftip)";
            SqlParameter[] coleccion = new SqlParameter[]
            {

                new SqlParameter("cap", SqlDbType.SmallInt),
                new SqlParameter("velo", SqlDbType.VarChar,15),
                new SqlParameter("ftip", SqlDbType.Int)

            };

            coleccion[0].Value = nueva.Capacidad;
            coleccion[1].Value = nueva.Velocidad;
            coleccion[2].Value = nueva.f_TipoR;

            Boolean salida = false;

            salida = nuevo.InsertarBD(Insertar, nuevo.AbrirConexion(ref m), ref m, coleccion);

            return salida;
        }

        public Boolean InsertarGabinete(Gabinete nueva, ref string m)
        {
            string Insertar = "insert into Gabinete(modelo, Tipoforma, F_Marca)" +
                " values (@mod, @tipof, @f_mar)";
            SqlParameter[] coleccion = new SqlParameter[]
            {

                new SqlParameter("mod", SqlDbType.VarChar,10),
                new SqlParameter("tipof", SqlDbType.VarChar,30),
                new SqlParameter("f_mar", SqlDbType.Int)

            };

            coleccion[0].Value = nueva.modelo;
            coleccion[1].Value = nueva.Tipoforma;
            coleccion[2].Value = nueva.F_Marca;

            Boolean salida = false;

            salida = nuevo.InsertarBD(Insertar, nuevo.AbrirConexion(ref m), ref m, coleccion);

            return salida;
        }

        public DataTable VerEquiposCom(ref string m)
        {
            string Ver = "select FKIDTICKET, FKIDPRODUCTO, CANTIDAD" +
                "inner join TICKET" +
                "on TICKET.ID_NUMERO=FKIDTICKET.COMPRAS" +
                "inner join PRODUCTOS" +
                "on PRODUCTOS.ID_PRODUCTO.FKIDPRODUCTO.TICKET";
            DataSet guarda = null;
            DataTable resultado = null;
            guarda = nuevo.Consulta_DataSet_Simple(Ver, nuevo.AbrirConexion(ref m), ref m);
            if (guarda != null)
            {
                resultado = guarda.Tables[0];

            }
            return resultado;
        }
    }
}
