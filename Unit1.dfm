object Form1: TForm1
  Left = 0
  Top = 388
  Caption = #1048#1057' "'#1043#1086#1088#1086#1076#1089#1082#1072#1103' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1072'"'
  ClientHeight = 880
  ClientWidth = 1486
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  DesignSize = (
    1486
    880)
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 960
    Top = 444
    Width = 265
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1095#1077#1090' "'#1050#1085#1080#1075#1080' - '#1072#1074#1090#1086#1088#1099' - '#1078#1072#1085#1088#1099'"'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1486
    Height = 393
    ActivePage = TabSheet7
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = #1050#1085#1080#1075#1080
      object DBGrid2: TDBGrid
        Left = 16
        Top = 16
        Width = 841
        Height = 265
        DataSource = OraDataSource2
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'B_ID'
            Title.Caption = #1048#1044
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'B_NAME'
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'B_YEAR'
            Title.Caption = #1043#1086#1076' '#1080#1079#1076#1072#1085#1080#1103
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'B_QUANTITY'
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1077
            Width = 230
            Visible = True
          end>
      end
      object Button2: TButton
        Left = 16
        Top = 304
        Width = 137
        Height = 37
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 224
        Top = 304
        Width = 137
        Height = 37
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 432
        Top = 304
        Width = 137
        Height = 37
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = Button4Click
      end
      object DBEdit1: TDBEdit
        Left = 616
        Top = 304
        Width = 105
        Height = 31
        DataField = 'B_ID'
        DataSource = OraDataSource2
        TabOrder = 4
        Visible = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1040#1074#1090#1086#1088#1099
      ImageIndex = 1
      object DBGrid4: TDBGrid
        Left = 24
        Top = 12
        Width = 393
        Height = 253
        DataSource = OraDataSource4
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'A_ID'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'A_NAME'
            Width = 300
            Visible = True
          end>
      end
      object DBEdit3: TDBEdit
        Left = 24
        Top = 296
        Width = 121
        Height = 31
        DataField = 'A_ID'
        DataSource = OraDataSource4
        TabOrder = 1
        Visible = False
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1046#1072#1085#1088#1099
      ImageIndex = 2
      object DBGrid5: TDBGrid
        Left = 16
        Top = 16
        Width = 493
        Height = 233
        DataSource = OraDataSource5
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'G_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'G_NAME'
            Width = 300
            Visible = True
          end>
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 288
        Width = 121
        Height = 31
        DataField = 'G_ID'
        DataSource = OraDataSource5
        TabOrder = 1
        Visible = False
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1055#1086#1076#1087#1080#1089#1095#1080#1082#1080
      ImageIndex = 3
      object DBGrid6: TDBGrid
        Left = 3
        Top = 3
        Width = 894
        Height = 238
        DataSource = OraDataSource6
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'S_ID'
            Title.Caption = #1048#1044
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'S_NAME'
            Title.Caption = #1060#1048#1054
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'S_LAST_VISIT'
            Title.Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1074#1080#1079#1080#1090
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COUNT_BOOK_TAKEN'
            Title.Caption = #1042#1079#1103#1090#1099#1093' '#1082#1085#1080#1075' '#1079#1072' '#1074#1089#1077' '#1074#1088#1077#1084#1103
            Visible = True
          end>
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 280
        Width = 121
        Height = 31
        DataField = 'S_ID'
        DataSource = OraDataSource6
        TabOrder = 1
        Visible = False
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1042#1099#1076#1072#1095#1072' '#1082#1085#1080#1075
      ImageIndex = 4
      object DBGrid1: TDBGrid
        Left = 3
        Top = 3
        Width = 1430
        Height = 318
        DataSource = OraDataSource9
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -19
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'SB_ID'
            Title.Caption = #1048#1044' '#1074#1099#1076#1072#1095#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SB_SUBSCRIBER'
            Title.Caption = #1048#1044' '#1055#1086#1076#1087#1080#1089#1095#1080#1082#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SB_BOOK'
            Title.Caption = #1048#1044' '#1050#1085#1080#1075#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SB_START'
            Title.Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SB_FINISH'
            Title.Caption = #1044#1072#1090#1072' '#1074#1086#1079#1074#1088#1072#1090#1072
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SB_IS_ACTIVE'
            Title.Caption = #1050#1085#1080#1075#1072' '#1091' '#1095#1080#1090#1072#1090#1077#1083#1103
            Visible = True
          end>
      end
      object DBEdit6: TDBEdit
        Left = 960
        Top = 256
        Width = 121
        Height = 31
        DataField = 'SB_ID'
        DataSource = OraDataSource9
        TabOrder = 1
        Visible = False
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1050#1085#1080#1075#1080'-'#1072#1074#1090#1086#1088#1099
      ImageIndex = 5
      object DBGrid7: TDBGrid
        Left = 3
        Top = 3
        Width = 582
        Height = 318
        DataSource = OraDataSource10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBEdit7: TDBEdit
        Left = 750
        Top = 280
        Width = 121
        Height = 31
        DataField = 'B_ID'
        DataSource = OraDataSource10
        TabOrder = 1
        Visible = False
      end
    end
    object TabSheet7: TTabSheet
      Caption = #1050#1085#1080#1075#1080'-'#1078#1072#1085#1088#1099
      ImageIndex = 6
      object DBGrid8: TDBGrid
        Left = 11
        Top = 11
        Width = 574
        Height = 310
        DataSource = OraDataSource11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBEdit8: TDBEdit
        Left = 696
        Top = 288
        Width = 121
        Height = 31
        DataField = 'B_ID'
        DataSource = OraDataSource11
        TabOrder = 1
        Visible = False
      end
    end
  end
  object Button8: TButton
    Left = 960
    Top = 508
    Width = 265
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = #1054#1089#1090#1072#1090#1082#1080' '#1082#1085#1080#1075' '#1074' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 840
    Top = 572
    Width = 385
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = #1055#1077#1088#1074#1072#1103' '#1082#1085#1080#1075#1072', '#1082#1086#1090#1086#1088#1091#1102' '#1074#1079#1103#1083' '#1082#1072#1078#1076#1099#1081' '#1095#1080#1090#1072#1090#1077#1083#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 840
    Top = 636
    Width = 385
    Height = 33
    Anchors = [akRight, akBottom]
    Caption = #1057#1087#1080#1089#1086#1082' '#1095#1080#1090#1072#1090#1077#1083#1077#1081' '#1080' '#1085#1077#1074#1086#1079#1074#1088#1072#1097#1077#1085#1085#1099#1093' '#1082#1085#1080#1075
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button10Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 832
    Width = 1486
    Height = 29
    Align = alBottom
    TabOrder = 5
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 146
      Height = 27
      Align = alLeft
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1082#1085#1080#1075#1072#1084
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 23
    end
    object Edit1: TEdit
      Left = 147
      Top = 1
      Width = 1338
      Height = 27
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
      ExplicitHeight = 31
    end
  end
  object Button11: TButton
    Left = 840
    Top = 698
    Width = 385
    Height = 35
    Anchors = [akRight, akBottom]
    Caption = #1040#1074#1090#1086#1088#1099' '#1073#1086#1083#1077#1077', '#1095#1077#1084' '#1089' '#1086#1076#1085#1086#1081' '#1082#1085#1080#1075#1086#1081' ('#1086#1089#1090#1072#1090#1082#1080')'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button11Click
  end
  object Button12: TButton
    Left = 8
    Top = 424
    Width = 305
    Height = 41
    Caption = #1054#1082#1085#1086' '#1079#1072#1087#1088#1086#1089#1086#1074' '#1082' '#1041#1044
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button12Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 861
    Width = 1486
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object OraSession1: TOraSession
    Options.ConvertEOL = True
    Options.Direct = True
    Username = 'haradorn'
    Server = 'localhost:1521'
    Connected = True
    HomeName = 'ORCL'
    Left = 68
    Top = 656
    EncryptedPassword = 'CEFFCDFFCCFF'
  end
  object OraQuery1: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT * FROM books_info')
    Active = True
    Left = 132
    Top = 656
  end
  object OraDataSource1: TOraDataSource
    DataSet = OraQuery1
    Left = 196
    Top = 656
  end
  object OraQuery2: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT * FROM books')
    Active = True
    Left = 4
    Top = 696
  end
  object OraDataSource2: TOraDataSource
    DataSet = OraQuery2
    Left = 68
    Top = 696
  end
  object OraQuery4: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT * FROM authors')
    Active = True
    Left = 132
    Top = 696
  end
  object OraDataSource4: TOraDataSource
    DataSet = OraQuery4
    Left = 196
    Top = 696
  end
  object OraQuery5: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT * FROM genres')
    Active = True
    Left = 268
    Top = 696
  end
  object OraDataSource5: TOraDataSource
    DataSet = OraQuery5
    Left = 348
    Top = 696
  end
  object OraQuery6: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT * FROM subscribers')
    Active = True
    Left = 460
    Top = 696
  end
  object OraDataSource6: TOraDataSource
    DataSet = OraQuery6
    Left = 540
    Top = 696
  end
  object MainMenu1: TMainMenu
    Left = 4
    Top = 656
    object Rybub1: TMenuItem
      Caption = #1050#1085#1080#1075#1080
      object N7: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        OnClick = N8Click
      end
      object N9: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        OnClick = N9Click
      end
    end
    object N1: TMenuItem
      Caption = #1040#1074#1090#1086#1088#1099
      object N10: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        OnClick = N10Click
      end
      object N11: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        OnClick = N11Click
      end
      object N12: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        OnClick = N12Click
      end
    end
    object N2: TMenuItem
      Caption = #1046#1072#1085#1088#1099
      object N13: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        OnClick = N13Click
      end
      object N14: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        OnClick = N14Click
      end
      object N15: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        OnClick = N15Click
      end
    end
    object N3: TMenuItem
      Caption = #1055#1086#1076#1087#1080#1089#1095#1080#1082#1080
      object N16: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        OnClick = N16Click
      end
      object N17: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        OnClick = N17Click
      end
      object N18: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        OnClick = N18Click
      end
    end
    object N4: TMenuItem
      Caption = #1042#1099#1076#1072#1095#1072' '#1082#1085#1080#1075
      object N19: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        OnClick = N19Click
      end
      object N20: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        OnClick = N20Click
      end
      object N21: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        OnClick = N21Click
      end
    end
    object N5: TMenuItem
      Caption = #1050#1085#1080#1075#1080'-'#1072#1074#1090#1086#1088#1099
      object N22: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        OnClick = N22Click
      end
      object N23: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        OnClick = N23Click
      end
      object N24: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        OnClick = N24Click
      end
    end
    object N6: TMenuItem
      Caption = #1050#1085#1080#1075#1080'-'#1078#1072#1085#1088#1099
      object N25: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        OnClick = N25Click
      end
      object N26: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        OnClick = N26Click
      end
      object N27: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
        OnClick = N27Click
      end
    end
  end
  object OraQuery3: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'select b_id, b_name, b_quantity'
      'from books')
    Active = True
    Left = 268
    Top = 656
  end
  object OraDataSource3: TOraDataSource
    DataSet = OraQuery3
    Left = 348
    Top = 656
  end
  object OraQuery7: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT * FROM first_book')
    Active = True
    Left = 1324
    Top = 488
  end
  object OraDataSource7: TOraDataSource
    DataSet = OraQuery7
    Left = 1404
    Top = 488
  end
  object OraQuery8: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT  s_id,'
      '        s_name,'
      '        COUNT(sb_book) AS books_taken'
      'FROM subscribers'
      
        '     JOIN subscriptions ON subscribers.s_id = subscriptions.sb_s' +
        'ubscriber'
      
        'WHERE subscriptions.sb_is_active = '#39'Y'#39' AND sb_finish < CURRENT_D' +
        'ATE    '
      'GROUP BY s_id, s_name')
    Active = True
    Left = 1316
    Top = 632
  end
  object OraDataSource8: TOraDataSource
    DataSet = OraQuery8
    Left = 1404
    Top = 632
  end
  object OraQuery9: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT * FROM subscriptions')
    Active = True
    Left = 1324
    Top = 568
  end
  object OraDataSource9: TOraDataSource
    DataSet = OraQuery9
    Left = 1412
    Top = 568
  end
  object OraQuery10: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT * FROM m2m_books_authors')
    Active = True
    Left = 1316
    Top = 712
  end
  object OraDataSource10: TOraDataSource
    DataSet = OraQuery10
    Left = 1404
    Top = 712
  end
  object OraQuery11: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT * FROM m2m_books_genres')
    Active = True
    Left = 620
    Top = 696
  end
  object OraDataSource11: TOraDataSource
    DataSet = OraQuery11
    Left = 708
    Top = 696
  end
  object OraDataSource12: TOraDataSource
    DataSet = OraQuery12
    Left = 876
    Top = 696
  end
  object OraQuery12: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT * FROM authors_w_more_than_one_book')
    Active = True
    Left = 796
    Top = 696
  end
  object OraQuery13: TOraQuery
    Session = OraSession1
    Left = 460
    Top = 656
  end
  object OraDataSource13: TOraDataSource
    DataSet = OraQuery13
    Left = 540
    Top = 656
  end
end
