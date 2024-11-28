using LiveCharts;
using LiveCharts.Wpf;
using Main.Pages.EditSteps;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;

namespace Main.Pages.PedometerPage
{
    /// <summary>
    /// Логика взаимодействия для Pedometer.xaml
    /// </summary>
    public partial class Pedometer : Page
    {
        public MainWindow MainWindow { get; set; }
        public SeriesCollection SeriesCollection { get; set; }
        public string[] Labels { get; set; }
        public ChartValues<int[]> Values { get; set; }
        public Func<double, string> YFormatter { get; set; }

        public string filePath = "steps_data.xlsx";
        private int[] Steps;
        private DateTime[] Dates;
        EditingSteps editingSteps = new();

        public Pedometer()
        {
            InitializeComponent();
            var steps = EditingSteps.ReadFirstColumn(filePath);
            var dates = EditingSteps.ReadSecondColumn(filePath);
            var chartValues = new ChartValues<int>(steps);
            SeriesCollection = new SeriesCollection
            {
                new LineSeries
                {                   
                    // Значение шагов из первого столбца Excel-файла
                   Values = chartValues,
                   LineSmoothness = 1,
                }
            };
            Labels = dates;
            YFormatter = value => value.ToString();
            DataContext = this;           
        }

        private void UpdateChart(DateTime startDate, DateTime endDate)
        {    
            string[] dates = EditingSteps.ReadSecondColumn(filePath);
            var steps = EditingSteps.ReadFirstColumn(filePath);
            var chartValues = new ChartValues<int>(steps);
        }

        private void DatePicker_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            StepData stepData = new();
            MessageBox.Show(EndDatePicker.SelectedDate.Value.Date.ToShortDateString());
            MessageBox.Show(stepData.ID.ToString());
            PedometerPage.MainViewModel viewModel = new();
            MessageBox.Show("123" );
            MessageBox.Show($"DataContext: {this.DataContext?.GetType().Name}");
        }

    }
}

