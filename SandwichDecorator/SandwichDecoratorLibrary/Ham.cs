﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SandwichDecoratorLibrary
{
    public class Ham : ITopping
    {
        public Ham(ITopping topping)
        {

        }
        public Ham(ISandwich sandwich)
        {

        }
        public decimal GetPrice()
        {
            return 0;
        }
        public string GetDescription()
        {
            return "";
        }
    }
}