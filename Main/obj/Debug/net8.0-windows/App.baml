   M S B A M L   `   `   `  ����?  ;Main, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:MainMain  5      b ^PresentationFramework.Aero2, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35hKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2Microsoft.Windows.Themes 5          Main.App   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      c _MahApps.Metro.IconPacks.Core, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137ag cMahApps.Metro.IconPacks.Material, Version=5.0.0.0, Culture=neutral, PublicKeyToken=0c0d510f9915137a:Icon-http://metro.mahapps.com/winfx/xaml/iconpacks   5       localclr-namespace:Main   5      YthemeKclr-namespace:Microsoft.Windows.Themes;assembly=PresentationFramework.Aero2   5        �� 	Resources  5         
LabelStyle �� 
TargetType �� Property �� Value  ColumnHeaderGripperStyle �� 
TargetType �� Padding �� Color �� 
ResourceId �� TypeInTargetAssembly&   System.Windows.Controls.DataGrid	 ��Name
 J� SnapsToDevicePixels �Name J� Opacity � Points �� Stretch �� Triggers P� Property P� Value �� 
TargetName  DataGridStyle15  /System.Windows.Controls.DataGridLengthConverter ��Name � ColumnDefinitions � RowDefinitions   SelectAllCommand7  1System.Windows.Controls.DataGridHeadersVisibility
   All �� ConverterParameter!   HeadersVisibilityConverter �� 	Converter �� RelativeSource �� AncestorTypeG  ASystem.Windows.Controls.Primitives.DataGridColumnHeadersPresenter  Name   Column ��Name  �� CanContentScroll! ��Name" �� ScrollableHeight# � Maximum$ �� Orientation% �� ViewportHeight& �� ViewportSize*' �� #ComputedVerticalScrollBarVisibility( � Value) �� Mode* �� Mode+ �� ScrollableWidth, �� ViewportWidth,- �� %ComputedHorizontalScrollBarVisibility. �� Triggers/ ]� 
Conditions0 �� Property1 �� Value  DataGridCellStyle1*  $System.Windows.Controls.DataGridCell  DataGridColumnHeaderStyle1=  7System.Windows.Controls.Primitives.DataGridColumnHeader3  -Microsoft.Windows.Themes.DataGridHeaderBorder2   	IsPressed3 J� IsMouseOver4   	IsHovered5   CanUserSort6   IsClickable7   SortDirection8   SortDirection9   SeparatorVisibility:   SeparatorVisibility;   SeparatorBrush<   SeparatorBrush= n�Name  DataGridRowStyle1)  #System.Windows.Controls.DataGridRow> ��Name? �� CornerRadius?	  9System.Windows.Controls.Primitives.SelectiveScrollingGrid?
  9System.Windows.Controls.Primitives.DataGridCellsPresenter@   
ItemsPanelA  ;System.Windows.Controls.Primitives.DataGridDetailsPresenterA   DetailsVisibility$B 	  SelectiveScrollingOrientation;  5System.Windows.Controls.SelectiveScrollingOrientationC   Vertical#D   RowDetailsScrollingConverter:  4System.Windows.Controls.Primitives.DataGridRowHeader
E   Row  ButtonStyle  	addButton  reloadButton 	 searchTextBox 
 CustomCalendarStyle&   System.Windows.Controls.Calendar5  /System.Windows.Controls.Primitives.CalendarItemF  Name(  "System.Windows.Controls.DatePickerG ��NameH �� 
IsReadOnlyI �� PathJ �� StringFormatK ��NameL �NameM � 	StaysOpenN  NameO   SelectedDate  gridEditButton  gridRemoveButtonP �� BasedOn  gridButtonIcon.  (MahApps.Metro.IconPacks.PackIconMaterial  RoundedButtonStyle  CancelButtonStyle  textBoxStyle��%�7  &	        &	 m     (�� �    5      *DataGrid.FocusBorderBrushKey+)(�� �    5      $" DataGridSelectAllButtonStyle��"  )&	 �    &	 u    &	 c    7  7  &	 �    &	     &	 �    &	 X!    &		 $    &	
 l'    '   )    &	 �-    &	 �/    7  &	 �0    &	 �1    &	 �2    &	 A4    �� 5
   
   " ��6#   .�5      ��  � ��$ 15(�6)   �� 5       � ��$	 Top=�62   5      �� 5   
   " n�61   .�5      ��  � ��$ Center=�62   �� 5       � ��
 ���� 6+   �� 5       � �� �#69717d6+   �� 5       � ��$ 
15 0 15 10q�6'   �� 5       � �� 5      �� 5      " n�6&   .R�5      �� #��z��6!   # z��6K   5      5      5      �� 5   
   $ 	#FF000000��6J   �� 5   
   " ��6   .�5      ��  � �� 5       �� 5!      " ��6&   .R�5"      � .+�5#      �� $	 Border��6(   #��� ��68   $

 True��6y   � 5$      $ Arrow��6&   
���   �$��Right=�6B   $��8,8,3,3q�6^   $
 0.15Q�6o    �   ��� ��� ��� ��� $ Uniform=�6�   $��Bottom=�6�   5%       5&      P� 5'       �@J�IsMouseOver$
 True��6=   . �5(   "   �� $ Border��6;   # � ��6O    � ��5)      P� 5*       � ��$
 True��6;   . �5+   "   �� $ Border��69   # � ��6M    � ��5,      P� 5-       � {�$ False��6;   . �5.   "   �� $ Arrow��6?    � y�$ 	Collapsed=�6R   5/      51      53      54      �� 55   
   "  6'   .�56      ��  � ��
 ���� 6+   �� 57       � �� �#2225286+   �� 58       � ��$ 0q�60   �� 59        �@ RowDetailsVisibilityMode$ VisibleWhenSelected=�69   �� 5:       � ��$
 true��6>   �� 5;       �@��PanningMode$
 Both=�69   �� 5<       �@��IsFlicksEnabled$ False��67   �� 5=       �@ AutoGenerateColumns$ False��64   �� 5>       �@ HeadersVisibility$ Column=�62   �� 5?       � ��$ 0 10 0 0q�6'   �� 5@       �@ SelectionMode$ Single=�6.   �� 5A       �@ SelectionUnit$ FullRow=�6.   �� 5B       �@ CanUserAddRows$ False��6/   �� 5C       �@ CanUserDeleteRows$ False��62   �� 5D       �@ CanUserResizeRows$ False��62   �� 5E       �@ CanUserReorderColumns$ False��66   �� 5F       � ��$ 13(�6)   �� 5G       �@ ColumnWidth$ * 6,   �� 5H       �@ GridLinesVisibility$
 None=�64   �� 5I       � �� 5J      �� 5K      "  6&   .R�5L      �� #��z��6!   $��0q�6K   # z��6_   $

 True��6�   ._�5M      �� $ DG_ScrollViewer��6+   $|�false��6D   ��5N   "   �� 5O   &   " ��66   .R�5P   *   �  5Q   .   �� 5R   2   $
��Auto �6C   �� 5S   2   $��* �6C   �� 5T   2   $
��Auto �6C    5V   .   �� 5W   2   $
��Auto �6@   �� 5X   2   $��* �6@   �� 5Y   2   $
��Auto �6@   .+�5[   .   �� #��Z 65   $|�false��6d   ��6v   C� *�� $" DataGridSelectAllButtonStyle��"  +y�6�   �� *HeadersVisibility+# Z # Z  �� "  ��6�  �� *CellsPanelHorizontalOffset+ �� "    5\   .   $! PART_ColumnHeadersPresenter��6M   $��1��6r   y�6�   �� *HeadersVisibility+# Z # Z  �� "  �� 5]   .   $! PART_ScrollContentPresenter��6E   #  z��6j   $��2��6�   $��1��6�   �� 5^   .   $! PART_VerticalScrollBar��68   $��2��6X   ## z" 6h   $$ Vertical=�6�   $��1��6�   #& z% 6  #y�z' 6M  ( 6�   �� *VerticalOffset+$) OneWay=� �� $* TemplatedParent=�6M  � 5_   .   $��1��63   $��2��6C    5`   2   �� 5a   6   ��6G   �� **(NonFrozenColumnsViewportHorizontalOffset+ �� "  �� 5b   6   $��* �6G   .+�5d   2   �� $! PART_HorizontalScrollBar��6<   $��1��6^   ## z+ 6n   $$ 
Horizontal=�6�   #& z, 6  #y�z- 6H  ( 6�   �� *HorizontalOffset+$) OneWay=� �� $* TemplatedParent=�6H  5e   /   5f   +   5g   '   .��5i   "   �� #
 z
 61   5j      5k      5l      5n      . 5o      ]� 5p      / 5q      �� 5r      0 �@��
