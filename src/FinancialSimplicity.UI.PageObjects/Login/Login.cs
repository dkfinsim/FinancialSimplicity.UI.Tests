using FinancialSimplicity.UI.PageObjects.Base;
using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FinancialSimplicity.UI.PageObjects.Login
{
    public class Login
    {
        WebTestsFixture _webTestsFixture;
        public Login(WebTestsFixture webTestsFixture)
        {
            _webTestsFixture = webTestsFixture;

            Domain = new TextElement(_webTestsFixture.WebDriver.FindElement(By.Id("Domain")));
            UserName = new TextElement(_webTestsFixture.WebDriver.FindElement(By.Id("UserName")));
            Password = new TextElement(_webTestsFixture.WebDriver.FindElement(By.Id("password")));

            LoginButton = new ButtonElement(_webTestsFixture, _webTestsFixture.WebDriver.FindElement(By.Id("login")));
        }

        public TextElement Domain { get; private set; }
        public TextElement UserName { get; private set; }
        public TextElement Password { get; private set; }

        public ButtonElement LoginButton { get; private set; }
    }
}
