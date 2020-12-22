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
using FoxLearn.License;

namespace ToolLicensenkey
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            List<string> lst = new List<string>();
            lst.Add("FULL");
            lst.Add("TRIAL");
            cbbLicenseType.ItemsSource = lst;
        }
        const int ProductCode = 1;
        private void btnGenerate_Click(object sender, RoutedEventArgs e)
        {
            KeyManager km = new KeyManager(txtProductID.Text);
            KeyValuesClass kv;
            string productKey = string.Empty;
            if (cbbLicenseType.SelectedItem.ToString() == "FULL")
            {
                kv = new KeyValuesClass()
                {
                    Type = LicenseType.FULL,
                    Header = Convert.ToByte(9),
                    Footer = Convert.ToByte(6),
                    ProductCode = (byte)ProductCode,//As order of your software
                    Edition = Edition.ENTERPRISE,
                    Version = 1
                };
                if (!km.GenerateKey(kv, ref productKey))//Generate full license key
                    txtProductKey.Text = "ERROR";
            }
            else if(cbbLicenseType.SelectedItem.ToString() == "TRIAL")
            {
                kv = new KeyValuesClass()
                {
                    Type = LicenseType.TRIAL,
                    Header = Convert.ToByte(9),
                    Footer = Convert.ToByte(6),
                    ProductCode = (byte)ProductCode,
                    Edition = Edition.ENTERPRISE,
                    Version = 1,
                    Expiration = DateTime.Now.Date.AddDays(Convert.ToInt32(txtExperienceDays.Text))
                };
                if (!km.GenerateKey(kv, ref productKey))//Generate trial license key
                    txtProductKey.Text = "ERROR";
            }
            txtProductKey.Text = productKey;
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            cbbLicenseType.SelectedIndex = 0;
            //Get computer id, it's unique for each computer
            txtProductID.Text = ComputerInfo.GetComputerId();
        }
    }
}
