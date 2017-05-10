using OpenQA.Selenium;
using OpenQA.Selenium.Remote;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FinancialSimplicity.UI.PageObjects
{
    public class WebTestsFixture : IDisposable
    {
        public IWebDriver WebDriver { get; private set; }

        public string DomainUrl { get; private set; }
        public string RootUrl { get; private set; }
        public string FullApplicationUrl { get => DomainUrl + RootUrl; }

        public WebTestsFixture()
        {
            if (Environment.GetEnvironmentVariable("fs_web_test_endpoint") == "remote")
            {
                DesiredCapabilities capability;
                switch (Environment.GetEnvironmentVariable("test_browser"))
                {
                    case "firefox":
                        capability = DesiredCapabilities.Firefox();
                        break;
                    case "ie":
                        capability = DesiredCapabilities.InternetExplorer();
                        break;
                    case "edge":
                        capability = DesiredCapabilities.Edge();
                        break;
                    default:
                        capability = DesiredCapabilities.Chrome();
                        break;
                }
                capability.SetCapability("browserstack.user", Environment.GetEnvironmentVariable("browserstack_user"));
                capability.SetCapability("browserstack.key", Environment.GetEnvironmentVariable("browserstack_user"));

                WebDriver = new RemoteWebDriver(
                  new Uri("http://hub-cloud.browserstack.com/wd/hub/"), capability
                );
            }
            else
            {
                switch (Environment.GetEnvironmentVariable("test_browser"))
                {
                    case "firefox":
                        WebDriver = new OpenQA.Selenium.Firefox.FirefoxDriver();
                        break;
                    case "ie":
                        WebDriver = new OpenQA.Selenium.IE.InternetExplorerDriver();
                        break;
                    case "edge":
                        WebDriver = new OpenQA.Selenium.Edge.EdgeDriver();
                        break;
                    default:
                        WebDriver = new OpenQA.Selenium.Chrome.ChromeDriver();
                        break;
                }
            }

            DomainUrl = Environment.GetEnvironmentVariable("domain_url");
            RootUrl = Environment.GetEnvironmentVariable("site_url");
        }

        public void Dispose()
        {
            WebDriver.Quit();
            WebDriver.Dispose();
        }
    }
}
