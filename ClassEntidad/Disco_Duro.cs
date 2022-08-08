using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassEntidad
{
    public class Disco_Duro
    {
        public int id_Disco { set; get; }
        public string TipoDisco { set; get; }
        public string conector { set; get; }
        public string Capacidad { set; get; }
        public int F_MarcaDisco { set; get; }
        public string Extra { set; get; }
    }
}
