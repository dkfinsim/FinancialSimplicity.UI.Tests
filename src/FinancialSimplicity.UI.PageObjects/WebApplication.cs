using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FinancialSimplicity.UI.PageObjects
{
    public class WebApplication
    {
        WebTestsFixture _webTestsFixture;

        private static Dictionary<Pages, string> PageUrls =
            new Dictionary<Pages, string>
            {
                { Pages.Investors, "/investors" },
                { Pages.Dashboards, "/dashboardsV2" },
            };

        public WebApplication(WebTestsFixture webTestsFixture)
        {
            _webTestsFixture = webTestsFixture;
        }

        public Login.Login EnsureUserLoggedOut()
        {
            _webTestsFixture.WebDriver.Navigate().GoToUrl(_webTestsFixture.FullApplicationUrl + "/account/login");
            if (_webTestsFixture.WebDriver.Title == "Dashboards")
            {
                _webTestsFixture.WebDriver.Navigate().GoToUrl(_webTestsFixture.FullApplicationUrl + "/logoff");
            }

            return new Login.Login(_webTestsFixture);
        }

        public Login.Login GoToLoginPage(Pages? returnUrl = null)
        {
            if (returnUrl != null)
            {
                _webTestsFixture.WebDriver.Navigate().GoToUrl(_webTestsFixture.FullApplicationUrl + "/account/login?returnurl=" + _webTestsFixture.RootUrl + PageUrls[returnUrl.Value]);
            }
            else
            {
                _webTestsFixture.WebDriver.Navigate().GoToUrl(_webTestsFixture.FullApplicationUrl + "/account/login");
            }

            return new Login.Login(_webTestsFixture);
        }
    }
}
