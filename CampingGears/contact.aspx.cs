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
        public static object ValidEmailRegex { get; private set; }

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
            userpass.UserName = "c05027lcb@gmail.com";
            userpass.Password = "P@55word1";

            client.Credentials = userpass;
            MailMessage msg = new MailMessage("c05027lcb@gmail.com", "hardinephm@hotmail.com");

            msg.Subject = "Mail from Camping Gears website";
            msg.Body = "Name of Sender: " + name.Text + Environment.NewLine +  "Email of Sender: " + email.Text + Environment.NewLine+Environment.NewLine +"Comments: " + Environment.NewLine + txtMessageBody.Text;
            try
            {
                client.Send(msg);
            }


            catch (Exception err)
            {
                Debug.WriteLine("Exception Message: " + err.Message);
            }

            //clear the message box (a better option would be to notify the user that
            //the email has been sent - either by displaying a message (e.g. a literal)
            //or by redirecting them to a 'Message sent' page
            txtMessageBody.Text = "";
        }

    }
}