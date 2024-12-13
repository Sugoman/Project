using LiveCharts;
using LiveCharts.Wpf;
using Main.Pages.EditSteps;
using System.Windows.Controls;
using System.Windows.Media;

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
        public int MaxValue { get; set; }
        public ChartValues<int[]> Values { get; set; }
        public Func<double, string> YFormatter { get; set; }
        private Dictionary<DateTime, double> _data;

        public string filePath = "steps_data.xlsx";
        EditingSteps editingSteps = new();

        public Pedometer()
        {
            InitializeComponent();
            var steps = EditingSteps.ReadFirstColumn(filePath);
            var dates = EditingSteps.ReadSecondColumn(filePath);
            var chartValues = new ChartValues<int>(steps);

            var converter = new BrushConverter();
            var brushFill = (Brush)converter.ConvertFromString("#BBBBBB");
            var brushStroke = (Brush)converter.ConvertFromString("#5C607A");

            SeriesCollection = new SeriesCollection
            {
                new LineSeries
                {
                   Title = "Шагов",
                   Fill = brushFill,
                   Stroke = brushStroke,
                   Values = chartValues,
                   LineSmoothness = 1,
                }
            };
            Labels = dates;
            YFormatter = value => value.ToString();
            DataContext = this;
        }

        private void EndDatePicker_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            var endDate = (int)EndDatePicker.SelectedDate.Value.ToOADate() - 45432;
            chart.AxisX[0].MaxValue = endDate;
        }

        private void StartDatePicker_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            var startDate = (int)(StartDatePicker.SelectedDate.Value.ToOADate() - 45432);
            chart.AxisX[0].MinValue = startDate;
        }
    }

}

