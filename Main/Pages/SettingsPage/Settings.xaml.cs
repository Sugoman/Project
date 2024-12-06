using System.IO;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace Main.Pages.SettingsPage
{
    /// <summary>
    /// Логика взаимодействия для Settings.xaml
    /// </summary>
    public partial class Settings : Page
    {
        private readonly Brush _defaultButtonBackground;
        public Settings()
        {
            InitializeComponent();
            _defaultButtonBackground = saveButton.Background;
        }

        private async void saveButton_Click(object sender, RoutedEventArgs e)
        {
            // Сохранение данных из TextBox в файл
            saveButton.Background = Brushes.Green;
            SaveDataToFile();
            await Task.Delay(2000);
            saveButton.Background = _defaultButtonBackground;
        }

        private void SaveDataToFile()
        {
            if (string.IsNullOrWhiteSpace(humanHeightTextBox.Text))
            {
                saveButton.Background = Brushes.Red;
                MessageBox.Show("Введите значение Рост");
                Task.Delay(2000);
                saveButton.Background = _defaultButtonBackground;
                return;
            }
            try
            {
                string data = humanHeightTextBox.Text;
                string filePath = "data.health";
                File.WriteAllText(filePath, data);

                MessageBox.Show("Данные успешно сохранены!", "Сохранение", MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Ошибка при сохранении данных: {ex.Message}", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
