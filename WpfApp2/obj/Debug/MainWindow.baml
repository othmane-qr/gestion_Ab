   M S B A M L   `   `   `  ����B  >WpfApp2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp2WpfApp2  5   	       WpfApp2.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp2     5   	   b ^MaterialDesignThemes.Wpf, Version=3.2.0.1979, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   
     � WindowStyle$
  None=�5	   
   ���#007bff$��4q�5   	      MaterialDesignBody#���   5   	     MaterialDesignPaper#���  5   	    � Title$ 
MainWindow��5   	   $	��650��6   $
��1080��6)    � 
ResizeMode$ NoResize=�66   .��5      � 
������� � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��29.612 �6   �� 5      $��173.6 �6   �� 5      .+�5   
   � $��Stretch=�6   $��1��6-   ���	#FF007BFF$��2��6Q   $��-1,0,56.2,0q�6e    5      �� 5      $��0 �6    �� 5      .+�5      �� $
��Left=�6   $��47��6/   $	��Top=�6;   $	��126��6S   $��2��6_   $��Logo6-06.png��6p   5       � 5!   
   -   5        $��2��5!      $��1��6   $��3.8,51,2,12.4q�6,   
������� 5"      �� 5#      $
��191* �6    �� 5$      $
��196* �6     5&      �� 5'      $	��32* �6#   �� 5(      $
��260* �6#   �� 5)      $	��32* �6#   �� 5*      $	��55* �6#   �� 5+      $
��372* �6#   �� 5,      $��2* �6#   �� 5-      $	��39* �6#   �� 5.      $	��71* �6#   .+�50      �� $��0,-52,11.2,-0.6q�6   $��2��62   $��6��6C   $��2��6S   $��Right=�6g   $��80��6�   .+�51      �� -   5         ��Name$ btnExit��51      $��20,10q�6*    & "MaterialDesignFloatingActionButton#��[ 69   $
��Auto��6�   $��37��6�    � ToolTip$ Close��52      ���	#FF007BFF��51   u   Z� .��53      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�6.   $��20��6<   $��20��6G   54      55      �� 56      -   5        $��Affiché les absences��56      $
��Left=�64   $��
55,133,0,0q�6O   $	��Top=�6c   $	��164��6{   ���	#FF010305$��3��6�   $��2��6�   &   System.Windows.Controls.DataGrid  57      -   5          Name$ dg��57   K   	   CanUserAddRows	 .  
   AutoGenerateColumns
 .  $��-53,181,151.2,56.4q�6W   
����������	#FF06070A���	#FF007BFF   HorizontalGridLinesBrush �	#DD161515 J� OpacityMask �	#FF353740   VerticalGridLinesBrush �	#DD050505   HeadersVisibility$	 All=�6.   �� IsTextSearchEnabled . $��5��6a  $��2��6u     Columns 58      0  *System.Windows.Controls.DataGridTextColumn  59      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6)      
Visibility$ Hidden=�6V      
Foreground �	#FF007BFF1  +System.Windows.Controls.DataGridBoundColumn   Binding 65   �� *[Student Id]+6j     5:      $ 	Full Name��6)    6<   �� *[Full Name]+  5;      $
 Date��6)    67   �� *[Date]+  5<      $ Description��6)    6?   �� *[Description]+  5>      $ 
Class Name��6)    6>   �� *[Class Name]+4  .System.Windows.Controls.DataGridTemplateColumn  5?      $ IsJustified��6.      CellTemplate 5@      �� 5A      .R�5B   "   �� -   5        $�� ��5B   -   $
��Left=�68   $	��Top=�6U   6�   5C      5E        5G         Width5  /System.Windows.Controls.DataGridLengthConverter$	 125 6-   -   5        
action��$ Action��5G   I    5I      �� 5J      .R�5K   "   �� $
 Send��6)   -   5        $
��Send��5K   7   $��80��6F   ���	#FF2196F3
���������6h   Z� 6�   5L      5N      5Q      �� 5S      -   5         ��Name$ combo_class��5S      $
��Left=�6,   $��
10,133,0,0q�6G   $	��Top=�6[   $	��161��6s   $��32��6�   $��1��6�    �� 
IsEditable . ���	#FF2196F3��6   Z� .@�5T      �� $	��All��6    �� 5U      $��c#��6    �� 5V      $	��JEE��6    �� 5W      $
��FEBE��6    �� 5X      $��classe1��6    �� 5Y      $��classe2��6    �� 5Z      $��classe3��6    �� 5[      $��classe4��6    5]      �� 5^      -	   5         ��Name$
 desc��5^      $
��Left=�6&   $��29��6A   $��0,242.4,0,0q�6M    �� TextWrapping$
 Wrap=�6b   $�� ��6v   $	��Top=�6~   $	��269��6�   $��2��6�   $��1��6�   $��3��6�   �� 5_      $
��Left=�6   $��21,247.4,0,0q�63   $
��Wrap=�6I   $��description��6]   $	��Top=�6p   $��29��6�   $	��167��6�   $��18(�6�   $��1��6�   $��2��6�   �� 5a      $��242.8,239,1.6,0q�6   $��2��62   $��4��6C   $��4��6S   $	��336��6g   $	��Top=�6t   .+�5b      &   System.Windows.Controls.Calendar     DisplayMode$ Month=�6   $	��335��6/   $��
0,0,-1.2,0q�6<   5d      5j      5l      5m      