object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1082#1085#1080#1075#1072#1084#1080
  ClientHeight = 218
  ClientWidth = 411
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
    Top = 72
    Width = 80
    Height = 13
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1082#1085#1080#1075#1080
  end
  object Label2: TLabel
    Left = 16
    Top = 117
    Width = 60
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
  end
  object Label3: TLabel
    Left = 208
    Top = 117
    Width = 64
    Height = 13
    Caption = #1043#1086#1076' '#1080#1079#1076#1072#1085#1080#1103
  end
  object Label4: TLabel
    Left = 16
    Top = 24
    Width = 43
    Height = 13
    Caption = 'ID '#1082#1085#1080#1075#1080
  end
  object DBEdit1: TDBEdit
    Left = 102
    Top = 69
    Width = 283
    Height = 21
    DataField = 'B_NAME'
    DataSource = Form1.OraDataSource2
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 102
    Top = 114
    Width = 83
    Height = 21
    DataField = 'B_QUANTITY'
    DataSource = Form1.OraDataSource2
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 278
    Top = 114
    Width = 107
    Height = 21
    DataField = 'B_YEAR'
    DataSource = Form1.OraDataSource2
    TabOrder = 2
  end
  object Button1: TButton
    Left = 16
    Top = 152
    Width = 113
    Height = 41
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 272
    Top = 152
    Width = 113
    Height = 41
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 4
    OnClick = Button2Click
  end
  object DBEdit4: TDBEdit
    Left = 102
    Top = 21
    Width = 107
    Height = 21
    DataField = 'B_ID'
    DataSource = Form1.OraDataSource2
    TabOrder = 5
  end
end
