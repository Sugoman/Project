   M S B A M L   `   `   `  ����?  ;Main, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:Main.Pages.PedometerPageMain.Pages.PedometerPage  5      U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5      (    "Main.Pages.PedometerPage.Pedometer   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8local&clr-namespace:Main.Pages.PedometerPage     5      Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     5        N� Title$  	Pedometer��5
      .��5      �  � RowDefinitions 5   
   �� 5      $��5* �6   �� 5      $��* �6   .+�5   
   #  LiveCharts.Wpf.CartesianChart  -   5          Name$ chart��5   A   &   LiveCharts.Wpf.Charts.Base.Chart   Series 6   �� *SeriesCollection+   AxisY 5        LiveCharts.Wpf.Axis     Title$ Шаги��6      MinValue$ 0Q�6N      LabelFormatter 6(   �� *
YFormatter+6]      AxisX 5        $ Дата��6   	   Labels	 6(   �� *Labels+
   MaxValue
 6B   �� 6Z   5      �� 5   
   $��1��6    �� Orientation$ 
Horizontal=�6"   $��Center=�6;   .+�5      �� $��1��6   $ Vertical=�6&   $��Center=�6=   .+�5   
   �� $
��От��6   $��Center=�6   $��Center=�6;   
�������$��DemiBold"�6i   (  "System.Windows.Controls.DatePicker  5      -   5          Name$ StartDatePicker��5      $��
15 2 15 15q�62   $��Center=�6F      DisplayDateStart 	5/20/20246�      DisplayDateEnd 
11/26/20246�      SelectedDate 6a   �� *SelectedStep.Date+ �� Mode$ TwoWay=�6�   5      �� 5      $��1��6   $ Vertical=�6&   $��Center=�6=   .+�5       �� $
��До��6   $��Center=�6&   $��Center=�6C   
�������$��DemiBold"�6q     5!      -   5        $ EndDatePicker��5!      $��
15 2 15 15q�64   $��Center=�6H    	5/20/20246�    
11/26/20246�    6c   �� *SelectedStep.Date+$ TwoWay=�6�   5"      5#      5$      5%      