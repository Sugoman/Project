   M S B A M L   `   `   `  ����?  ;Main, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:Main.Pages.PressurePageMain.Pages.PressurePage  5      &     Main.Pages.PressurePage.Pressure   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      c _MahApps.Metro.IconPacks.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      Fmc;http://schemas.openxmlformats.org/markup-compatibility/2006   5      <d2http://schemas.microsoft.com/expression/blend/2008   5      3local%clr-namespace:Main.Pages.PressurePage   5        N� Title$  Pressure��5
       � 	Resources 5         	BoolToVis��%   &	        �� 5   
   6'   5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��65 �6   �� 5      $��3* �6   .+�5   
   � $	��400��6   $
��Left=�6   $��2��66   .+�5      �� $
��20 0q�6   $��Center=�6&   ���#b0b9c6 J� IsHitTestVisible$ False��6V    K� ZIndex$ 1��5      $��
Поиск��6)   y�66   ��  �� ElementName$ searchTextBox�� �� Path$ Text.IsEmpty� �� 	Converter# [  �� 5      -   5         ��Name$ searchTextBox��5        searchTextBox#��[ 6-   .  (MahApps.Metro.IconPacks.PackIconMaterial  5      	   Kind$	 Magnify=�6$   $��15��63   $��15��6>   $��Center=�6J   $��0 0 15 0q�5   $   ���#b0b9c6$��Right=�6K   5       �� 5!   
   $<��6 Показатели давления и пульса��6   $��1��69   $��32(�6F   $��SemiBold"�6T   $��0 20 0 0q�6j   $
��Left=�5"      ���#1215186/   �� 5$   
   $��1��6   
 �� Orientation$
 
Horizontal=�6"   $��Right=�6;   .+�5&   
   �� -   5         ��Name$ addDataButton��5&   5     	addButton#��[ 6   .��5'      �� $
 
Horizontal=�6   .+�5(        $
	 Plus=�6(   $��Center=�64   $��11��6O   $��11��6Z   $��0 1 8 0q�6f   �� 5)      $#��Добавить данные��6   5*      5+      �� 5-   
   -   5        $ reloadDataGridButton��5-   D     reloadButton#��[ 6   $��1��67   .��5.      �� $
 
Horizontal=�6   .+�5/        $	 Reload=�6(   $��Center=�66   $��11��6Q   $��11��6\   50      51      52      �� 54   
   $��1��6   $��1��6   ���#dae2ea$
��0 -1q�6A   $��Bottom=�6O   �� 56   
   $��Фильтр��6   $��2��6"   $��18(�6/   $��SemiBold"�6=   $��	0 0 215 0q�6S   ���#121518$��Right=�57   )   $��Center=�6E   � 59   
   $	��200��6   $��Right=�6   $��2��67   $��Center=�6D   .+�5:      (  "System.Windows.Controls.DatePicker  5;      �� 5=   
   $��1��6   $��2��6   ���#dae2ea$
��0 -1q�6A   $��Bottom=�6O   &   System.Windows.Controls.DataGrid  5@   
   -   5          Name$ pressureDataGrid��5@   �     DataGridStyle1#��[ 6     DataGridCellStyle1   	CellStyle# [ 6;     DataGridColumnHeaderStyle1   ColumnHeaderStyle# [ 6k     DataGridRowStyle1   RowStyle# [ 6�   $��3��6�   $��5q�6�      Columns 5A      0  *System.Windows.Controls.DataGridTextColumn  5D      ,  &System.Windows.Controls.DataGridColumn   Header$ Даваление��6%      
IsReadOnly$
 True��68      CanUserResize$ False��6J      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6`   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6j   �� *
Pressure+  5E      $ 
Пульс��6%   $
 True��64   $ False��6F   $ * 6\    6f   �� *	HeartRate+  5F      $ Дата��6%   $
 True��63   $ False��6E   $ * 6[    6e   �� *Date+4  .System.Windows.Controls.DataGridTemplateColumn  5H      $ Действия��6)   $
 True��6;   $ * 6M      CellTemplate 5I      �� 5J      .R�5K      �� $
 
Horizontal=�6)   .+�5M   "   �� $ 	DeleteRow��6)   -   5          gridRemoveButton#��[ 5M   <   .��5N   &     $	 DeleteOutline=�6<    	 gridButtonIcon#��[	 6Q   5O   #   5P      5Q      5S      5U      5V      5W      