IsGrouping$
1 true��6:   �� 5s      "0 �@%�IsVirtualizingWhenGrouping$1 false��6\   ./�5u      ��  � ��$ false��6F   5v      5x      �� 5y   
   "  6+   .�5z      ��  � ��
 ���� 6+   �� 5{       � ��
 �   �6+   �� 5|       � ��$ 20(�6)   �� 5}       � ��$ DemiBold"�6+   �� 5~       � ��$ Center=�62   �� 5       �@�FocusVisualStyle 61   Z� �� 5�       � ��$
 15 0q�6'   �� 5�       � �� 5�      �� 5�      "  6&   .R�5�      �� #��z��6!   $��0q�6K   $

 True��6_   ._�5�      �� #
 z
 6/   5�      5�      5�      5�      �� 5�   
   "  63   .�5�      ��  � ��$ Center=�69   �� 5�       � ��
 ���� 6+   �� 5�       � ��
 �   �6+   �� 5�       � ��$
 15 2q�6'   �� 5�       � �� 5�      �� 5�      "  6&   .R�5�      � .+�5�        #��z��69   $��0q�6c   #2 z��6w   #4 z3 6�   #6 z5 6�   # z��6�   #8 z7 6  #: z9 6I  #< z; 6�  ._�5�   "   �� #��z��63   $
