using System;

namespace Contribute.eid.poc
{
    public class EidCardInfoDTO
    {
        public String ChipNumber { get; set; }
        public String CardNumber { get; set; }
        public String CardDeliveryMunicipality { get; set; }
        public DateTime CardValidityDateBegin { get; set; }
        public DateTime CardValidityDateEnd { get; set; }
    }
}