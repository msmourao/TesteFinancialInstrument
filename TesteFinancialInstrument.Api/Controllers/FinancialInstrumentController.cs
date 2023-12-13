using Microsoft.AspNetCore.Mvc;
using TesteFinancialInstrument.Contracts.Financial;
using TesteFinancialInstrument.Domain.Financial;

namespace TesteFinancialInstrument.Api.Controllers
{
    [ApiController]
    [Route("api/financialInstrument")]
    public class FinancialInstrumentController : ControllerBase
    {
        private readonly IFinancialInstrumentService _financialInstrumentService;

        public FinancialInstrumentController(IFinancialInstrumentService financialInstrumentService)
        {
            _financialInstrumentService = financialInstrumentService;
        }

        [Route("categorize")]
        [HttpPost]
        public IActionResult Categorize([FromBody]CategorizeRequest categorizeRequest)
        {
            var result = _financialInstrumentService.Categorize(categorizeRequest);
            return Ok(result);
        }
    }
}