��True��6v   #
 z
 6�   #��z��6�   5�      n� 5�      $= PART_LeftHeaderGripper��6$   $
��Left=�6D   8��  6_   n� 5�      $= PART_RightHeaderGripper��6$   $��Right=�6E   8�� 6a   5�      5�      5�      5�      �� 5�   
   "  6*   .�5�      ��  � ��
 �����6+   �� 5�       � ��
 �   �6+   �� 5�       � ��$ 0 4 0 0q�6'   �� 5�       �@J�SnapsToDevicePixels$
 true��64   �� 5�       �@=�ErrorTemplate 69   Z� �� 5�       �@ ValidationErrorTemplate 5�      �� 5�      .R�5�      �� 
���  ��$��2,0,0,0q�65   $��!��6F   $��Center=�6O   5�      5�      �� 5�       � �� 5�      �� 5�      "  6&   .R�5�      �� $> 
DGR_Border��6!   $	 0 8q�65   #��z��6C   $��0q�6n   $? 5��6�   $

 True��6�   ._�5�      	   5�   "   �� 5�   &   $
��Auto �67   �� 5�   &   $��* �67    5�   "   �� 5�   &   $��* �64   �� 5�   &   $
��Auto �64   .+�5�   "   
  $��1��69   #��z@ 6I   #
 z
 6s     5�   "   $��1��6;   $��1��6K   #y�zA 6o  B 6X   �� *AreRowDetailsFrozen+# ZC # ZD  �� "  6o    5�   "   $��2��64   $B Vertical=�6E   y�6�   �� *HeadersVisibility+# ZE # Z  �� "  5�      5�      5�      5�      . 5�      P� 5�       �@J�IsMouseOver$
 True��61   . �5�      ��  � �� �#623ed063   �� 5�       � �� �#ffffff63   5�      P� 5�       �@ 
IsSelected$
 True��60   . �5�      ��  � �� �#623ed063   �� 5�       � �� �#ffffff63   5�      ]� 5�      / 5�      �� 5�      0 �@ 
