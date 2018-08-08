using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using GoogleReCaptcha;
using System.Text;

public partial class Contact : System.Web.UI.Page
{
    GoogleReCaptcha.GoogleReCaptcha ctrlGoogleReCaptcha = new GoogleReCaptcha.GoogleReCaptcha();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected override void CreateChildControls()
    {
        //Create GoogleReCaptcha
        base.CreateChildControls();

        //ctrlGoogleReCaptcha.PublicKey = "6LfVDgMTAAAAAJnH9GV0i7r_Pl3FfC_hyfh2Cgnq";        // Local key
        //ctrlGoogleReCaptcha.PrivateKey = "6LfVDgMTAAAAAPfTlH1n7z72CvS46c2C_qkTmFsZ";       // Local key

        ctrlGoogleReCaptcha.PublicKey = "6LfUBGYUAAAAAGM9bVNerFAoqG7PpdIQTvkkPUW7";     // Online key
        ctrlGoogleReCaptcha.PrivateKey = "6LfUBGYUAAAAAMVl-UX6ScvgWsVI9KJWbR8aeLlu";   // Online key


        Panel1.Controls.Add(ctrlGoogleReCaptcha);
    }


    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (ctrlGoogleReCaptcha.Validate())
        {
            try
            {
                if (txtname.Text == string.Empty)
                    return;
                //if (base.Request.Form["g-recaptcha-response"].ToString() != "")
                //{
                DAL_Class dal = new DAL_Class();
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.Append(string.Concat(new string[]
                    {
                   "<h3 style='text-align: center'>Enquiry from SIIinfotech.com</h3><table style='border: 1px solid #ddd;width: 100%;max-width: 100%;margin-bottom: 20px;border-spacing: 0;border-collapse: collapse;'><tbody style='display: table-row-group;vertical-align: middle;border-color: inherit;'><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Name </b>:</td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtname.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Email ID</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtemailid.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>Subject</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.txtsubject.Text.Trim(),
                    "</td></tr><tr><td style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'><b>IP Address</b> : </td><td style='font-size:14px;border: 1px solid #ddd;width:70%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>",
                    this.GetIPAddress()
                    }));
                stringBuilder.Append("</td></tr></table><br/><br/><b style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>Message </b>: <span style='font-size:14px;border: 1px solid #ddd;width:30%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>" + this.txtmessage.Text.Trim() + "</span></br>");
                //this.sendMail("siinfotech@gmx.com, akhilonline.9@gmail.com", "Enquiry From SIINfotech.com : Contact Form", stringBuilder.ToString(), "| Contact Form", "", null);
                dal.sendMail("siinfotech@gmx.com, anilgreen@gmail.com", "akhilonline.9@gmail.com", stringBuilder.ToString(), "Enquiry From SIINfotech.com : Online Enquiry Form", null, null, null);
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Form Submitted successfully');", true);

                txtname.Text = string.Empty;
                txtemailid.Text = string.Empty;
                txtsubject.Text = string.Empty;
                txtmessage.Text = string.Empty;

                Response.Redirect("ThankYou.aspx");
                return;
            }
            catch (Exception ex)
            {
                ex.ToString();

                //  this.sendMail("siinfotech@gmx.com, akhilonline.9@gmail.com", "Mail from SIInfotech.com enquiry", ex.Message.ToString() + ";" + this.txtname.Text.Trim() + "," + this.txtemailid.Text.Trim() + "," + this.txtsubject.Text.Trim() + "," + this.txtmessage.Text.Trim(), "Enquiry From example.com", "", null);
            }
        }
        else
        {
            //captcha challenge failed
            Label1.Text = "Captcha Failed!! Please try again!!";
            txtname.Text = string.Empty;
            txtemailid.Text = string.Empty;
            txtsubject.Text = string.Empty;
            txtmessage.Text = string.Empty;
        }
    }
    public string GetIPAddress()
    {
        string ipaddress;
        ipaddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        if (ipaddress == "" || ipaddress == null)
        {
            ipaddress = Request.ServerVariables["REMOTE_ADDR"];
        }
        return ipaddress;
    }
}