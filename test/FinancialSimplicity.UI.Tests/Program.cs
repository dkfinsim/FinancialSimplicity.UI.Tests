using FinancialSimplicity.UI.PageObjects;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FinancialSimplicity.UI.Tests
{
    public class Program
    {
        private static ConsoleColor _originalConsoleColour;
        static void Main(string[] args)
        {
            var assembly = System.Reflection.Assembly.GetExecutingAssembly();
            var tests = assembly.GetTypes().Where(x => x.CustomAttributes.Any(a => a.AttributeType == typeof(Xunit.CollectionAttribute)));

            if (args?.Length > 0)
            {
                if (args[0].Contains('\\'))
                {
                    var items = args[0].Split('\\');
                    var ns = "FinancialSimplicity.UI.Tests." + items[0];
                    var testClass = items[1];
                    tests = tests.Where(x => x.Namespace == ns && x.Name == testClass);
                }
                else
                {
                    var ns = "FinancialSimplicity.UI.Tests." + args[0];
                    Console.WriteLine($"Executing tests in the {ns} namespace");
                    tests = tests.Where(x => x.Namespace == ns);
                }
            }

            var testFixturesRun = 0;
            var testFixturessFailed = 0;
            var testsRun = 0;
            var testsFailed = 0;
            _originalConsoleColour = Console.ForegroundColor;

            using (var testfixture = new WebTestsFixture())
            {
                foreach (var test in tests)
                {
                    Console.WriteLine($"Executing test {test.FullName}");

                    try
                    {
                        testFixturesRun++;
                        var testInstance = Activator.CreateInstance(test, testfixture);

                        var testMethods = test.GetMethods(System.Reflection.BindingFlags.Public | System.Reflection.BindingFlags.Instance).Where(m => m.CustomAttributes.Any(a => a.AttributeType == typeof(Xunit.FactAttribute)));

                        foreach (var testMethod in testMethods)
                        {
                            Console.Write(testMethod.Name);
                            try
                            {
                                testsRun++;
                                testMethod.Invoke(testInstance, null);
                                WriteSuccess(" success\r\n");
                            }
                            catch (Exception ex)
                            {
                                WriteError(" failed\r\n");
                                Console.WriteLine(ex);
                                testsFailed++;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex);
                        testFixturessFailed++;
                    }
                }
            }

            if (testsFailed > 0)
            {
                Console.ForegroundColor = ConsoleColor.Red;
            }
            else
            {
                Console.ForegroundColor = ConsoleColor.Green;
            }
            Console.WriteLine($"Test run completed.\r\nTest Fixtures: {testFixturesRun}, Test fixtures successful: {testFixturesRun - testFixturessFailed}/{testFixturesRun}, Tests failed: {testFixturessFailed}");
            Console.WriteLine($"Tests run: {testsRun}, Tests successful: {testsRun - testsFailed}/{testsRun}, Tests failed: {testsFailed}");
            Console.ForegroundColor = _originalConsoleColour;
        }

        private static void WriteSuccess(string message)
        {
            Console.ForegroundColor = ConsoleColor.Green;
            Console.Write(message);
            Console.ForegroundColor = _originalConsoleColour;
        }

        private static void WriteError(string message)
        {
            Console.ForegroundColor = ConsoleColor.Red;
            Console.Write(message);
            Console.ForegroundColor = _originalConsoleColour;
        }
    }
}
