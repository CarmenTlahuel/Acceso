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

        protected void Button3_Click(object sender, EventArgs e)
        {
            string m = "";
            Teclado nuevo = null;
            if (DropDownList3.SelectedIndex >= 0)
            {
                nuevo = new Teclado
                {
                    f_marcat = Convert.ToInt32(DropDownList3.SelectedValue),
                    conector = TextBox2.Text
                };
                nue.InsertarTeclado(nuevo, ref m);
                TextBox7.Text = m;
            }
            else
            {
                TextBox7.Text = "Selecciona los datos faltantes";

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string m = "";
            Gabinete nuevo = null;
            if (DropDownList4.SelectedIndex >= 0)
            {
                nuevo = new Gabinete
                {
                    modelo = TextBox3.Text,
                    Tipoforma = TextBox4.Text,
                    F_Marca = Convert.ToInt32(DropDownList4.SelectedValue)

                };
                nue.InsertarGabinete(nuevo, ref m);
                TextBox7.Text = m;
            }
            else
            {
                TextBox7.Text = "Selecciona los datos faltantes";
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string m = "";
            List<Marcas> listaatrapa = null;

            listaatrapa = nue.VerMarca(ref m);
            DropDownList1.Items.Clear();

            for (int a = 0; a < listaatrapa.Count; a++)
            {
                DropDownList1.Items.Add(

                    new ListItem(listaatrapa[a].Marca.ToString()
                    ));
            }
        }
    }
}