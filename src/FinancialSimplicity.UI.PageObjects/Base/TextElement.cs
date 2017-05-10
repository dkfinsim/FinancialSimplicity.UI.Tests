using OpenQA.Selenium;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FinancialSimplicity.UI.PageObjects.Base
{
    public class TextElement
    {
        IWebElement _element;
        public TextElement(IWebElement element)
        {
            _element = element;
        }

        public string Value
        {
            get
            {
                return _element.GetAttribute("value");
            }
            set
            {
                _element.SendKeys(value);
            }
        }

    }
}
