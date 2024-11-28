using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Main.Pages.PedometerPage
{
    public class ExcelLoader
    {
        public static ObservableCollection<StepData> LoadData(string filePath)
        {
            var steps = new ObservableCollection<StepData>();

            using (var package = new ExcelPackage(new FileInfo(filePath)))
            {
                var worksheet = package.Workbook.Worksheets[0];
                int row = 2; // Предполагаем, что первая строка содержит заголовки

                while (!string.IsNullOrEmpty(worksheet.Cells[row, 1].Text))
                {
                    steps.Add(new StepData
                    {
                        ID = int.Parse(worksheet.Cells[row, 3].Text),
                        Date = DateTime.Parse(worksheet.Cells[row, 2].Text),
                        Steps = int.Parse(worksheet.Cells[row, 1].Text)
                    });
                    row++;
                }
            }

            return steps;
        }
    }
}
