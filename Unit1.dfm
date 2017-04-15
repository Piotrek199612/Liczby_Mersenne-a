object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 472
  ClientWidth = 806
  Color = clInactiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 146
    Top = 34
    Width = 435
    Height = 24
    Caption = 'Liczby pierwsze Mersenn'#39'a z przedzia'#322'u od 0 do n'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 256
    Top = 432
    Width = 23
    Height = 13
    Caption = 'Czas'
  end
  object Label3: TLabel
    Left = 146
    Top = 109
    Width = 77
    Height = 13
    Caption = 'Podaj warto'#347#263' n'
  end
  object Button1: TButton
    Left = 176
    Top = 376
    Width = 121
    Height = 33
    Caption = 'Wypisz'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 344
    Top = 376
    Width = 129
    Height = 33
    Caption = 'Zamknij'
    TabOrder = 1
    OnClick = Button2Click
  end
  object ListBox1: TListBox
    Left = 229
    Top = 139
    Width = 196
    Height = 153
    ItemHeight = 13
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 229
    Top = 112
    Width = 196
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
  end
end
