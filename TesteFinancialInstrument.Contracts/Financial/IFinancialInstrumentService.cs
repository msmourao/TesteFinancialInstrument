using TesteFinancialInstrument.Domain.Financial;

namespace TesteFinancialInstrument.Contracts.Financial
{
    public interface IFinancialInstrumentService
    {
        CategorizeResponse Categorize(CategorizeRequest categorizeRequest);
    }
}