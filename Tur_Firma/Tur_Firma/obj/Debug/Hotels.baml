   M S B A M L   `   `   `  ����D  @Tur_Firma, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:Tur_Firma	Tur_Firma  5   	       Tur_Firma.Hotels   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:Tur_Firma     5   	     � Title$  Hotels��5   	   $��479.6��6   $	��800��6'   .��5	      � $��0,0,-0.4,0.4q�6    � RowDefinitions 5
   
   �� 5      $	��90* �6   �� 5      $	��26* �6   �� 5      $
��267* �6   �� 5      $��44 �6   �� 5      $��22 �6   �� 5      $��0 �6   .+�5   
   � ���#bae3e8$��
0,0,0.4,23q�6$   $��0��68   $��2��6E   �� 5   
   $��
Отели��6   $��354,27,363.4,26q�6!   $��Center=�6:   $��Center=�6U    �� TextAlignment$ Right=�6r   $��Comic Sans MS)�6�   $��24(�6�   $��75��6�   $��37��6�   �� 5   
   -   5         ��Name$ BtnTours��5      $��Туры��6#    � ToolTip$/ )Перейти на форму туров��62   $��Center=�6S   $��Right=�6n   $��Comic Sans MS)�6�   $��18(�6�   $��0,32,10.4,31q�6�   ���	#FFFAC716$��27��6�    J� RenderTransformOrigin$ 0.5,0.5&�6  $	��120��6$  �� 5   
   $��0,0,0,23q�6   $��0��6"   $
��Fill=�6/   $��Center=�6>   $
��Left=�6Y   $	��140��6t   $��93��6�   $��2��6�   ��5      ��5      Resources/Лого.png��62   5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ DGridHotels��5         AutoGenerateColumns .     
IsReadOnly . $��	0,1,0.4,0q�6V   $��2��6i   $��1��6z   $��Comic Sans MS)�6�   $
��Bold"�6�   	   Columns	 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn
   Header$!
 Название отеля��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 6V      
FontFamily$ Comic Sans MS)�6`      FontSize$ 14Q�6{   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6=   �� *Name+6�     5      $%
 Количество звёзд��6%   $ * 6`   $ Comic Sans MS)�6j   $ 14Q�6�    6?   �� *CountOfStars+6�     5       $
 Страна��6%   $ * 6V   $ Comic Sans MS)�6`   $ 14Q�6{    65   �� *Country.Name+6�     5!      $%
 Количество туров��6%   $ * 6`   $ Comic Sans MS)�6j   $ 14Q�6�    6?   �� *CountOfTours+6�   4  .System.Windows.Controls.DataGridTemplateColumn  5"      $
 auto 6)      CellTemplate 5#      �� 5$      .R�5%      �� $��BtnEdit��6o   -   5        $ ��Редактировать��5%   %   $N HПерейти к редактированию данного отеля��6=   $	��150��6�   $��Comic Sans MS)�6�   $��14(�6�   ���#fac7166�   5&      5(      5*      �� 5,   
   -   5        $��BtnAdd��5,   �   $D >Перейти к добавлению нового отеля��6   $��Comic Sans MS)�6=   $��14(�6X   $��Добавить��6f   $��3��6y   $
��Left=�6�   $��
10,10,0,10q�6�   $	��130��6�   ���	#FFFAC7166�   �� 5-   
   -   5        $��	BtnDelete��5-   �   $L FНажмите для удаления выбранных отелей��6   $��Comic Sans MS)�6A   $��14(�6\   $��Удалить��6j   $��3��6|   $��Right=�6�   $��0,10,10.4,10q�6�   $	��120��6�   ���	#FFFAC7166
  � 5/   
   ���#445c93$��4��6$   $��	0,0,0.4,0q�61   50      51      