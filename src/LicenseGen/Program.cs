using System;
using System.IO;

namespace LicenseGenExe
{
    class Program
    {
        static void Main(string[] args)
        {
            var licensegen = new LicenseGenerator();
            licensegen.MasterKey =
                File.OpenText(args[0]).ReadToEnd();
            licensegen.Expiration_Date_Enabled = true;
            licensegen.ExpirationDate = DateTime.Now.AddDays(2);
            licensegen.KeyValueTable.Add("NTier", "true");
            licensegen.KeyValueTable.Add("Reservations", "true");
            licensegen.KeyValueTable.Add("Exclusions", "true");
            licensegen.KeyValueTable.Add("AllowTradeAllocation", "true");
            licensegen.KeyValueTable.Add("MixedModels", "true");
            licensegen.KeyValueTable.Add("DynamicSecurities", "true");
            licensegen.KeyValueTable.Add("TaxAwareRebalancing", "true");
            licensegen.KeyValueTable.Add("CorrelationGroups", "true");
            licensegen.KeyValueTable.Add("MaxInvestors", "10000");
            licensegen.KeyValueTable.Add("MaxPtfoValue", "900000000");
            licensegen.CreateLicenseFile(args[1]);
        }
    }
}