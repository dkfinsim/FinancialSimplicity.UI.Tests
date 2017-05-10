using FinancialSimplicity.UI.PageObjects;
using OpenQA.Selenium;
using OpenQA.Selenium.Support.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace FinancialSimplicity.UI.Tests.Login
{
    [Collection("UI Tests")]
    public class login_page_can_login
    {
        WebTestsFixture _webTestsFixture;
        public login_page_can_login(WebTestsFixture webTestsFixture)
        {
            _webTestsFixture = webTestsFixture;
        }

        [Fact]
        public void login_to_test_account_redirects_to_dashboard()
        {
            var loginPage = new WebApplication(_webTestsFixture).EnsureUserLoggedOut();

            loginPage.Domain.Value = "";
            loginPage.UserName.Value = "";
            loginPage.Password.Value = "";

            loginPage.LoginButton.Click(waitUntil: d => d.Title.StartsWith("Dashboards", StringComparison.OrdinalIgnoreCase));

            Assert.Equal("Dashboards", _webTestsFixture.WebDriver.Title);
        }
        
        [Fact]
        public void login_to_test_account_with_returnurl_redirects_to_specified_page()
        {
            var application = new WebApplication(_webTestsFixture);
            application.EnsureUserLoggedOut();
            var loginPage = application.GoToLoginPage(returnUrl: Pages.Investors);

            loginPage.Domain.Value = "";
            loginPage.UserName.Value = "";
            loginPage.Password.Value = "";

            loginPage.LoginButton.Click(waitUntil: d => d.Title.StartsWith("Investors", StringComparison.OrdinalIgnoreCase));

            Assert.Equal("Investors", _webTestsFixture.WebDriver.Title);
        }
    }
}
