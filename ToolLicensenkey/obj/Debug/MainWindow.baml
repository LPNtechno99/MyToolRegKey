   M S B A M L   `   `   `  ����J  FToolLicensenkey, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:ToolLicensenkeyToolLicensenkey  5   	        ToolLicensenkey.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:ToolLicensenkey     5   	   -   5          � Title$  
MainWindow��5   	   $	��300��6   $	��700��6)    � 
ResizeMode$ NoResize=�65    � WindowStartupLocation$ CenterScreen=�6K   .��5
      �  � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      �� 5       � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��3* �6   .+�5   
   �� $��	10 0 10 0q�6   $��Product ID:��6#   $��18(�69   $
��Bold"�6G   $��Center=�6Y   $��Center=�5      �� 5   
   -   5        $��txtProductID��5      $��0 0 10 0q�5      $��1��6$   $��35��64   $��18(�6@   $
��Bold"�6N   5      �� 5   
   $��1��6   $��	10 0 10 0q�6   $��License Type:��60   $��18(�6H   $
��Bold"�6V   $��Center=�6h   $��Center=�5      �� 5   
   -   5        $��cbbLicenseType��5      $��1��6)   $��1��66   $��35��6F   $��18(�6R   $
��Bold"�6`   $��	0 0 300 0q�5      $��Center=�6&   $��Center=�6H   5      �� 5   
   $��2��6   $��	10 0 10 0q�6   $��Experience days:��60   $��18(�6K   $
��Bold"�6Y   $��Center=�6k   $��Center=�5       �� 5!   
   -   5        $��txtExperienceDays��5"      $��	0 0 300 0q�5!      $��1��6%   $��35��65   $��18(�6A   $
��Bold"�6O   $��2��5"       �� TextAlignment$ Right=�68   $��0 0 2 0q�6N   $��Center=�5#      �� 5$   
   $��3��6   $��	10 0 10 0q�6   $��Product Key:��60   $��18(�6G   $
��Bold"�6U   $��Center=�6g   $��Center=�5%      �� 5&   
   -   5        $��txtProductKey��5'      $��3��5&      $��1��6   $��35��6/   $��0 0 10 0q�6;    �� 
IsReadOnly . $��18(�5'   '   $
��Bold"�65   $��Center=�6G   �� 5(   
   -   5        $��btnGenerate��5(   N   $��1��6   $��4��6!   $��35��6.   $��
350 0 10 0q�6:   $��Generate��6a   $��18(�5)      $
��Bold"�6   61   5*      5+      