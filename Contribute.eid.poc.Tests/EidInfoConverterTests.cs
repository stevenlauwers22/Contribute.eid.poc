using System.IO;
using NUnit.Framework;

namespace Contribute.eid.poc.Tests
{
    [TestFixture]
    public class EidInfoConverterTests
    {
        [Test]
        public void Can_convert_json()
        {
            var eidInfoJson = File.ReadAllText("EidInfo.json");
            var eidInfoConverter = new EidInfoConverter();
            Assert.DoesNotThrow(() => eidInfoConverter.Convert(eidInfoJson));
        }
    }
}