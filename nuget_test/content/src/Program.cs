using System;
using System.Linq;

namespace test
{
    class Program
    {
        static void Main(string[] args)
        {
            bool keep_going = true;
            Console.WriteLine("Version 1.0.11");
            Console.WriteLine("Please enter a series of numbers line seperated by a ',' comma.");
            Console.WriteLine("The sum of the numbers will be returned.");
            Console.WriteLine("For example, 1.2,2.3,3 will return a value of 6.5.");
            Console.WriteLine("Invalid entries will be ignored.");
            Console.WriteLine();
            do
            {

                Console.WriteLine("Please enter a series of number series:");
                string input = Console.ReadLine();
                int sum = 0;
                if (input == "")
                {
                    keep_going = false;
                }
                else
                {
                    sum = input.Split(',').ToList().Sum((s) => double.TryParse(s, out double n) ? n : 0);
                    Console.WriteLine("Sum of the numbers is " + sum.ToString());
                    Console.WriteLine();
                }
            }
            while (keep_going);



        }
    }
}
