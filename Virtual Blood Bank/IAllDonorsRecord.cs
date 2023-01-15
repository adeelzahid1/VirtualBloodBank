using CrystalDecisions.CrystalReports.Engine;

namespace Virtual_Blood_Bank
{
    public interface IAllDonorsRecord
    {
        string FullResourceName { get; set; }
        bool NewGenerator { get; set; }
        string ResourceName { get; set; }
    }
}