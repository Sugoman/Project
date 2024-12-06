using Main.Pages.AddDateWindow;
using OfficeOpenXml;
using System.Collections.ObjectModel;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;

namespace Main.Pages.PressurePage
{
    /// <summary>
    /// Логика взаимодействия для Pressure.xaml
    /// </summary>
    public partial class Pressure : Page

    {
        public ObservableCollection<PulseAndHeartRate> MyData { get; set; }

        public ICommand DeleteCommand { get; }
        public Pressure()
        {
            InitializeComponent();
            LoadExcelToDataGrid();

        }


        public void LoadExcelToDataGrid()
        {
            string filePath = "pressure_data.xlsx";
            try
            {
                if (!File.Exists(filePath))
                    throw new FileNotFoundException("Файл не найден!");

                var dataList = new List<PulseAndHeartRate>();
                using (var package = new ExcelPackage(new FileInfo(filePath)))
                {
                    var worksheet = package.Workbook.Worksheets[0];
                    int rowCount = worksheet.Dimension.Rows;
                    int colCount = worksheet.Dimension.Columns;

                    for (int row = 2; row <= rowCount; row++)
                    {
                        var data = new PulseAndHeartRate
                        {
                            Pressure = worksheet.Cells[row, 1].Text,
                            HeartRate = worksheet.Cells[row, 2].Text,
                            Date = worksheet.Cells[row, 3].Text
                        };
                        dataList.Add(data);
                    }
                }

                // Привязываем данные к DataGrid
                pressureDataGrid.ItemsSource = dataList;
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка: {ex.Message}");
            }
        }

        private void DeleteRowFromExcel(PulseAndHeartRate model)
        {
            var filePath ="pressure_data.xlsx";
            var fileInfo = new FileInfo(filePath);

            using (var package = new ExcelPackage(fileInfo))
            {
                var worksheet = package.Workbook.Worksheets[0];
                var rowCount = worksheet.Dimension.Rows;

                for (int row = 2; row <= rowCount; row++) 
                {
                    var pressure = worksheet.Cells[row, 1].Text;
                    var heartRate = worksheet.Cells[row, 2].Text;
                    var date = worksheet.Cells[row, 3].Text;

                    if (pressure == model.Pressure &&
                        heartRate == model.HeartRate &&
                        date == model.Date.ToString())
                    {
                        worksheet.DeleteRow(row);
                        break;
                    }
                }

                package.Save();
            }
        }

        private void addDataButton_Click(object sender, RoutedEventArgs e)
        {
            addDataWindow addDataWindow = new addDataWindow();
            addDataWindow.Owner = Window.GetWindow(this);
            addDataWindow.Show();
        }

        private void DeleteRow_Click(object sender, RoutedEventArgs e)
        {
            var button = sender as Button;
            if (button != null)
            {
                var dataGridRow = FindParent<DataGridRow>(button);
                if (dataGridRow != null)
                {
                    var item = dataGridRow.Item as PulseAndHeartRate;
                    if (item != null)
                    {
                        DeleteRowFromExcel(item);
                        LoadExcelToDataGrid();
                    }
                }
            }
        }
        private static T FindParent<T>(DependencyObject child) where T : DependencyObject
        {
            var parentObject = VisualTreeHelper.GetParent(child);
            if (parentObject == null) return null;

            if (parentObject is T parent)
                return parent;

            return FindParent<T>(parentObject);
        }

        private void reloadDataGridButton_Click(object sender, RoutedEventArgs e)
        {
            LoadExcelToDataGrid();
        }
    }
}

