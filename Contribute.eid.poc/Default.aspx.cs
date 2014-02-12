using System;
using System.IO;
using System.Web.UI;

namespace Contribute.eid.poc
{
    public partial class Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.RequestType == "POST")
            {
                using (var streamReader = new StreamReader(Request.InputStream))
                {
                    var eidInfoJson = streamReader.ReadToEnd();
                    var eidInfo = new EidInfoConverter().Convert(eidInfoJson);
                    SetEidInfo(eidInfo);
                }
            }
        }

        private void SetEidInfo(EidInfoDTO eidInfo)
        {
            AchternaamTextBox.Text = eidInfo.Identity.Name;
            VoornaamTextBox.Text = eidInfo.Identity.FirstName + " " + eidInfo.Identity.MiddleName;
            RijksregisternummerTextBox.Text = eidInfo.Identity.NationalNumber;
            AdresTextBox.Text = eidInfo.Address.StreetAndNumber;
            PostcodeTextBox.Text = eidInfo.Address.Zip + " " + eidInfo.Address.Municipality;
            GeboorteplaatsTextBox.Text = eidInfo.Identity.PlaceOfBirth;
            GeboortedatumTextBox.Text = eidInfo.Identity.DateOfBirth.ToShortDateString();
            GeslachtTextBox.Text = eidInfo.Identity.Gender;
        }
    }
}