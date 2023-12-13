using TesteFinancialInstrument.Domain.Financial;

namespace TesteFinancialInstrument.Contracts.Financial
{
    public record CategorizeRequest(List<FinancialInstrument> FinancialInstruments);
}