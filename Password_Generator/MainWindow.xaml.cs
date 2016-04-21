using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;

namespace Password_Generator
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            /*
            string temp = "";

            for (int i = 0; i < 127; i++)
                temp += "'" + ((char)i).ToString() + "', ";

            File.WriteAllText("result.txt", temp);
          */
        }

        string GeneratePassword(bool isLowerAlpha, bool isUpperAlpha, bool isDigits, bool isSpecial, int length)
        {
            char[] specials = { '!', '"', '#', '$', '%', '&', '\'', '(', ')', '*', '+', ',', '-', '.', '/', ':', ';', '<', '=', '>', '?', '@', '[', '\\', ']', '^', '_', '`', '{', '|', '}', '~' };
            char[] digits = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };
            char[] upper = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };
            char[] lower = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };

            string temp = "";
            Random rnd = new Random();
            int counter = 0;

            while (counter < length)
            {
                switch(rnd.Next(0, 4)) //0-3 - выбор массива данных
                {
                    case 0: if (isLowerAlpha)
                                {
                                    temp += lower[rnd.Next(0, lower.Length)];
                                    counter++;
                                }break;
                    case 1: if (isUpperAlpha)
                                {
                                    temp += upper[rnd.Next(0, upper.Length)];
                                    counter++;
                                } break;
                    case 2: if (isDigits)
                                {
                                    temp += digits[rnd.Next(0, digits.Length)];
                                    counter++;
                                } break;
                    case 3: if (isSpecial)
                                {
                                    temp += specials[rnd.Next(0, specials.Length)];
                                    counter++;
                                } break;
                }
            }

            return temp;
        }

        private void Button_Generate_Click(object sender, RoutedEventArgs e)
        {
            bool isAlpha = false;
            bool isDigits = false;
            bool isUpper = false;
            bool isSpecials = false;

            if (CheckBox_LowerAlpha.IsChecked == true) isAlpha = true;
            if (CheckBox_UpperAlpha.IsChecked == true) isUpper = true;
            if (CheckBox_Digits.IsChecked == true) isDigits = true;
            if (CheckBox_Specials.IsChecked == true) isSpecials = true;

            int length = 0;
            //length = Convert.ToInt32(TextBox_Length.Text);

            Int32.TryParse(TextBox_Length.Text, out length);

            if (!(isAlpha || isUpper || isDigits || isSpecials) && (length == 0))
                MessageBox.Show("Password length must be at least 1, and there must be selected at least one charset!");
            else if ((length == 0) || TextBox_Length.Text == "")
                MessageBox.Show("Password length must be at least 1!");
            else if (!(isAlpha || isUpper || isDigits || isSpecials))
                MessageBox.Show("There must be selected at least one charset!");
            else         
                TextBox_Password.Text = GeneratePassword(isAlpha, isUpper, isDigits, isSpecials, length);
        }
    }
}
