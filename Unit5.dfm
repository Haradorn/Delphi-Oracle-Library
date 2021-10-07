object Form5: TForm5
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1072#1074#1090#1086#1088#1072#1084#1080
  ClientHeight = 502
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnActivate = FormCreate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 54
    Height = 13
    Caption = #1048#1044' '#1072#1074#1090#1086#1088#1072
  end
  object Image1: TImage
    Left = 32
    Top = 112
    Width = 322
    Height = 305
    Stretch = True
  end
  object Label2: TLabel
    Left = 32
    Top = 72
    Width = 62
    Height = 13
    Caption = #1060#1048#1054' '#1072#1074#1090#1086#1088#1072
  end
  object DBEdit1: TDBEdit
    Left = 112
    Top = 21
    Width = 121
    Height = 21
    DataField = 'A_ID'
    DataSource = Form1.OraDataSource4
    TabOrder = 0
  end
  object DBMemo1: TDBMemo
    Left = 360
    Top = 112
    Width = 241
    Height = 57
    DataField = 'PHOTO'
    DataSource = Form1.OraDataSource4
    TabOrder = 1
  end
  object Button1: TButton
    Left = 496
    Top = 192
    Width = 105
    Height = 41
    Caption = #1054#1090#1082#1088#1099#1090#1100'...'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 432
    Width = 105
    Height = 41
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 488
    Top = 432
    Width = 105
    Height = 41
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 4
    OnClick = Button3Click
  end
  object DBEdit2: TDBEdit
    Left = 112
    Top = 69
    Width = 489
    Height = 21
    DataField = 'A_NAME'
    DataSource = Form1.OraDataSource4
    TabOrder = 5
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 400
    Top = 200
  end
end
