   M S B A M L   `   `   `  ����   Password_Generator#    Password_Generator.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     -     � Title$(  "Password Generator   by Mastermind��$	��233��$	��340�� � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ CanMinimize=�.��� .+��� -    ��Name$ Button_Generate��$��Generate��$
��Left=�$��115,156,0,0q�$	��Top=�$��75�� �� 	IsDefault . �� -    ��Name$ CheckBox_LowerAlpha��$��lower alpha (a-z)��$
��Left=�$��	22,60,0,0q�$	��Top=��� -   $ CheckBox_UpperAlpha��$��upper alpha (A-Z)��$
��Left=�$��
190,63,0,0q�$	��Top=��� -   $ CheckBox_Digits��$��digits (0-9)��$
��Left=�$��	22,81,0,0q�$	��Top=��� -   $ CheckBox_Specials��$��specials (+%!..)��$
��Left=�$��
190,84,0,0q�$	��Top=��� -    ��Name$ TextBox_Length��$
��Left=�$��23��$��169,117,0,0q� �� TextWrapping$
 Wrap=�$��10��$	��Top=�$��24�� �� MaxLines$ 1��$��Center=�$��Center=�	 �� 	MaxLength$	 2���� $��Length:��$
��Left=�$��115,114,0,0q�$	��Top=��� -   $ TextBox_Password��$
��Left=�$��23��$��	22,22,0,0q�$
 Wrap=�$	��Top=�$	��279��$��Center=�$��Center=�
 �� 
IsReadOnly
 . 