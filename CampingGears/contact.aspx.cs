using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Diagnostics;
using System.Linq;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampingGears
{
    public partial class contact : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            validatecontactform();
        }

        public void validatecontactform()
        {
            int errorflag = 0;
            string errormessage = "";

            if (name.Text=="" || name.Text == null)
            {
                errorflag = 1;
                errormessage += "Name cannot be empty! <br/>";
            }
            if (email.Text == "" || email.Text == null)
            {
                errorflag = 1;
                errormessage += "Email cannot be empty! <br/>";
            }else
            {
                if (email.Text != "" || email.Text != null)
                {
                    if (checkEmail(email.Text) == false) { 
                    errorflag = 1;
                    errormessage += "Email address is invalid! <br/>";
                }
                }
            }
            if (txtMessageBody.Text == "" || txtMessageBody.Text == null)
            {
                errorflag = 1;
                errormessage += "Comments cannot be empty! <br/>";
            }
           
            if (errorflag == 1)
            {
                erroralert.Text = errormessage;
            }
            else
            {
                submitmessage();
                submitConfirmation();
                erroralert.Text = "Thank you! your comment has been successfully delivered!";
            }
        }

        public bool checkEmail(string text)
        {
            Regex regex = new Regex(@"^(([\w-]+\.)+[\w-]+|([a-zA-Z]{1}|[\w-]{2,}))@" + @"((([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\." + @"([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])){1}|" + @"([a-zA-Z]+[\w-]+\.)+[a-zA-Z]{2,4})$");
            return regex.IsMatch(text);
        }


        public void submitmessage() {
            //create a new smtp client (this will connect to the mail server)
            SmtpClient client = new SmtpClient();
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.EnableSsl = true;

            System.Net.NetworkCredential userpass = new System.Net.NetworkCredential();
            userpass.UserName = "otdoorscompany@gmail.com";
            userpass.Password = "p@ssw0rd1234";

            client.Credentials = userpass;
            MailMessage msg = new MailMessage("otdoorscompany@gmail.com", "hardinephm@hotmail.com");

            msg.Subject = "Mail from Camping Gears website";
            msg.Body = "Name of Sender: " + name.Text + Environment.NewLine +  
                "Email of Sender: " + email.Text + Environment.NewLine+Environment.NewLine 
                +"Comments: " + Environment.NewLine + txtMessageBody.Text;
            try
            {
                client.Send(msg);
            }


            catch (Exception err)
            {
                Debug.WriteLine("Exception Message: " + err.Message);
            }
        }

        public void submitConfirmation()
        {
            //create a new smtp client (this will connect to the mail server)
            SmtpClient client = new SmtpClient();
            client.Host = "smtp.gmail.com";
            client.Port = 587;
            client.EnableSsl = true;

            System.Net.NetworkCredential userpass = new System.Net.NetworkCredential();
            userpass.UserName = "otdoorscompany@gmail.com";
            userpass.Password = "p@ssw0rd1234";

            client.Credentials = userpass;
            MailMessage msg1 = new MailMessage("otdoorscompany@gmail.com", email.Text);
            // c05027lcb @gmail.com
            //P@55word1

            msg1.Subject = "Confirmation Mail from Camping Gears website";
            string confirmaationtxt = "Dear " + name.Text + "," + Environment.NewLine + Environment.NewLine +
               "Thank you! Your comments has been successfully delivered." + Environment.NewLine + Environment.NewLine +
               "for any enquiries please contact us at +6732224443 or email to ot-doors@hotmail.com " + Environment.NewLine + Environment.NewLine +
               "Warm Regards," + Environment.NewLine + "Ot-Doors Company";
            msg1.Body = confirmaationtxt;
            try
            {
                client.Send(msg1);
            }


            catch (Exception err)
            {
                Debug.WriteLine("Exception Message: " + err.Message);
            }
        }
    }
}