   M S B A M L   `   `   `  ����?  ;Main, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:MainMain  5   	       Main.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Acontrols,http://metro.mahapps.com/winfx/xaml/controls     5   	   $localclr-namespace:Main     5   	     � Title$  Главный экран��5	   	   $	��900��6   $
��1440��6,   $	��480��69   $	��920��6I    � 	Resources 5
         
LabelStyle �� 
TargetType �� Property �� Value  ButtonStyle �� 
TargetType ��Name �� CornerRadius �� Triggers	 P� Property
 P� Value �� 
TargetName��%C  &	        &	 �     �� 5   
   " ��6#   .�5      ��  � ��$ beer money.ttf)�6+   �� 5       � ��$ 15(�6)   �� 5       � ��$	 Top=�62   5      �� 5   
   " ��6   .�5      ��  � ��$ Arial)�6+   �� 5       � ��$ 14(�6)   �� 5       � �� �#3333336+   �� 5       � �� �#E0E0E06+   �� 5       � �� �#CCCCCC6,   �� 5       � ��$ 1q�60   �� 5       � ��$
 10,5q�6(   �� 5       � ��$ Center=�6;   �� 5       � ��$ Center=�69   �� 5       � ��$ Stretch=�64   �� 5       � ��$ Center=�62   �� 5       � ��$ 40��6'   �� 5       � �� 5       �� 5!      " ��6&   .R�5"      � .+�5#      �� $ ButtonBorder��5$   !   #��z��5%   !   #��z��5&   !   #��z��5'   !   $ 8��5(   !   ._�5)   "   �� #��z��5*   %   #��z��5+   %   5,      5-       5.      P� 5/      	 �@J�IsMouseOver$

 True��6=   . �50   "   �� $ ButtonBorder��6)    � �� �#C0C0C06Y   51      P� 52      	 � ��$

 True��6;   . �53   "   �� $ ButtonBorder��6)    � �� �#A0A0A06Y   54      P� 55      	 � {�$
 False��6;   . �56   "   ��  � �� �#AAAAAA6?   �� 57   "    � �� �#F5F5F56?   58      5:      5<      5=      5>      .��5?      �  � ColumnDefinitions 5A   
   �� 5B      $��* �6   �� 5C      $��4* �6   .+�5E   
   ��  �� Orientation$ Vertical=�6   $��0��6,   .+�5F      �� -   5         ��Name$) #ChangeMainPageToPedometerPageButton��5F      $��10q�6B   $��Шагомер��6N   #��[ 6`   6�   �� 5G      $��10q�6   $��Статистика��6!   #��[ 66   �� 5H      $��10q�6   $��Бла-бла��6!   #��[ 63   �� 5I      $��10q�6   $��Бла-Бла��6!   #��[ 63   �� 5J      -   5        $$ ChangeMainPageToEditPageButton��5J      $��10q�6=   $0��*Просмотр таблицы шагов��6I   #��[ 6j   6�   5L      �� 5M   
   $��1��6   $��10q�6!   ._�5N       � -   5          �Name$ 	MainFrame��5N        � NavigationUIVisibility$ Hidden=�6'   5O      5Q      5R      