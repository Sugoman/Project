   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	   ? ;Main, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:Main.Pages.AddDateWindowMain.Pages.AddDateWindow 5   	   ,   &Main.Pages.AddDateWindow.addDataWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	   8local&clr-namespace:Main.Pages.AddDateWindow     5   	     � Title$#  Добавить данные��5	   	   $	��400��6!   $	��290��6.    � 
ResizeMode$ NoResize=�6:    � 	Resources 5
         	BoolToVis��%   &	        �� 5   
   6'   5      .��5      � .+�5   
   �� ���#272B2F �� Padding$ 20q�6&   ���#CCCCCC$��1q�6I   ._�5      �  � RowDefinitions 5      �� 5      $
��Auto �6$   �� 5      $��* �6$   .+�5      �� $��30 0 0 -150q�6   $��Center=�61   ���#b0b9c6 J� IsHitTestVisible$ False��6a    K� ZIndex$ 2��5      $��120/80��6   y�6+   ��  �� ElementName$ textBoxPressure�� �� Path$ Text.IsEmpty�	 �� 	Converter#	 [  �� 5      $��30 0 0 -270q�6   $��Center=�61   ���#b0b9c6$ False��6a   $ 2��5      $��60��6   y�6   �� $ PulseTextBox��$ Text.IsEmpty�#	 [  �� 5      $#��Добавить данные��6   $��18(�63   $
��Bold"�6A   
�������$��Center=�5      $��0,0,0,20q�65   �� 5      $��1��6   $��15q�6*   .+�5      �� 
 �� Orientation$
 Vertical=�6!   .+�5      �� $*��$Давление (мм рт. ст.):��6$   $��14(�6B   ���#5555556P   �� 5       �� CornerRadius$ 10��6!   ���#AAAAAA$��1q�6I   ._�5      �� -   5         ��Name$ textBoxPressure��5   &   $��40��6?   $��10q�6K   
������ $��0q�6q     textBoxStyle#��[ 6�   
�������6�   5       5!      �� 5"      $
 Vertical=�6!   .+�5#      �� $ ��Пульс (уд./мин):��6$   $��14(�6<   ���#5555556J   �� 5$      $ 10��6!   ���#AAAAAA$��1q�6I   ._�5%      �� -   5        $ PulseTextBox��5%   &   $��40��6<   $��10q�6H   
������ $��0q�6n   
�������6�   5&      5'      �� 5(      $
 Vertical=�6!   .+�5)      �� $��	Дата:��6$   $��14(�61   ���#5555556?   �� 5*      $ 4��6!   ���#AAAAAA$��1q�6H   ._�5+      (  "System.Windows.Controls.DatePicker  -   5          Name$ DataDatePicker��5+   )   $��40��6A   $��10q�6M   
���  ��$��0q�6n   
 �� Now   SelectedDate# Z 5,   %   5-      5.      �� 5/      $
 
Horizontal=�6!   $��Right=�6:   $
��0 20q�6V   .+�50      �� -   5         ��Name$ cancelButton��50   !   $��Отмена��67   $	��100��6H   $��40��6T     CancelButtonStyle#��[ 6`   $	��1 0q�6�   6�   �� 51      -   5        $ 
saveButton��51   !   $��Сохранить��65   $	��100��6I   $��40��6U   ���#0078D7
�������  RoundedButtonStyle#��[ 52      $	��1 0q�6I   6V   53      54      55      56      57      58      