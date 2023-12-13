using TesteFinancialInstrument.Domain.Financial;

namespace TesteFinancialInstrument.Contracts.Financial
{
    public record CategorizeResponse(List<string> instrumentCategories);
}