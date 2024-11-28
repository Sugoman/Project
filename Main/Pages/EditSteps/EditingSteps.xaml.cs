using Main.Pages.PedometerPage;
using System.Data;
using System.Windows;
using System.Windows.Controls;
using System.IO;
using System.Reflection;
using System.Linq;
using OfficeOpenXml;
namespace Main.Pages.EditSteps
{
    /// <summary>
    /// Логика взаимодействия для EditingSteps.xaml
    /// </summary>
    public partial class EditingSteps : Page
    {
        LoadData loadData = new();

        public EditingSteps()
        {
            InitializeComponent();
            string filePath = @"steps_data.xlsx";
            DataTable dataTable = loadData.LoadExcelData(filePath);            
            grid.ItemsSource = dataTable.DefaultView;

        }

        public static string[] ReadSecondColumn(string filePath)
        {
            if (!File.Exists(filePath))
            {
                throw new FileNotFoundException($"Файл не найден: {filePath}");
            }

            var result = new List<string>();

            ExcelPackage.LicenseContext = LicenseContext.NonCommercial;

            using (var package = new ExcelPackage(new FileInfo(filePath)))
            {
                var worksheet = package.Workbook.Worksheets[0]; // Берем первый лист
                int rowCount = worksheet.Dimension.Rows;

                // Начинаем со второй строки, чтобы игнорировать первую
                for (int row = 2; row <= rowCount; row++)
                {
                    var cellValue = worksheet.Cells[row, 2].Text; // Читаем второй столбец
                    if (!string.IsNullOrEmpty(cellValue))
                    {
                        result.Add(cellValue);                        
                    }
                }
            }

            return result.ToArray();
        }

        public static int[] ReadFirstColumn(string filePath)
        {
            if (!File.Exists(filePath))
            {
                throw new FileNotFoundException($"Файл не найден: {filePath}");
            }

            var result = new List<int>();

            ExcelPackage.LicenseContext = LicenseContext.NonCommercial;

            using (var package = new ExcelPackage(new FileInfo(filePath)))
            {
                var worksheet = package.Workbook.Worksheets[0]; // Берем первый лист
                int rowCount = worksheet.Dimension.Rows;

                // Начинаем со второй строки, чтобы игнорировать первую
                for (int row = 2; row <= rowCount; row++)
                {
                    var cellValue = worksheet.Cells[row, 1].Text; // Читаем второй столбец
                    if (!string.IsNullOrEmpty(cellValue))
                    {
                        result.Add(Convert.ToInt32(cellValue));
                    }
                }
            }

            return result.ToArray();
        }



    }
}
