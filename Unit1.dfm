object Form1: TForm1
  Left = 0
  Top = 388
  Caption = #1048#1057' "'#1043#1086#1088#1086#1076#1089#1082#1072#1103' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1072'"'
  ClientHeight = 855
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
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 640
    Top = 32
    Width = 265
    Height = 33
    Caption = #1054#1090#1095#1077#1090' "'#1050#1085#1080#1075#1080' - '#1072#1074#1090#1086#1088#1099' - '#1078#1072#1085#1088#1099'"'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid3: TDBGrid
    Left = 80
    Top = 496
    Width = 449
    Height = 161
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
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
        FieldName = 'PHOTO'
        Visible = True
      end>
  end
  object Button5: TButton
    Left = 80
    Top = 680
    Width = 97
    Height = 41
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 264
    Top = 680
    Width = 97
    Height = 41
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 3
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 432
    Top = 680
    Width = 97
    Height = 41
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 4
    OnClick = Button7Click
  end
  object DBEdit2: TDBEdit
    Left = 80
    Top = 744
    Width = 105
    Height = 21
    DataField = 'G_ID'
    TabOrder = 5
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 601
    Height = 361
    ActivePage = TabSheet5
    TabOrder = 6
    object TabSheet1: TTabSheet
      Caption = #1050#1085#1080#1075#1080
      object DBGrid2: TDBGrid
        Left = 16
        Top = 16
        Width = 553
        Height = 193
        DataSource = OraDataSource2
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
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
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'B_YEAR'
            Title.Caption = #1043#1086#1076' '#1080#1079#1076#1072#1085#1080#1103
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'B_QUANTITY'
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1077
            Width = 144
            Visible = True
          end>
      end
      object Button2: TButton
        Left = 16
        Top = 232
        Width = 137
        Height = 37
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 224
        Top = 232
        Width = 137
        Height = 37
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 2
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 432
        Top = 232
        Width = 137
        Height = 37
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 3
        OnClick = Button4Click
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 288
        Width = 105
        Height = 21
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
        Left = 16
        Top = 12
        Width = 529
        Height = 253
        DataSource = OraDataSource4
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'A_ID'
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
        Height = 21
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
        TitleFont.Height = -11
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
        Height = 21
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
        Width = 574
        Height = 238
        DataSource = OraDataSource6
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'S_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'S_NAME'
            Title.Caption = #1048#1084#1103
            Width = 300
            Visible = True
          end>
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 280
        Width = 121
        Height = 21
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
        Width = 587
        Height = 318
        DataSource = OraDataSource9
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBEdit6: TDBEdit
        Left = 24
        Top = 240
        Width = 121
        Height = 21
        DataField = 'SB_ID'
        DataSource = OraDataSource9
        TabOrder = 1
        Visible = False
      end
    end
  end
  object Button8: TButton
    Left = 640
    Top = 96
    Width = 265
    Height = 33
    Caption = #1054#1089#1090#1072#1090#1082#1080' '#1082#1085#1080#1075' '#1074' '#1073#1080#1073#1083#1080#1086#1090#1077#1082#1077
    TabOrder = 7
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 640
    Top = 160
    Width = 265
    Height = 33
    Caption = #1055#1077#1088#1074#1072#1103' '#1082#1085#1080#1075#1072', '#1082#1086#1090#1086#1088#1091#1102' '#1074#1079#1103#1083' '#1082#1072#1078#1076#1099#1081' '#1095#1080#1090#1072#1090#1077#1083#1100
    TabOrder = 8
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 640
    Top = 224
    Width = 265
    Height = 33
    Caption = #1057#1087#1080#1089#1086#1082' '#1095#1080#1090#1072#1090#1077#1083#1077#1081' '#1080' '#1085#1077#1074#1086#1079#1074#1088#1072#1097#1077#1085#1085#1099#1093' '#1082#1085#1080#1075
    TabOrder = 9
    OnClick = Button10Click
  end
  object OraSession1: TOraSession
    ConnectMode = cmSysDBA
    Options.ConvertEOL = True
    Options.Direct = True
    Username = 'SYS'
    Server = 'localhost:1521'
    Connected = True
    LoginPrompt = False
    HomeName = 'ORCL'
    Left = 160
    Top = 424
    EncryptedPassword = 'CEFFCDFFCCFF'
  end
  object OraQuery1: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT  book, authors,'
      '        UTL_RAW.CAST_TO_NVARCHAR2'
      '        ('
      '            LISTAGG'
      '            ('
      '                UTL_RAW.CAST_TO_RAW(g_name),'
      '                UTL_RAW.CAST_TO_RAW(N'#39', '#39')'
      '            )'
      '            WITHIN GROUP(ORDER BY g_name)'
      '        )'
      '        AS genres'
      'FROM'
      '('
      '        SELECT  b_id, b_name AS book,'
      '                UTL_RAW.CAST_TO_NVARCHAR2'
      '                ('
      '                    LISTAGG'
      '                    ('
      '                        UTL_RAW.CAST_TO_RAW(a_name),'
      '                        UTL_RAW.CAST_TO_RAW(N'#39', '#39')'
      '                    )'
      '                    WITHIN GROUP(ORDER BY a_name)'
      '                )'
      '                AS authors'
      '        FROM books'
      '        JOIN m2m_books_authors USING(b_id)'
      '        JOIN authors USING(a_id)'
      '        GROUP BY b_id,'
      '                 b_name'
      ') first_level'
      'JOIN m2m_books_genres USING(b_id)'
      'JOIN genres USING(g_id)'
      'GROUP BY b_id, book, authors')
    Active = True
    Left = 232
    Top = 424
  end
  object OraDataSource1: TOraDataSource
    DataSet = OraQuery1
    Left = 304
    Top = 424
  end
  object OraQuery2: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT * FROM books')
    Active = True
    Left = 16
    Top = 1096
  end
  object OraDataSource2: TOraDataSource
    DataSet = OraQuery2
    Left = 80
    Top = 1096
  end
  object OraQuery4: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT * FROM authors')
    Active = True
    Left = 160
    Top = 1096
  end
  object OraDataSource4: TOraDataSource
    DataSet = OraQuery4
    Left = 224
    Top = 1096
  end
  object OraQuery5: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT * FROM genres')
    Active = True
    Left = 328
    Top = 1096
  end
  object OraDataSource5: TOraDataSource
    DataSet = OraQuery5
    Left = 408
    Top = 1096
  end
  object OraQuery6: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT * FROM subscribers')
    Active = True
    Left = 520
    Top = 1096
  end
  object OraDataSource6: TOraDataSource
    DataSet = OraQuery6
    Left = 600
    Top = 1096
  end
  object MainMenu1: TMainMenu
    Left = 96
    Top = 424
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
      Caption = #1050#1085#1080#1075#1080'-'#1078#1072#1085#1088#1099
      object N22: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      end
      object N23: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      end
      object N24: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
      end
    end
    object N6: TMenuItem
      Caption = #1050#1085#1080#1075#1080'-'#1072#1074#1090#1086#1088#1099
      object N25: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      end
      object N26: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      end
      object N27: TMenuItem
        Caption = #1059#1076#1072#1083#1080#1090#1100
      end
    end
  end
  object OraQuery3: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT DISTINCT b_id,'
      '                b_name,'
      '                (b_quantity - (SELECT COUNT(int.sb_book)'
      '                               FROM subscriptions int'
      '                               WHERE int.sb_book = ext.sb_book'
      '                               AND int.sb_is_active = '#39'Y'#39'))'
      'AS'
      '                real_count'
      'FROM books'
      '     LEFT OUTER JOIN subscriptions ext'
      '                  ON books.b_id = ext.sb_book'
      'ORDER BY real_count DESC')
    Active = True
    Left = 424
    Top = 424
  end
  object OraDataSource3: TOraDataSource
    DataSet = OraQuery3
    Left = 488
    Top = 424
  end
  object OraQuery7: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT * FROM first_book')
    Active = True
    Left = 576
    Top = 424
  end
  object OraDataSource7: TOraDataSource
    DataSet = OraQuery7
    Left = 656
    Top = 424
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
    Left = 792
    Top = 424
  end
  object OraDataSource8: TOraDataSource
    DataSet = OraQuery8
    Left = 880
    Top = 424
  end
  object OraQuery9: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT * FROM subscriptions')
    Active = True
    Left = 576
    Top = 504
  end
  object OraDataSource9: TOraDataSource
    DataSet = OraQuery9
    Left = 664
    Top = 504
  end
end
