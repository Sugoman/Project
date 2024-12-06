using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;
using System.Windows.Input;

namespace Main.Pages.PressurePage
{
    public class TextConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value != null && value.GetType() == typeof(DataRowView))
            {
                var v = ((DataRowView)value).Row.Table.Rows.IndexOf(((DataRowView)value).Row);
                return "Удалить"; //+ ((DataRowView) value).Row.Table.Rows.IndexOf(((DataRowView) value).Row);
            }
            return "Добавить";
        }
        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
