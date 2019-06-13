using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Web.DynamicData;
using System.IO;

public partial class Controls_ContactForm : System.Web.DynamicData.FieldTemplateUserControl
{
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (!string.IsNullOrEmpty(PhoneHome.Text) || !string.IsNullOrEmpty(PhoneBusiness.Text))
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }
    protected void SendButton_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string fileName = Server.MapPath("~/App_Data/Text.txt");
            string MessageBody = File.ReadAllText(fileName);
            MessageBody = MessageBody.Replace("##Name##", Name.Text);
            MessageBody = MessageBody.Replace("##Email##", EmailAddress.Text);
            MessageBody = MessageBody.Replace("##HomePhone##", PhoneHome.Text);
            MessageBody = MessageBody.Replace("##BusinessPhone##", PhoneBusiness.Text);
            MessageBody = MessageBody.Replace("##Comments##", Comments.Text);
            Message.Visible = true;
            Message.Text = MessageBody;
            FormTable.Visible = false;
        }
        System.Threading.Thread.Sleep(5000);
    }
}
