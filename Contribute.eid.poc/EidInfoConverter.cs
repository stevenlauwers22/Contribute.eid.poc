using Newtonsoft.Json;

namespace Contribute.eid.poc
{
    public class EidInfoConverter
    {
        public EidInfoDTO Convert(string eidInfoJson)
        {
            var eidInfo = JsonConvert.DeserializeObject<EidInfoDTO>(eidInfoJson);
            return eidInfo;
        }
    }
}