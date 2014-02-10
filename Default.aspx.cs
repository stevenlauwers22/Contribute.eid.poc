using System;
using System.IO;
using System.Web.Routing;
using System.Web.UI;
using Newtonsoft.Json;

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
                    var eidInfo = JsonConvert.DeserializeObject<EidInfoDTO>(eidInfoJson);
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
    }

    public class EidInfoDTO
    {
        public EidIdentityInfoDTO Identity { get; set; }
        public EidAddressInfoDTO Address { get; set; }
        public EidCardInfoDTO Card { get; set; }
    }

    public class EidIdentityInfoDTO
    {
        public String NationalNumber { get; set; }
        public String FirstName { get; set; }
        public String MiddleName { get; set; }
        public String Name { get; set; }
        public String Gender { get; set; }
        public String PlaceOfBirth { get; set; }
        public DateTime DateOfBirth { get; set; }
    }

    public class EidAddressInfoDTO
    {
        public String StreetAndNumber { get; set; }
        public String Zip { get; set; }
        public String Municipality { get; set; }
    }

    public class EidCardInfoDTO
    {
        public String ChipNumber { get; set; }
        public String CardNumber { get; set; }
        public String CardDeliveryMunicipality { get; set; }
        public DateTime CardValidityDateBegin { get; set; }
        public DateTime CardValidityDateEnd { get; set; }
    }
}