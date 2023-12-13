using Microsoft.Extensions.DependencyInjection;
using TesteFinancialInstrument.Application.Services;
using TesteFinancialInstrument.Contracts.Financial;
using TesteFinancialInstrument.Domain.Financial;

namespace TesteFinancialInstrument.Application
{
    public static class DependencyInjection
    {
        public static void AddApplication(this IServiceCollection serviceCollection)
        {
            serviceCollection.AddScoped<IFinancialInstrumentService, FinancialInstrumentService>();
        }
    }
}