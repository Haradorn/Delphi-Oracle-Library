object Form9: TForm9
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1072#1074#1090#1086#1088#1072#1084#1080
  ClientHeight = 153
  ClientWidth = 621
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
    Top = 35
    Width = 54
    Height = 13
    Caption = #1048#1044' '#1072#1074#1090#1086#1088#1072
  end
  object Label2: TLabel
    Left = 208
    Top = 35
    Width = 62
    Height = 13
    Caption = #1060#1048#1054' '#1072#1074#1090#1086#1088#1072
  end
  object DBEdit1: TDBEdit
    Left = 96
    Top = 32
    Width = 81
    Height = 21
    DataField = 'A_ID'
    DataSource = Form1.OraDataSource4
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 296
    Top = 32
    Width = 289
    Height = 21
    DataField = 'A_NAME'
    DataSource = Form1.OraDataSource4
    TabOrder = 1
  end
  object Button1: TButton
    Left = 16
    Top = 88
    Width = 145
    Height = 33
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 440
    Top = 88
    Width = 145
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
end
