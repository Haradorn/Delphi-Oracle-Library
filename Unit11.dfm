object Form11: TForm11
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1078#1072#1085#1088#1072#1084#1080
  ClientHeight = 113
  ClientWidth = 572
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 50
    Height = 13
    Caption = #1048#1044' '#1078#1072#1085#1088#1072
  end
  object Label2: TLabel
    Left = 240
    Top = 24
    Width = 83
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1078#1072#1085#1088#1072
  end
  object DBEdit1: TDBEdit
    Left = 89
    Top = 21
    Width = 121
    Height = 21
    DataField = 'G_ID'
    DataSource = Form1.OraDataSource5
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 345
    Top = 21
    Width = 209
    Height = 21
    DataField = 'G_NAME'
    DataSource = Form1.OraDataSource5
    TabOrder = 1
  end
  object Button1: TButton
    Left = 24
    Top = 64
    Width = 129
    Height = 33
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 425
    Top = 72
    Width = 129
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
end
