object Form20: TForm20
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1050#1085#1080#1075#1072'-'#1078#1072#1085#1088
  ClientHeight = 184
  ClientWidth = 322
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 47
    Height = 13
    Caption = #1048#1044' '#1082#1085#1080#1075#1080
  end
  object Label2: TLabel
    Left = 16
    Top = 72
    Width = 50
    Height = 13
    Caption = #1048#1044' '#1078#1072#1085#1088#1072
  end
  object DBEdit1: TDBEdit
    Left = 80
    Top = 21
    Width = 121
    Height = 21
    DataField = 'B_ID'
    DataSource = Form1.OraDataSource11
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 80
    Top = 69
    Width = 121
    Height = 21
    DataField = 'G_ID'
    DataSource = Form1.OraDataSource11
    TabOrder = 1
  end
  object Button1: TButton
    Left = 16
    Top = 120
    Width = 113
    Height = 41
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 192
    Top = 120
    Width = 113
    Height = 41
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
end
