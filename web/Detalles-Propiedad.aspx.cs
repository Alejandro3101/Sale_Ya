using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using web;
using System.Net;
using System.Net.Mail;


namespace web
{
    public partial class Formulario_web112 : System.Web.UI.Page
    {
        ServicioW.ServicioSoapClient miServicio = new ServicioW.ServicioSoapClient();
        protected void Page_Load(object sender, EventArgs e)
        {
            int Id = int.Parse(Application["IdPublicacion"].ToString());
            DataSet dsListar = new DataSet();
            ServicioW.clPublicacion objPublicacion = new ServicioW.clPublicacion();
            objPublicacion.IdPublicacion = Id;
            dsListar = miServicio.mtdListarPublicacion3(objPublicacion);
           // lblNombre.Text = dsListar.Tables["tblDatos"].Rows[0]["Nombre"].ToString();
            //imgFoto.ImageUrl= "/PublicacionesImagenes/" + dsListar.Tables["tblDatos"].Rows[0]["Foto"].ToString();
            lblPrecio.Text = dsListar.Tables["tblDatos"].Rows[0]["Precio"].ToString();
            lblHabitacion.Text = dsListar.Tables["tblDatos"].Rows[0]["NumeroHabitaciones"].ToString();
            lblEstrato.Text = dsListar.Tables["tblDatos"].Rows[0]["Estrato"].ToString();
            lblTelefono.Text = dsListar.Tables["tblDatos"].Rows[0]["Telefono"].ToString();
            lblDescripcion.Text = dsListar.Tables["tblDatos"].Rows[0]["Descripcion"].ToString();
            DataList1.DataSource = dsListar;
            DataList1.DataBind();
        }


        protected void btnenviar_Click1(object sender, EventArgs e)
        {

            MailMessage msg = new MailMessage();
            msg.To.Add("saleya0010@gmail.com");



            msg.From = new MailAddress("saleya0010@gmail.com");

            msg.Subject = txtcorreo.Text;

            msg.Body = txtnombre.Text + " , " + txtdescripcion.Text;

            msg.IsBodyHtml = true;
            msg.Priority = MailPriority.Normal;
            SmtpClient sc = new SmtpClient("smpt.gmail.com");
            sc.Host = "smtp.gmail.com";
            sc.Port = 587;
            sc.EnableSsl = true;
            sc.UseDefaultCredentials = false;
            sc.Credentials = new NetworkCredential("saleya0010@gmail.com", "Saleya 123");


            string output = null;
            try
            {
                sc.Send(msg);
                msg.Dispose();
                output = "Corre electrónico fue enviado satisfactoriamente.";
            }
            catch (Exception ex)
            {
                output = "Error enviando correo electrónico: " + ex.Message;
            }



            MailMessage msg1 = new MailMessage();
            msg1.To.Add(txtcorreo.Text);

            msg1.From = new MailAddress("saleya0010@gmail.com");

            msg1.Subject = "Sale Ya";
            msg1.Body = " SR/a  " + txtnombre.Text + "  Su solicitud esta en proceso , le contestaremos en breves momentos  ";
            msg1.IsBodyHtml = true;
            msg1.Priority = MailPriority.Normal;
            SmtpClient sc1 = new SmtpClient("smpt.gmail.com");
            sc1.Host = "smtp.gmail.com";
            sc1.Port = 587;
            sc1.EnableSsl = true;
            sc1.UseDefaultCredentials = false;
            sc1.Credentials = new NetworkCredential("saleya0010@gmail.com", "Saleya 123");


            string output1 = null;
            try
            {
                sc1.Send(msg1);
                msg1.Dispose();
                output1 = "Corre electrónico fue enviado satisfactoriamente.";
            }
            catch (Exception ex)
            {
                output1 = "Error enviando correo electrónico: " + ex.Message;
            }
            
        }
    }
}