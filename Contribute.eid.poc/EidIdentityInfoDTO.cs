using System;
using Newtonsoft.Json;

namespace Contribute.eid.poc
{
    public class EidIdentityInfoDTO
    {
        public String NationalNumber { get; set; }
        public String FirstName { get; set; }
        public String MiddleName { get; set; }
        public String Name { get; set; }
        public String Gender { get; set; }
        public String PlaceOfBirth { get; set; }
        [JsonConverter(typeof(EidDateTimeConverter))]
        public DateTime DateOfBirth { get; set; }
    }
}