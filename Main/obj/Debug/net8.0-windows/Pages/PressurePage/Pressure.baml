   M S B A M L   `   `   `  ����?  ;Main, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:Main.Pages.PressurePageMain.Pages.PressurePage  5      &     Main.Pages.PressurePage.Pressure   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      c _MahApps.Metro.IconPacks.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      Fmc;http://schemas.openxmlformats.org/markup-compatibility/2006   5      <d2http://schemas.microsoft.com/expression/blend/2008   5      3local%clr-namespace:Main.Pages.PressurePage   5        N� Title$  Pressure��5
       � 	Resources 5         	BoolToVis��%   &	        �� 5   
   6'   5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��65 �6   �� 5      $��3* �6   .+�5   
   �� $<��6 Показатели давления и пульса��6   $��1��69   $��32(�6F   $��SemiBold"�6T   $��20q�6j   $
��Left=�5      ���#FFFFFF6/   �� 5   
   $��1��6    �� Orientation$ 
Horizontal=�6"   $��Right=�6;   .+�5   
   �� -   5         ��Name$ addDataButton��5   5     	addButton#��[ 6   $��1q�6h   .��5      �� $ 
Horizontal=�6   .+�5       .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$
 Plus=�6(   $��Center=�64   $��11��6O   $��11��6Z   $��0 1 8 0q�6f   �� 5!      $#��Добавить данные��6   5"      5#      �� 5%      -   5        $ reloadDataGridButton��5%   H     reloadButton#��[ 6   $��1��6;   $��1q�6�   .��5&      �� $ 
Horizontal=�6   .+�5'        $ Reload=�6(   $��Center=�66   $��11��6Q   $��11��6\   5(      5)      5*      �� 5,   
   $��1��6   $��1��6   ���#dae2ea$
��0 -1q�6A   $��Bottom=�6O   &   System.Windows.Controls.DataGrid  51   
   -   5          Name$ pressureDataGrid��51       DataGridStyle1#��[ 6     DataGridCellStyle1   	CellStyle# [ 6;     DataGridColumnHeaderStyle1   ColumnHeaderStyle# [ 6k     DataGridRowStyle1	   RowStyle#	 [ 6�   $��2��6�   $��2��6�   $��5q�6�   
   Columns
 52      0  *System.Windows.Controls.DataGridTextColumn  55      ,  &System.Windows.Controls.DataGridColumn   Header$ Даваление��6%      
IsReadOnly$
 True��68      CanUserResize$ False��6J      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6`   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6j   �� *
Pressure+  56      $ 
Пульс��6%   $
 True��64   $ False��6F   $ * 6\    6f   �� *	HeartRate+  57      $ Дата��6%   $
 True��63   $ False��6E   $ * 6[    6e   �� *Date+4  .System.Windows.Controls.DataGridTemplateColumn  59      $ Действия��6)   $
 True��6;   $ * 6M      CellTemplate 5:      �� 5;      .R�5<      �� $ 
Horizontal=�6)   .+�5>   "   �� $ 	DeleteRow��6)   -   5          gridRemoveButton#��[ 5>   <   .��5?   &     $ DeleteOutline=�6<     gridButtonIcon#��[ 6Q   5@   #   5A      5B      5D      5F      5G      5H      