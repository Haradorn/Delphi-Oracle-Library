object Form1: TForm1
  Left = 0
  Top = 388
  Caption = 'Form1'
  ClientHeight = 855
  ClientWidth = 1486
  Color = clBtnFace
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
    Width = 233
    Height = 33
    Caption = #1054#1090#1095#1077#1090' "'#1050#1085#1080#1075#1080' - '#1072#1074#1090#1086#1088#1099' - '#1078#1072#1085#1088#1099'"'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid3: TDBGrid
    Left = 632
    Top = 168
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
    Left = 632
    Top = 352
    Width = 97
    Height = 41
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 2
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 816
    Top = 352
    Width = 97
    Height = 41
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 3
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 984
    Top = 352
    Width = 97
    Height = 41
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 4
    OnClick = Button7Click
  end
  object DBEdit2: TDBEdit
    Left = 632
    Top = 416
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
    ActivePage = TabSheet1
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
    end
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
    Left = 712
    Top = 96
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
    Left = 784
    Top = 96
  end
  object OraDataSource1: TOraDataSource
    DataSet = OraQuery1
    Left = 856
    Top = 96
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
    Left = 648
    Top = 96
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
    end
    object N2: TMenuItem
      Caption = #1046#1072#1085#1088#1099
    end
    object N3: TMenuItem
      Caption = #1055#1086#1076#1087#1080#1089#1095#1080#1082#1080
    end
    object N4: TMenuItem
      Caption = #1042#1099#1076#1072#1095#1072' '#1082#1085#1080#1075
    end
    object N5: TMenuItem
      Caption = #1050#1085#1080#1075#1080'-'#1078#1072#1085#1088#1099
    end
    object N6: TMenuItem
      Caption = #1050#1085#1080#1075#1080'-'#1072#1074#1090#1086#1088#1099
    end
  end
end
