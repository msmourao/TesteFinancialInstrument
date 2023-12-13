namespace TesteFinancialInstrument.Domain.Financial
{
    public static class InstrumentCategoryUtility
    {
        public const string DEFAULT_CATEGORY_TYPE = "High Value";
        public static Dictionary<string, decimal> CategoryTypeMaxValueRanges = new Dictionary<string, decimal>
        {
            {"Low Value", 1000000 },
            {"Medium Value", 5000000 }
        };      
    }
}