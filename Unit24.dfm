object Form24: TForm24
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1074#1099#1076#1072#1095#1080' '#1082#1085#1080#1075#1080
  ClientHeight = 215
  ClientWidth = 708
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
    Width = 57
    Height = 13
    Caption = #1048#1044' '#1074#1099#1076#1072#1095#1080
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 78
    Height = 13
    Caption = #1048#1044' '#1087#1086#1076#1087#1080#1089#1095#1080#1082#1072
  end
  object Label3: TLabel
    Left = 24
    Top = 88
    Width = 47
    Height = 13
    Caption = #1048#1044' '#1082#1085#1080#1075#1080
  end
  object Label4: TLabel
    Left = 248
    Top = 24
    Width = 68
    Height = 13
    Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
  end
  object Label5: TLabel
    Left = 248
    Top = 56
    Width = 76
    Height = 13
    Caption = #1044#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
  end
  object Label6: TLabel
    Left = 248
    Top = 88
    Width = 90
    Height = 13
    BiDiMode = bdLeftToRight
    Caption = #1050#1085#1080#1075#1072' '#1091' '#1095#1080#1090#1072#1090#1077#1083#1103
    ParentBiDiMode = False
  end
  object DBEdit1: TDBEdit
    Left = 120
    Top = 21
    Width = 97
    Height = 21
    DataField = 'SB_ID'
    DataSource = Form1.OraDataSource9
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 120
    Top = 53
    Width = 97
    Height = 21
    DataField = 'SB_SUBSCRIBER'
    DataSource = Form1.OraDataSource9
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 120
    Top = 85
    Width = 97
    Height = 21
    DataField = 'SB_BOOK'
    DataSource = Form1.OraDataSource9
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 368
    Top = 21
    Width = 97
    Height = 21
    DataField = 'SB_START'
    DataSource = Form1.OraDataSource9
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 368
    Top = 53
    Width = 97
    Height = 21
    DataField = 'SB_FINISH'
    DataSource = Form1.OraDataSource9
    TabOrder = 4
  end
  object DBComboBox1: TDBComboBox
    Left = 368
    Top = 85
    Width = 97
    Height = 21
    DataField = 'SB_IS_ACTIVE'
    DataSource = Form1.OraDataSource9
    Items.Strings = (
      'Y'
      'N')
    TabOrder = 5
  end
  object Button1: TButton
    Left = 24
    Top = 152
    Width = 89
    Height = 33
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 601
    Top = 152
    Width = 89
    Height = 33
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 7
    OnClick = Button2Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 504
    Top = 21
    Width = 186
    Height = 21
    Date = 44499.867616643520000000
    Time = 44499.867616643520000000
    TabOrder = 8
  end
  object DateTimePicker2: TDateTimePicker
    Left = 504
    Top = 56
    Width = 186
    Height = 21
    Date = 44499.867616643520000000
    Time = 44499.867616643520000000
    TabOrder = 9
  end
end
