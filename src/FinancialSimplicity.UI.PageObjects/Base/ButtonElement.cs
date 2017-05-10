using OpenQA.Selenium;
using OpenQA.Selenium.Support.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FinancialSimplicity.UI.PageObjects.Base
{
    public class ButtonElement
    {
        WebTestsFixture _webTestsFixture;
        IWebElement _element;
        public ButtonElement(WebTestsFixture webTestsFixture, IWebElement element)
        {
            _webTestsFixture = webTestsFixture;
            _element = element;
        }

        public void Click(int waitTime = 10, Func<IWebDriver, bool> waitUntil = null)
        {
            _element.Click();

            if (waitUntil != null)
            {
                var wait = new WebDriverWait(_webTestsFixture.WebDriver, TimeSpan.FromSeconds(waitTime));
                wait.Until(waitUntil);
            }
        }
    }
}
