using OfficeOpenXml;
using System.IO;
using System.Windows;

namespace Main.Pages.AddDateWindow
{
    /// <summary>
    /// Логика взаимодействия для addDataWindow.xaml
    /// </summary>
    public partial class addDataWindow : Window
    {
        public addDataWindow()
        {
            InitializeComponent();
        }

        private void cancelButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void saveButton_Click(object sender, RoutedEventArgs e)
        {
            string filePath = @"pressure_data.xlsx";

            int columnPressureNumber = 1;
            int columnPulseNumber = 2;
            int columnDateNumber = 3;

            try
            {
                if (string.IsNullOrWhiteSpace(PulseTextBox.Text) || string.IsNullOrWhiteSpace(textBoxPressure.Text))
                {
                    MessageBox.Show("Отсутствуют значения.", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                if (!File.Exists(filePath))
                {
                    MessageBox.Show("Файл Excel не найден.");
                    return;
                }


                using (var package = new ExcelPackage(new FileInfo(filePath)))
                {
                    var worksheet = package.Workbook.Worksheets[0];

                    int row = 1;
                    while (worksheet.Cells[row, columnPressureNumber].Value != null && !string.IsNullOrWhiteSpace(worksheet.Cells[row, columnPressureNumber].Text))
                    {
                        row++;
                    }

                    // Записываем текст из TextBox в найденную пустую ячейку
                    worksheet.Cells[row, columnPressureNumber].Value = textBoxPressure.Text;
                    worksheet.Cells[row, columnPulseNumber].Value = PulseTextBox.Text;
                    worksheet.Cells[row, columnDateNumber].Value = DataDatePicker.SelectedDate.Value.ToString("dd/MM/yyyy");

                    // Сохраняем изменения
                    package.Save();
                }
                MessageBox.Show("Данные успешно сохранены!", "Успех!", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"{ex.Message}", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
            }

        }




    }

}