IsSelected$
1 True��6:   �� 5�      0 �@��IsSelectionActive$1 False��6J   ./�5�      ��  � �� �#dfdfdf63   5�      5�      �� 5�   
   " ��6   .�5�      ��  � ��$ Arial)�6+   �� 5�       � ��$ 14(�6)   �� 5�       � �� �#3333336+   �� 5�       � �� �#E0E0E06+   �� 5�       � �� �#CCCCCC6,   �� 5�       � ��$ 1q�60   �� 5�       � ��$
 10,5q�6(   �� 5�       � ��$ Center=�6;   �� 5�       � ��$ Center=�69   �� 5�       � ��$ Stretch=�64   �� 5�       � ��$ Center=�62   �� 5�       � ��$ 40��6'   �� 5�       � �� 5�      �� 5�      " ��6&   .R�5�      � .+�5�      �� $> ButtonBorder��5�      #��z��5�      #��z��5�      #��z��5�      $? 8��5�      ._�5�   "   �� #��z��5�      #��z��5�      5�      5�       5�      P� 5�       �@J�IsMouseOver$
 True��6=   . �5�   "   �� $ ButtonBorder��6)    � �� �#C0C0C06Y   5�      P� 5�       � ��$
 True��6;   . �5�   "   �� $ ButtonBorder��6)    � �� �#A0A0A06Y   5�      P� 5�       � {�$ False��6;   . �5�   "   ��  � �� �#AAAAAA6?   �� 5�   "    � �� �#F5F5F56?   5�      5�      5�      5�      �� 5  
   " ��6"   .�5     ��  � �� �#6741d96+   �� 5      � ��
 �����6+   �� 5      �@�FocusVisualStyle 61   Z� �� 5      � ��$	 150��6&   �� 5      � ��$ 35��6'   �� 5      � ��$ Right=�64   �� 5	      � ��$ 0 20 0 0q�6'   �� 5
      � ��$ 13(�6)   �� 5      � �� 5     �� 5     " ��6&   .R�5     �� #��z��6!   $? 7��6K   ._�5     �� $��Center=�6/   $��Center=�6L   5     5     5     . 5     P� 5      �@J�IsMouseOver$
 True��61   . �5     ��  � �� �#7b5cd663   �� 5      � �� �#ffffff63   5     5     �� 5  
   " ��6%   .�5     ��  � �� �#6741d96+   �� 5      � ��
 �����6+   �� 5      �@�FocusVisualStyle 61   Z� �� 5       � ��$ 35��6&   �� 5!      � ��$ 35��6'   �� 5"      � ��$ Right=�64   �� 5#      � ��$ 0 20 0 0q�6'   �� 5$      � ��$ 13(�6)   �� 5%      � �� 5&     �� 5'     " ��6&   .R�5(     �� #��z��6!   $? 7��6K   ._�5)     �� $��Center=�6/   $��Center=�6L   5*     5+     5-     . 5/     P� 50      �@J�IsMouseOver$
 True��61   . �51     ��  � �� �#7b5cd663   �� 52      � �� �#ffffff63   53     55     �� 58  
   " ��6&   .�59     ��  � �� �#ffffff6+   �� 5:      � �� �#b0b9c66+   �� 5;      � ��$ 0q�60   �� 5<      � ��$ 12(�6)   �� 5=      � ��$ 15 10q�6(   �� 5>      � ��$ Center=�62   �� 5?      � ��$
 0 10q�6'   �� 5@      � �� 5A     �� 5B     " ��6&   .R�5C     �� $> border��6!   $? 20��61   #��z��6C   $

 True��6m   $��1q�5D  !   ���#e0e6ed._�5E     �� $ PART_ContentHost��6+   $|�False��6E   $��Hidden=�6W   $��Hidden=�5F  +   5I      5J     P� 5K      �@J�IsMouseOver$
 True��6=   . �5L  "   �� $ border��6P    � �� �#d9d9d95M     P� 5O      �@J�IsKeyboardFocused$
 True��6C   . �5P  "   �� $ border��6P    � �� �#d9d9d95Q     5S     5U     5V     �� 5Y  
   "  6,   .�5Z     ��  � ��
 �����6,   �� 5[      � ��$ 1q�60   �� 5\      � ��
 �����6+   �� 5]      � ��$ Segoe UI)�6+   �� 5^      � ��$ 14(�6)   �� 5_      � �� 5`     �� 5a     "  6&   .R�5b     �� #��z��6!   #��z��6M   #��z��6�   ._�5c     �� .+�5e  "     $F PART_CalendarItem��6/   5f     5g     5h     5j     5k     �� 5m  
   "  6   .�5n     ��  � ��$ Segoe UI)�6+   �� 5o      � ��$ 14(�6)   �� 5p      � �� 5q     �� 5r     "  6&   .R�5s     �  5t     �� 5u  "   $��* �63   �� 5v  "   $��40 �63   .+�5z     �� $G PART_TextBox��6&   $��Center=�5|  &   $��5q�5}  &   
�������
�������$��0q�5�  &   
���   �$
H True��5�  &   $��90��5�  &   ��5{  &   �� $I SelectedDate� �� *TemplatedParent+$J 
dd/MM/yyyy��5�  &   �� 5�     $K PART_Button��6%   $��1��5�  %   $��Center=�5�  %   
�������$��0q�5�  %   $��5q�5�  %   $��30��5�  %   .��5�  "   F� =����     	= � z  	= � 	=     �    ��[ � z ��[ � 	= ��� 	
���   �$ Uniform=�5�  '   $��10��5�  '   $��10��62   5�     � 5�     $L 
PART_Popup��6$   $��Bottom=�68   $M False��6K   ��6]   �� *IsDropDownOpen+ �� *TemplatedParent+.��5�  "   �� 
�������$��0q�6A   
�������._�5�  &     $N PART_Calendar��6/   O 5�  /   �� $I SelectedDate� �� *TemplatedParent+5�  #   5�     5�     5�     5�     5�     �� 5�  
   " ��6'   .�5�     ��  � �� �#512da86+   �� 5�      � �� �#4a148c6,   �� 5�      � �� �#ffffff6+   �� 5�      �@�FocusVisualStyle 61   Z� �� 5�      � ��$ Center=�62   �� 5�      � �� 5�     �� 5�     " ��6&   .R�5�     �� #��z��6!   $? 5��6K   $ 5q�6\   $��0q�6h   ._�5�     �� $��Center=�6/   $��Center=�6L   5�     5�     5�     . 5�     P� 5�      �@J�IsMouseOver$
 True��61   . �5�     ��  � �� �#673ab763   5�     5�     �� 5�  
   " ��6)   8P   .�5�     ��  � �� �#d32f2f6+   �� 5�      � �� �#b71c1c6,   �� 5�      � �� �#ffffff6+   . 5�     P� 5�      �@J�IsMouseOver$
 True��61   . �5�     ��  � �� �#f4433663   5�     5�     �� 5�  
   "  6'   .�5�     ��  � ��$ 20��6&   �� 5�      � ��$ 20��6'   �� 5�      � ��$ Center=�62   5�     �� 5�  
   " ��6+   .�5�     ��  � �� 5�     �� 5�     " ��6&   .R�5�     �� $? 10��6!   #��z��63   $��0q�5�     $ 5q�61   $��0q�6=   ._�5�     �� $��Center=�6/   $��Center=�6L   5�     5�     5�     5�     �� 5�  
   " ��6*   .�5�     ��  � �� 5�     �� 5�     " ��6&   .R�5�     �� $? 10��6!   #��z��63   $��0q�6]   ._�5�     �� $��Center=�6/   $��Center=�6L   5�     5�     5�     �� 5�      � �� �#CCCCCC6+   �� 5�      � ��
 �����6+   . 5�     P� 5�      �@J�IsMouseOver$
 True��61   . �5�     ��  � �� �#df616163   5�     5�     �� 5�  
   " ��6%   .�5�     ��  � �� �#ffffff6+   �� 5�      � �� �#b0b9c66+   �� 5�      � ��$ 0q�60   �� 5�      � ��$ 12(�6)   �� 5�      � ��$ Center=�62   �� 5�      � �� 5�     �� 5�     " ��6&   .R�5�     �� $ PART_ContentHost��6'   $|�False��6A   $��Hidden=�6S   $��Hidden=�5�  #    5�     P� 5�      �@J�IsMouseOver$
 True��6=   . �5�  "   ��  � �� �#d9d9d96@   5�     P� 5�      �@J�IsKeyboardFocused$
 True��6C   . �5�  "   ��  � �� �#d9d9d96@   5�     5�     5     5     5     5     