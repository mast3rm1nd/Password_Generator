   M S B A M L   `   `   `  ����  Password_Generator#    Password_Generator.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   -   5          � Title$(  "Password Generator   by Mastermind��5   	   $	��233��64   $	��340��6A    � WindowStartupLocation$ CenterScreen=�6M    � 
ResizeMode$ CanMinimize=�6r   .��5      � .+�5   
   �� -   5         ��Name$ Button_Generate��5      $��Generate��6*   $
��Left=�6=   $��115,156,0,0q�6X   $	��Top=�6m   $��75��6�    �� 	IsDefault . 6�   �� 5   
   -   5         ��Name$ CheckBox_LowerAlpha��5      $��lower alpha (a-z)��60   $
��Left=�6L   $��	22,60,0,0q�6g   $	��Top=�6z   �� 5   
   -   5        $ CheckBox_UpperAlpha��5      $��upper alpha (A-Z)��60   $
��Left=�6L   $��
190,63,0,0q�6g   $	��Top=�6{   �� 5	   
   -   5        $ CheckBox_Digits��5	      $��digits (0-9)��6,   $
��Left=�6C   $��	22,81,0,0q�6^   $	��Top=�6q   �� 5
   
   -   5        $ CheckBox_Specials��5
      $��specials (+%!..)��6.   $
��Left=�6I   $��
190,84,0,0q�6d   $	��Top=�6x   �� 5   
   -   5         ��Name$ TextBox_Length��5      $
��Left=�6*   $��23��6E   $��169,117,0,0q�6Q    �� TextWrapping$
 Wrap=�6f   $��10��6z   $	��Top=�6�   $��24��6�    �� MaxLines$ 1��6�   $��Center=�6�   $��Center=�6�   	 �� 	MaxLength$	 2��6�   �� 5   
   $��Length:��6   $
��Left=�6"   $��115,114,0,0q�6=   $	��Top=�6R   �� 5   
   -   5        $ TextBox_Password��5      $
��Left=�6,   $��23��6G   $��	22,22,0,0q�6S   $
 Wrap=�6f   $	��Top=�6z   $	��279��6�   $��Center=�6�   $��Center=�6�   
 �� 
IsReadOnly
 . 6�   5      5      