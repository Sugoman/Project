using LiveCharts;
using LiveCharts.Wpf;
using Main.Pages.EditSteps;
using OfficeOpenXml;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace Main.Pages.HomePage
{
    /// <summary>
    /// Логика взаимодействия для HomePage.xaml
    /// </summary>
    public partial class HomePage : Page
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

        public HomePage()
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
                   LineSmoothness = 1
                }
            };
            Labels = dates;
            YFormatter = value => value.ToString();
            DataContext = this;
            chart.AxisX[0].MinValue = 184;

        }

        public double LoadInfoFromExcel(string filePath, int column)
        {

            List<double> data = new List<double>();

            using (var package = new ExcelPackage(new FileInfo(filePath)))
            {
                var worksheet = package.Workbook.Worksheets[0];
                int row = 2;

                while (worksheet.Cells[row, column].Value != null)
                {
                    if (double.TryParse(worksheet.Cells[row, column].Value.ToString(), out double value))
                    {
                        data.Add(value);
                    }
                    row++;
                }
            }

            if (data.Count >= 7)
            {
                double average = data.TakeLast(7).Average();
                return average;
            }
            else
            {
                Console.WriteLine("Недостаточно данных для расчета среднего.");
                return 0;
            }
        }

        private (double, double) CalculateAverages(string filePath)
        {
            List<int> firstValues = new List<int>();
            List<int> secondValues = new List<int>();

            ExcelPackage.LicenseContext = LicenseContext.NonCommercial;

            using (var package = new ExcelPackage(new FileInfo(filePath)))
            {
                var worksheet = package.Workbook.Worksheets[0]; // Первый лист
                int rowCount = worksheet.Dimension.Rows;

                for (int row = 1; row <= rowCount; row++) // Предполагается, что данные в одном столбце
                {
                    string cellValue = worksheet.Cells[row, 1].Text; // Чтение из первого столбца
                    if (!string.IsNullOrWhiteSpace(cellValue) && cellValue.Contains("/"))
                    {
                        var parts = cellValue.Split('/');
                        if (int.TryParse(parts[0], out int firstValue) && int.TryParse(parts[1], out int secondValue))
                        {
                            firstValues.Add(firstValue);
                            secondValues.Add(secondValue);
                        }
                    }
                }
            }
            var lastSevenFirst = firstValues.TakeLast(7).ToList();
            var lastSevenSecond = secondValues.TakeLast(7).ToList();

           
            
            return (lastSevenFirst.Average(), lastSevenSecond.Average());
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {          
            averagePulseTextBlock.Text = Math.Round(LoadInfoFromExcel("pressure_data.xlsx", 2), 0).ToString();
           
            averageUpPressure.Text = Math.Round(CalculateAverages("pressure_data.xlsx").Item1, 0).ToString();
            averageDownPressure.Text = Math.Round(CalculateAverages("pressure_data.xlsx").Item2, 0).ToString();

            averageSteps.Text = Math.Round(LoadInfoFromExcel("steps_data.xlsx", 1), 0).ToString();
        }
    }
}

