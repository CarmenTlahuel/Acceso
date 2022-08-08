using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using ClassEntidad;
using ClassNegocio;

namespace WebPresentacion
{
    public partial class Index : System.Web.UI.Page
    {
        LogicaNegocio nue = null; 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {

                nue = new LogicaNegocio(ConfigurationManager.ConnectionStrings["conlocal"].ConnectionString);
                Session["nueva"] = nue;


            }
            else
            {

                nue = (LogicaNegocio)Session["nueva"];

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string m = "";
            Mouse nuevo = null;
            if (DropDownList2.SelectedIndex >= 0)
            {
                nuevo = new Mouse
                {
                    f_marcamouse = Convert.ToInt32(DropDownList2.SelectedValue),
                    conector = TextBox1.Text
                };
                nue.InsertarMouse(nuevo, ref m);
                TextBox7.Text = m;
            }
            else
            {
                TextBox7.Text = "Selecciona los datos faltantes";
            }
        }
    }
}