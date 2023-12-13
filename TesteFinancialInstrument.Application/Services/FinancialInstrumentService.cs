using TesteFinancialInstrument.Contracts.Financial;
using TesteFinancialInstrument.Domain.Financial;

namespace TesteFinancialInstrument.Application.Services
{
    public class FinancialInstrumentService : IFinancialInstrumentService
    {
        public CategorizeResponse Categorize(CategorizeRequest categorizeRequest)
        {            
            var result = new CategorizeResponse(categorizeRequest.FinancialInstruments.Select(f => GetCategory(f)).ToList());
            return result;
        }

        
        static string GetCategory(FinancialInstrument financialInstrument)
        {
            foreach (var category in InstrumentCategoryUtility.CategoryTypeMaxValueRanges.OrderBy(v => v.Value))
            {
                if (financialInstrument.MarketValue < category.Value)
                    return category.Key;
            }
            return InstrumentCategoryUtility.DEFAULT_CATEGORY_TYPE;
        }  
    }
}