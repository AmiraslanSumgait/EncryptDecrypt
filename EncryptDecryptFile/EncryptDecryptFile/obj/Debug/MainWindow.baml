   M S B A M L   `   `   `  ����M  IEncryptDecryptFile, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:EncryptDecryptFileEncryptDecryptFile  5   	   #    EncryptDecryptFile.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:EncryptDecryptFile     5   	     � Title$  
MainWindow��5   	   $	��300��6   $	��800��6)    � 	Resources 5	       �� 
TargetType �� Property �� Value��%z  '��       '�� �     '�� u    '	� 
    �� 5
   
   " ��6   .�5      ��  � ��$ Center=�62   �� 5       � ��$ 10q�6'   �� 5       � ��$ 20(�6)   5      �� 5   
   " ��6   .�5      ��  � ��$ Center=�62   �� 5       � ��$	 480��6&   �� 5       � ��$ 17(�6)   �� 5       � ��$ 30��6'   �� 5       � ��$ Center=�69   5      �� 5   
   " ��6   .�5      ��  � ��$ Center=�62   �� 5       � ��$	 100��6&   �� 5       � ��$ 20(�6)   5      �� 5   
   " 	�6   .�5      ��  � ��$ 20(�6)   5      5      .��5       �  � RowDefinitions 5!   
   �� 5"      �� 5#      �� 5$      �� 5%      .+�5(   
   �� -   5         ��Name$ btnFile��5(      $��File...��6"   $
��Left=�64   $��5q�6O   6Z   �� 5)   
   -   5         ��Name$ txbFile��5)      $��Right=�6#   $��0,0,30,0q�6?   � 5*   
   $��1��6   .+�5+      �� $��Password��6   $
��Left=�6(   �� 5,      -   5        $ txbPassword��5,      $
��Left=�6+   $��	130,0,0,0q�6F   $	��180��6Y   5.      � 50   
   $��2��6   .+�51      � -   5         �Name$ progressBar��51      	 � Maximum$		 100Q�6/   $��12q�6=   52      � 54   
   $��3��6   .+�55      �� -   5        $ btnStart��55      $��Start��6'   $��	270,0,0,0q�67   6J   �� 56      -   5        $ 	btnCancel��56      $��Cancel��6(   $��Right=�69   $��0,0,10,0q�6U   57      59      5:      