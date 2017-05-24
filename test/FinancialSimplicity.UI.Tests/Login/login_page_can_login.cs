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
        FinancialSimplicity.BLL.DataBuilder.DataBuilder _dataBuilder;
        public login_page_can_login(WebTestsFixture webTestsFixture, FinancialSimplicity.BLL.DataBuilder.DataBuilder dataBuilder)
        {
            _webTestsFixture = webTestsFixture;
            _dataBuilder = dataBuilder;

            _dataBuilder
                .AddCurrency("AUD", "AUD", c => c.is_default = true)
                .UpdateInvestments()
                .AddPrinciple("login_page", "login_page_can_login")
                .AddDomain()
                //.AddDomain(d => d.display_props = (int)(Ima.Model.Constants.DomainDisplayProps.))
                .EnsureAuthenticationDomainExists()
                .AddAuthenticationUser("login_page", userId: "login_page");
        }

        [Fact]
        public void login_to_test_account_redirects_to_dashboard()
        {
            var loginPage = new WebApplication(_webTestsFixture).EnsureUserLoggedOut();

            loginPage.Domain.Value = "login_page_can_login";
            loginPage.UserName.Value = "login_page";
            loginPage.Password.Value = "password";

            loginPage.LoginButton.Click(waitUntil: d => d.Title.StartsWith("Dashboards", StringComparison.OrdinalIgnoreCase));

            Assert.Equal("Dashboards", _webTestsFixture.WebDriver.Title);
        }
        
        [Fact]
        public void login_to_test_account_with_returnurl_redirects_to_specified_page()
        {
            var application = new WebApplication(_webTestsFixture);
            application.EnsureUserLoggedOut();
            var loginPage = application.GoToLoginPage(returnUrl: Pages.Investors);

            loginPage.Domain.Value = "login_page_can_login";
            loginPage.UserName.Value = "login_page";
            loginPage.Password.Value = "password";

            loginPage.LoginButton.Click(waitUntil: d => d.Title.StartsWith("Investors", StringComparison.OrdinalIgnoreCase));

            Assert.Equal("Investors", _webTestsFixture.WebDriver.Title);
        }
    }
}
