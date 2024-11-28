using OfficeOpenXml; // EPPlus
using System.Data;
using System.IO;
using System.Windows;

namespace Main.Pages.PedometerPage
{
    public class LoadData
    {
        public DataTable LoadExcelData(string filePath)
        {
            DataTable table = new DataTable();
            ExcelPackage.LicenseContext = LicenseContext.NonCommercial;
            using (var package = new ExcelPackage(new FileInfo(filePath)))
            {
                if (package.Workbook.Worksheets.Count == 0)
                {
                    MessageBox.Show("В файле Excel нет листов.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    return null;
                }

                ExcelWorksheet worksheet = package.Workbook.Worksheets[0]; // Выбираем первый лист
                int rowCount = worksheet.Dimension.Rows; // Количество строк
                int colCount = worksheet.Dimension.Columns; // Количество столбцов

                // Чтение заголовков столбцов
                for (int col = 1; col <= colCount; col++)
                {
                    table.Columns.Add(worksheet.Cells[1, col].Text); // Читаем первую строку как названия столбцов
                }

                // Чтение данных (начиная со второй строки)
                for (int row = 2; row <= rowCount; row++) // Игнорируем первую строку
                {
                    DataRow dataRow = table.NewRow();
                    for (int col = 1; col <= colCount; col++)
                    {
                        dataRow[col - 1] = worksheet.Cells[row, col].Text;
                    }
                    table.Rows.Add(dataRow);
                }
            }

            return table;
        }
    }
}
