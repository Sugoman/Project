using OfficeOpenXml;
using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;
using System.Windows.Media.Media3D;

namespace Main.Pages.SettingsPage
{
    /// <summary>
    /// Логика взаимодействия для Settings.xaml
    /// </summary>
    public partial class Settings : Page
    {
        private readonly Brush _defaultButtonBackground;
        private string excelFilePath = "allergies.xlsx";
        public Settings()
        {
            InitializeComponent();
            _defaultButtonBackground = saveHeightButton.Background;


            try
            {
                // Загружаем данные из Excel
                var data = LoadDataFromExcel(excelFilePath);

                // Очищаем ListBox и добавляем данные
                allergiesListBox.Items.Clear();
                foreach (var item in data)
                {
                    allergiesListBox.Items.Add(item);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error loading data: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private async void saveHeightButton_Click(object sender, RoutedEventArgs e)
        {
            saveHeightButton.Background = Brushes.Green;
            SaveHeightDataToFile("Height.health");
            await Task.Delay(2000);
            saveHeightButton.Background = _defaultButtonBackground;
        }

        private void SaveHeightDataToFile(string filePath)
        {
            if (string.IsNullOrWhiteSpace(humanHeightTextBox.Text) || Convert.ToInt32(humanHeightTextBox.Text) < 100)
            {
                saveHeightButton.Background = Brushes.Red;
                MessageBox.Show("Введите значение Рост");
                Task.Delay(2000);
                saveHeightButton.Background = _defaultButtonBackground;
                return;
            }

            try
            {
                string data = humanHeightTextBox.Text;
                File.WriteAllText(filePath, data);

                MessageBox.Show("Данные успешно сохранены!", "Сохранение", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при сохранении данных: {ex.Message}", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void SaveWeightDataToFile(string filePath)
        {
            if (string.IsNullOrWhiteSpace(humanWeightTextBox.Text) || Convert.ToInt32(humanWeightTextBox.Text) < 20)
            {
                saveWeightButton.Background = Brushes.Red;
                MessageBox.Show("Введите значение Вес");
                Task.Delay(2000);
                saveWeightButton.Background = _defaultButtonBackground;
                return;
            }

            try
            {
                string data = humanWeightTextBox.Text;
                File.WriteAllText(filePath, data);

                MessageBox.Show("Данные успешно сохранены!", "Сохранение", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при сохранении данных: {ex.Message}", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void humanHeightTextBox_PreviewTextInput(object sender, System.Windows.Input.TextCompositionEventArgs e)
        {
            e.Handled = !int.TryParse(e.Text, out _);
        }

        private void humanHeightTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private async void saveWeightButton_Click(object sender, RoutedEventArgs e)
        {
            saveWeightButton.Background = Brushes.Green;
            SaveWeightDataToFile("Weight.health");
            await Task.Delay(2000);
            saveWeightButton.Background = _defaultButtonBackground;
        }

        private void saveAllergiesButton_Click(object sender, RoutedEventArgs e)
        {
            string allergy = humanAllergiesTextBox.Text.Trim();
            if (!string.IsNullOrEmpty(allergy))
            {
                allergiesListBox.Items.Add(allergy);
                SaveAllergyToExcel(allergy);
                humanAllergiesTextBox.Clear();
            }
            else
            {
                MessageBox.Show("Пожалуйста, введите аллерген.");
            }
        }
        private void SaveAllergyToExcel(string allergy)
        {
            FileInfo fileInfo = new FileInfo(excelFilePath);

            if (!fileInfo.Exists)
            {
                using (var package = new ExcelPackage(fileInfo))
                {
                    var worksheet = package.Workbook.Worksheets.Add("Allergies");
                    worksheet.Cells[1, 1].Value = "Аллерген";
                    worksheet.Cells[2, 1].Value = allergy;
                    package.Save();
                }
            }
            else
            {
                using (var package = new ExcelPackage(fileInfo))
                {
                    var worksheet = package.Workbook.Worksheets[0];
                    int rowCount = worksheet.Dimension.End.Row + 1;
                    worksheet.Cells[rowCount, 1].Value = allergy;
                    package.Save();
                }
            }
        }

        private void allergiesListBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            humanAllergiesTextBox.Text = allergiesListBox.SelectedValue.ToString();
        }

        private static string[] LoadDataFromExcel(string filePath)
        {
            var dataList = new List<string>();
            using (var package = new ExcelPackage(new FileInfo(filePath)))
            {
                var worksheet = package.Workbook.Worksheets[0];
                int rowCount = worksheet.Dimension.Rows;
                for (int row = 2; row <= rowCount; row++)
                {
                    var cellValue = worksheet.Cells[row, 1].Text;
                    if (!string.IsNullOrWhiteSpace(cellValue))
                    {
                        dataList.Add(cellValue);
                    }
                }
            }

            return dataList.ToArray();
        }

        private void humanHeightTextBox_TextChanged_1(object sender, TextChangedEventArgs e)
        {
            try
            {
                int height = Convert.ToInt32(humanHeightTextBox.Text);

                if (Convert.ToInt32(height) < 50)
                {
                    Abobik.Height = 300;
                }
                else
                {
                    Abobik.Height = height * Math.PI + Math.E;
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void humanWeightTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {
                int weight = Convert.ToInt32(humanWeightTextBox.Text);

                if (Convert.ToInt32(weight) < 20)
                {
                    Abobik.Width = 300;
                }
                else
                {
                    Abobik.Width = weight * Math.PI;
                    MessageBox.Show(Abobik.Width.ToString());
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}



/**/

/**/