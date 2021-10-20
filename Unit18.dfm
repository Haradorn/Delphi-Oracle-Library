object Form18: TForm18
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1050#1085#1080#1075#1072'-'#1072#1074#1090#1086#1088
  ClientHeight = 160
  ClientWidth = 260
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
    Left = 24
    Top = 24
    Width = 47
    Height = 13
    Caption = #1048#1044' '#1082#1085#1080#1075#1080
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 54
    Height = 13
    Caption = #1048#1044' '#1072#1074#1090#1086#1088#1072
  end
  object DBEdit1: TDBEdit
    Left = 112
    Top = 21
    Width = 121
    Height = 21
    DataField = 'B_ID'
    DataSource = Form1.OraDataSource10
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 112
    Top = 53
    Width = 121
    Height = 21
    DataField = 'A_ID'
    DataSource = Form1.OraDataSource10
    TabOrder = 1
  end
  object Button1: TButton
    Left = 24
    Top = 96
    Width = 89
    Height = 41
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 144
    Top = 96
    Width = 89
    Height = 41
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
end
