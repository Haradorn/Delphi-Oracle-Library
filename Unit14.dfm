object Form14: TForm14
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1087#1086#1076#1087#1080#1089#1095#1080#1082#1072#1084#1080
  ClientHeight = 141
  ClientWidth = 772
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
    Left = 32
    Top = 24
    Width = 79
    Height = 13
    Caption = #1048#1044' '#1055#1086#1076#1087#1080#1089#1095#1080#1082#1072
  end
  object Label2: TLabel
    Left = 320
    Top = 24
    Width = 23
    Height = 13
    Caption = #1060#1048#1054
  end
  object DBEdit1: TDBEdit
    Left = 117
    Top = 21
    Width = 164
    Height = 21
    DataField = 'S_ID'
    DataSource = Form1.OraDataSource6
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 360
    Top = 21
    Width = 385
    Height = 21
    DataField = 'S_NAME'
    DataSource = Form1.OraDataSource6
    TabOrder = 1
  end
  object Button1: TButton
    Left = 32
    Top = 64
    Width = 145
    Height = 41
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 600
    Top = 64
    Width = 145
    Height = 41
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
end
