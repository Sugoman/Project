   M S B A M L   `   `   `  ����?  ;Main, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:Main.Pages.SettingsPageMain.Pages.SettingsPage  5      &     Main.Pages.SettingsPage.Settings   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      c _MahApps.Metro.IconPacks.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5      <d2http://schemas.microsoft.com/expression/blend/2008   5      3local%clr-namespace:Main.Pages.SettingsPage   5        N� Title$  Settings��5
      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5   
   ��  �� Orientation$ Vertical=�6   .+�5      �� $��Настройки��6   $��32(�6)   $��SemiBold"�67   $��	20 20 0 0q�6M   $
��Left=�5      ���#1215186/   �� 5      5      �� 5   
   $��1��6   $ 
Horizontal=�6"   .+�5      �� $��	Рост:��6   $��SemiBold"�6%   $��	20 15 0 0q�6;   $��32(�6N   $
��Left=�6\   ���#1215186w   �� 5       �� CornerRadius$ 10��6   ���#AAAAAA$��1q�6=   $��40��6Q   $	��100��6]   $
��Left=�6i   $��20q�6�   ._�5      �� -   5         ��Name$ humanHeightTextBox��5       �� TextAlignment$ Center=�66   $��40��6N   $	��100��6Z   $��10q�6f   
������ $��0q�6�      textBoxStyle#��[  6�   
���   �$��24(�6�   $��	ComicSans)�6�   5      �� 5      -   5         ��Name$ 
saveButton��5      $	��130��6)   $��40��65     RoundedButtonStyle#��[ 6A   ���#6fa8dc.��5       �� $ 
Horizontal=�6   .+�5!      .  (MahApps.Metro.IconPacks.PackIconMaterial     Kind$ ContentSave=�6,   $��Center=�6?   $��16��6Z   $��16��6e   $��0 1 8 0q�6q   �� 5"      $��Сохранить��6    $��16(�61   5#      5$      5%      5&      5'      