   M S B A M L   `   `   `  ����U  QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf  5      ? ;Main, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Main.Pages.HomePageMain.Pages.HomePage 5      "   Main.Pages.HomePage.HomePage   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      c _MahApps.Metro.IconPacks.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      <d2http://schemas.microsoft.com/expression/blend/2008   5      @lvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf   5      /local!clr-namespace:Main.Pages.HomePage   5      -   5          N� Title$  HomePage��5      .��5      �  � RowDefinitions 5   
   �� 5      $	��100 �6   �� 5      $	��100 �6   �� 5      $	��100 �6   �� 5      $	��100 �6   �� 5      $��* �6   .+�5   
   �� $��Step AND Heart��6   $��54(�6*   $��DemiBold"�68   $��Center=�6N   
�������6k   �� 5   
   $��1��6    �� Orientation$ 
Horizontal=�6"   $��0 20 0 0q�6;   .+�5      �� $J��DСредний показатель пульса за неделю: ��6   $��24(�6E   
�������6S   .  (MahApps.Metro.IconPacks.PackIconMaterial  5         Kind$ HeartOutline=�6$   $��0 5 10 0q�68   $��24��6J   $��24��6U   
���  ��6a   �� 5      -   5         ��Name$ averagePulseTextBlock��5      
�������$��24(�6J   $��0 0 10 0q�6Y   5      �� 5   
   $��2��6   $ 
Horizontal=�6"   $��0 20 0 0q�6;   .+�5      �� $J��DСредний показатель пульса за неделю: ��6   $��24(�6E   
�������6S     5       $ ArrowUp=�6$   $��0 5 10 0q�63   $��24��6E   $��24��6P   
���  ��6\   �� 5!      -   5        $ averageUpPressure��5!      
�������$��24(�6F   $��0 0 10 0q�6U     5"      $ 	ArrowDown=�6$   $��0 5 10 0q�65   $��24��6G   $��24��6R   
���  ��6^   �� 5#      -   5        $ averageDownPressure��5#      
�������$��24(�6H   $��0 0 10 0q�6W   5$      �� 5&   
   $��3��6   $ 
Horizontal=�6"   $��0 20 0 0q�6;   .+�5'      �� $H��BСредний показатель шагов за неделю: ��6   $��24(�6D   
�������6R     5(      $ 	FootPrint=�6$   $��0 5 10 0q�65   $��24��6G   $��24��6R   
���  ��6^   �� 5)      -   5        $ averageSteps��5)      
�������$��24(�6A   $��0 0 10 0q�6P   5*      � 5,   
   $��5��6   .+�5.   
   #   LiveCharts.Wpf.CartesianChart  -   5          Name$ chart��5.   A   &    LiveCharts.Wpf.Charts.Base.Chart   Series 6   �� *SeriesCollection+   AxisY 50         LiveCharts.Wpf.Axis     Title$ Шаги��6   	   MinValue$	 0Q�6N   
   LabelFormatter
 6(   �� *
YFormatter+6]      AxisX 53        $ Дата��6      Labels 6(   �� *Labels+6D   55      56      57      58      