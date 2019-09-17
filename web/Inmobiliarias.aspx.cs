using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web
{
    public partial class Formulario_web116 : System.Web.UI.Page
    {
        ServicioW.ServicioSoapClient miServicio = new ServicioW.ServicioSoapClient();

        protected void Page_Init(object sender, EventArgs e)
        {
            DataSet dsListar = new DataSet();
            ServicioW.clUsuario objUsuario = new ServicioW.clUsuario();

            dsListar = miServicio.mtdListarInmobiliaria(objUsuario);
            int cant = dsListar.Tables[0].Rows.Count;

            Repeater1.DataSource = dsListar;
            Repeater1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public static string somedata;
        protected void Repeater1_ItemCommand1(object source, RepeaterCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "Click":
                    somedata = e.CommandArgument.ToString();
                    Application["IdPublicacion"] = somedata;
                    Response.Redirect("Publicaciones-Inmobiliaria.aspx");

                    break;

            }
        }

        protected void Repeater1_ItemDataBound1(object sender, RepeaterItemEventArgs e)
        {
            Button btnVerPublicaciones = e.Item.FindControl("btnVerPublicaciones") as Button;
            btnVerPublicaciones.OnClientClick = String.Format("showValue('{0}');", btnVerPublicaciones.CommandArgument);
        }

    }
}