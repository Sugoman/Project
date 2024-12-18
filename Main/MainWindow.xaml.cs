﻿using System;
using System.Globalization;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using LiveCharts;
using LiveCharts.Events;
using LiveCharts.Wpf;
using Main.Pages.AddDateWindow;
using Main.Pages.EditSteps;
using Main.Pages.HomePage;
using Main.Pages.PedometerPage;
using Main.Pages.PressurePage;
using Main.Pages.SettingsPage;

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
            this.Title = ChangeMainPageToHomePageButton.Content.ToString();
            MainFrame.Navigate(new HomePage());
           
        }       

        private void ChangeMainPageToPedometerPageButton_Click(object sender, RoutedEventArgs e)
        {
            this.Title = ChangeMainPageToPedometerPageButton.Content.ToString();
            MainFrame.Navigate(new Pedometer());
        }

        

        private void ChangeMainPageToPressurePageButton_Click(object sender, RoutedEventArgs e)
        {
            this.Title = ChangeMainPageToPressurePageButton.Content.ToString();
            MainFrame.Navigate(new Pressure());
        }

        private void Window_Closing(object sender, EventArgs e)
        {
            addDataWindow add = new addDataWindow();
            if (add.IsLoaded == true)
                add.Close();
          
        }       

        private void ChangeMainPageToSettingsPageButton_Click(object sender, RoutedEventArgs e)
        {
            this.Title = ChangeMainPageToSettingsPageButton.Content.ToString();
            MainFrame.Navigate(new Settings());
        }
        private void Window_Closed(object sender, EventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void ChangeMainPageToHomePageButton_Click(object sender, RoutedEventArgs e)
        {
            this.Title = ChangeMainPageToHomePageButton.Content.ToString();
            MainFrame.Navigate(new HomePage());
        }
    }
}