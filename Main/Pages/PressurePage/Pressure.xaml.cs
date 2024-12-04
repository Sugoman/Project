
using Main.Pages.AddDateWindow;
using OfficeOpenXml;
using System.IO;
using System.Windows;
using System.Windows.Controls;

namespace Main.Pages.PressurePage
{
    /// <summary>
    /// Логика взаимодействия для Pressure.xaml
    /// </summary>
    public partial class Pressure : Page
    {
        public Pressure()
        {
            InitializeComponent();
            LoadExcelToDataGrid();
        }

        private void pressureDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void LoadExcelToDataGrid()
        {
            string filePath = "pressure_data.xlsx";
            try
            {
                // Проверяем существование файла
                if (!File.Exists(filePath))
                    throw new FileNotFoundException("Файл не найден!");

                // Считываем данные из Excel с помощью EPPlus
                var dataList = new List<MyData>();
                using (var package = new ExcelPackage(new FileInfo(filePath)))
                {
                    var worksheet = package.Workbook.Worksheets[0]; // Первая вкладка
                    int rowCount = worksheet.Dimension.Rows;
                    int colCount = worksheet.Dimension.Columns;

                    // Читаем строки, начиная с первой (или пропустите, если у вас есть заголовок)
                    for (int row = 2; row <= rowCount; row++)
                    {
                        var data = new MyData
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

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }

        private void addDataButton_Click(object sender, RoutedEventArgs e)
        {
            addDataWindow addDataWindow = new addDataWindow();
            addDataWindow.Show();
        }
    }

}
