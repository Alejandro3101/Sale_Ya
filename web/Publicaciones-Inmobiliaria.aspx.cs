using System;
using System.Collections.Generic;using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web
{
    public partial class Formulario_web117 : System.Web.UI.Page
    {
        ServicioW.ServicioSoapClient miServicio = new ServicioW.ServicioSoapClient();

        protected void Page_Init(object sender, EventArgs e)
        {
            int Id = int.Parse(Application["IdPublicacion"].ToString());
            DataSet dsListar = new DataSet();
            ServicioW.clPublicacion objPublicacion = new ServicioW.clPublicacion();
            objPublicacion.IdUsuario = Id;
            dsListar = miServicio.mtdListarPublicacionInmo(objPublicacion);

            int cant = dsListar.Tables[0].Rows.Count;

            Repeater1.DataSource = dsListar;
            Repeater1.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        public static string somedata;
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            switch (e.CommandName)
            {
                case "Click":
                    somedata = e.CommandArgument.ToString();
                    Application["IdPublicacion"] = somedata;
                    Response.Redirect("Detalles-Propiedad.aspx");

                    break;

            }
        }

        protected void Repeater1_ItemDataBound(object source, RepeaterItemEventArgs e)
        {
            Button btnVerDetalles = e.Item.FindControl("btnVerDetalles") as Button;
            btnVerDetalles.OnClientClick = String.Format("showValue('{0}');", btnVerDetalles.CommandArgument);
        }

    }
}