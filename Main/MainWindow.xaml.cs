using System;
using System.Globalization;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using LiveCharts;
using LiveCharts.Events;
using LiveCharts.Wpf;
using Main.Pages.EditSteps;
using Main.Pages.PedometerPage;
using Main.Pages.PressurePage;

namespace Main
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

        private void ChangeMainPageToPedometerPageButton_Click(object sender, RoutedEventArgs e)
        {
            this.Title = ChangeMainPageToPedometerPageButton.Content.ToString();
            MainFrame.Navigate(new Pedometer());
        }

        private void ChangeMainPageToEditPageButton_Click(object sender, RoutedEventArgs e)
        {
            this.Title = ChangeMainPageToEditPageButton.Content.ToString();
            MainFrame.Navigate(new EditingSteps());
        }

        private void ChangeMainPageToPressurePageButton_Click(object sender, RoutedEventArgs e)
        {
            this.Title = ChangeMainPageToPressurePageButton.Content.ToString();
            MainFrame.Navigate(new Pressure());
        }
    }
}