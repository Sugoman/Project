   M S B A M L   `   `   `  ����?  ;Main, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:Main.Pages.SettingsPageMain.Pages.SettingsPage  5      &     Main.Pages.SettingsPage.Settings   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      c _MahApps.Metro.IconPacks.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      <d2http://schemas.microsoft.com/expression/blend/2008   5      3local%clr-namespace:Main.Pages.SettingsPage   5        N� Title$  Settings��5
      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��90 �6   �� 5      $��90 �6   �� 5      $��7* �6   .+�5   
   ��  �� Orientation$ Vertical=�6   .+�5      �� $��Настройки��6   $��32(�6)   $��SemiBold"�67   $��	20 20 0 0q�6M   $
��Left=�5      ���#FFFFFF6/   �� 5      5      �� 5   
   $��1��6   $ 
Horizontal=�6"   .+�5      �� $��	Рост:��6   $��SemiBold"�6%   $��	20 15 0 0q�6;   $��32(�6N   $
��Left=�6\   ���#FFFFFF6w   �� 5       �� CornerRadius$ 10��6   ���#AAAAAA$��1q�6=   $��40��6Q   $	��100��6]   $
��Left=�6i   $��20q�6�   ._�5      �� -   5         ��Name$ humanHeightTextBox��5       �� TextAlignment$ Center=�6n   $��40��6�   $	��100��6�   $��10q�6�   
������ $��0q�6�      textBoxStyle#��[  6�   
�������$��24(�6  $��	ComicSans)�6  66  5      �� 5      -   5         ��Name$ saveHeightButton��5      $	��130��6/   $��40��6;     RoundedButtonStyle#��[ 6G   ���#6fa8dc.��5      �� $ 
Horizontal=�6   .+�5       .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ ContentSave=�6,   $��Center=�6?   $��16��6Z   $��16��6e   $��0 1 8 0q�6q   �� 5!      $��Сохранить��6    $��16(�61   5"      5#      5$      �� 5%   
   $��2��6   $ 
Horizontal=�6"   .+�5&      �� $��	Вес:  ��6   $��SemiBold"�6&   $��	20 15 0 0q�6<   $��32(�6O   $
��Left=�6]   ���#FFFFFF6x   �� 5'      $ 10��6   ���#AAAAAA$��1q�6=   $��40��6Q   $	��100��6]   $
��Left=�6i   $��15 20 20 20q�6�   ._�5(      �� -   5        $ humanWeightTextBox��5(      $ Center=�6n   $��40��6�   $	��100��6�   $��10q�6�   
������ $��0q�6�   #��[  6�   
�������$��24(�6  $��	ComicSans)�6  66  5)      �� 5*      -   5        $ saveWeightButton��5*      $	��130��6/   $��40��6;   #��[ 6G   ���#6fa8dc.��5+      �� $ 
Horizontal=�6   .+�5,        $ ContentSave=�6,   $��Center=�6?   $��16��6Z   $��16��6e   $��0 1 8 0q�6q   �� 5-      $��Сохранить��6    $��16(�61   5.      5/      50      �� 52   
   $��3��6   $ Vertical=�6"   $
��Left=�69   $	��500��6T   .+�53      �� $��Аллергии:��6   $��SemiBold"�6)   $��	20 15 0 0q�6@   $��Center=�6S   $��32(�6n   $
��Left=�6|   ���#FFFFFF6�   �� 54      $ 10��6   ���#AAAAAA$��1q�6=   $��50��6Q   $	��350��6]   $��Center=�6i   $��25 20 20 20q�6�   ._�55      �� -   5        $ humanAllergiesTextBox��55      $ Center=�69   $��50��6Q   $	��350��6]   $��10q�6i   
������ $��0q�6�   #��[  6�   ���#FFFFFF$��24(�6�   $��	ComicSans)�6�   56      �� 57      -   5        $ saveAllergiesButton��57      $	��130��62   $��40��6>   #��[ 6J   ���#6fa8dc.��58      �� $ 
Horizontal=�6   .+�59        $ ContentSave=�6,   $��Center=�6?   $��16��6Z   $��16��6e   $��0 1 8 0q�6q   �� 5:      $��Сохранить��6    $��16(�61   5;      5<      �� 5=      -   5         ��Name$ allergiesListBox��5=      $	��200��60   $	��450��6=   $��20q�6I   $��3��6U   $��Right=�6b   6~   5>      �� 5?   
   -   5        	 ��Name$	 Abobik��5?      $��1��6    $ ��/Pictures/Абобик.png��6-   $
��Fill=�6K   $��536,28,44,128q�6Z   $��3��6q   $	��400��6�   $	��500��6�   5@      5A      