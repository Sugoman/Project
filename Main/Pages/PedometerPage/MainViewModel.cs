using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows;

namespace Main.Pages.PedometerPage
{
    public class MainViewModel : INotifyPropertyChanged
    {
        private StepData _selectedStep;
        public ObservableCollection<StepData> Steps { get; set; } = new ObservableCollection<StepData>
{
    new StepData { ID = 1, Date = DateTime.Now, Steps = 1000 },
    new StepData { ID = 2, Date = DateTime.Now.AddDays(1), Steps = 2000 }
};
        public StepData SelectedStep
        {
            get => _selectedStep;
            set
            {
                _selectedStep = value;
                OnPropertyChanged(nameof(SelectedStep));
            }
        }


        public MainViewModel()
        {
            var filePath = "steps_data.xlsx";
            Steps = ExcelLoader.LoadData(filePath);
            SelectedStep = Steps.Count > 0 ? Steps[0] : null;
            
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        }

    }
}
