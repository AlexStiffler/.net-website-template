using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.IO;

public partial class Career : System.Web.UI.Page
{
    GoogleReCaptcha.GoogleReCaptcha ctrlGoogleReCaptcha = new GoogleReCaptcha.GoogleReCaptcha();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            reset();
        }
    }
    void reset()
    {
        txtname.Value = string.Empty;
        txtemail.Value = string.Empty;
        txtdob.Value = string.Empty;
        txtmessage.Value = string.Empty;
        txtmobile.Value = string.Empty;
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
    protected void btnsend_Click(object sender, EventArgs e)
    {
        if (ctrlGoogleReCaptcha.Validate())
        {
            if (txtname.Value.Trim() == string.Empty || txtmobile.Value.Trim() == string.Empty || txtmessage.Value.Trim() == string.Empty || txtemail.Value.Trim() == string.Empty || txtdob.Value.Trim() == string.Empty)
            {
                return;
            }
            else
            {
                DAL_Class dal = new DAL_Class();
                StringBuilder sb = new StringBuilder();
                sb.Append("<h3>Career Form Detail </h3><table style='border: 1px solid #ddd;width: 100%;max-width: 100%;margin-bottom: 20px;border-spacing: 0;border-collapse: collapse;'><tbody style='display: table-row-group;vertical-align: middle;border-color: inherit;'>");
                sb.Append("<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>Name</td><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>" + txtname.Value + "</td></tr>");
                sb.Append("<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>Email Id</td><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>" + txtemail.Value + "</td></tr>");
                sb.Append("<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>Mobile</td><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>" + txtmobile.Value + "</td></tr>");
                sb.Append("<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>DOB</td><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>" + txtdob.Value + "</td></tr>");
                sb.Append("<tr><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>Message</td><td style='font-size:14px;border: 1px solid #ddd;width:5%;padding: 8px;line-height: 1.42857143;vertical-align: top;border-top: 1px solid #ddd;'>" + txtmessage.Value + "</td></tr>");
                sb.Append("</tbody></table>");
                if (dal.sendMail("siinfotech@gmx.com, anilgreen@gmail.com", "akhilonline.9@gmail.com", sb.ToString(), "Career Form : SIIinfotech.com", (FileUpload1.HasFile ? FileUpload1.FileContent : null), (FileUpload1.HasFile ? System.IO.Path.GetFileName(FileUpload1.FileName) : string.Empty), null))
                {
                    System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Form Submitted successfully!');", true);
                    reset();

                }
            }
        }
        else
        {
            //captcha challenge failed
            Label1.Text = "Captcha Failed!! Please try again!!";
            reset();

        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        reset();
    }
}