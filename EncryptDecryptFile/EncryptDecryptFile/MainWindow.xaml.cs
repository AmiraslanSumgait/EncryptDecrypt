using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
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

namespace EncryptDecryptFile
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

        public List<string> Text { get; set; } = new List<string>();
        public static string XORCipher(string data, string key)
        {
            int dataLen = data.Length;
            int keyLen = key.Length;
            char[] output = new char[dataLen];

            for (int i = 0; i < dataLen; ++i)
            {
                output[i] = (char)(data[i] ^ key[i % keyLen]);
            }

            return new string(output);
        }

        private void BtnFile_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "All files|*.*|Text files|*.txt";
            openFileDialog.FilterIndex = 2;
            if (openFileDialog.ShowDialog() == true)
            {
                using (StreamReader sr = new StreamReader(openFileDialog.FileName))
                {
                    string line;
                    while ((line = sr.ReadLine()) != null)
                    {
                        Text.Add(line);
                    }
                    txbFile.Text = openFileDialog.FileName;
                }
            }
        }
        private void btnStart_Click(object sender, RoutedEventArgs e)
        {
            string toFile = txbFile.Text;
            StringBuilder sb = new StringBuilder();
            using (var stream = File.Create(toFile))
            {
                using (StreamWriter sw = new StreamWriter(stream))
                {
                    foreach (var item in Text)
                    {
                        Thread.Sleep(1000);
                        
                        sb.Append(item);
                    }
                    sw.WriteLine(XORCipher(sb.ToString(), txbPassword.Text));
                }
              
                //Dispatcher.Invoke(new Action(() =>
                //{
                   
                //}));
            }
        }
    }
}

