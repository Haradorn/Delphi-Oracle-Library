object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 
    #1057#1087#1080#1089#1086#1082' '#1095#1080#1090#1072#1090#1077#1083#1077#1081', '#1085#1077' '#1074#1077#1088#1085#1091#1074#1096#1080#1093' '#1082#1085#1080#1075#1080' '#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1077#1074#1086#1079#1074#1088#1072#1097#1077#1085#1085#1099#1093 +
    ' '#1082#1085#1080#1075' '#1087#1086' '#1082#1072#1078#1076#1086#1084#1091' '#1095#1080#1090#1072#1090#1077#1083#1102
  ClientHeight = 543
  ClientWidth = 832
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object frxPreview1: TfrxPreview
    Left = 0
    Top = 0
    Width = 832
    Height = 543
    Align = alClient
    OutlineVisible = True
    OutlineWidth = 121
    ThumbnailVisible = False
    UseReportHints = True
    ExplicitLeft = 48
    ExplicitTop = 32
    ExplicitWidth = 100
    ExplicitHeight = 100
  end
  object frxReport1: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    Preview = frxPreview1
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44460.973508946760000000
    ReportOptions.LastChange = 44460.974144305550000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 368
    Top = 160
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          Left = 7.559060000000000000
          Width = 472.441250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            
              #1057#1087#1080#1089#1086#1082' '#1095#1080#1090#1072#1090#1077#1083#1077#1081', '#1085#1077' '#1074#1077#1088#1085#1091#1074#1096#1080#1093' '#1082#1085#1080#1075#1080' '#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1085#1077#1074#1086#1079#1074#1088#1072#1097#1077#1085#1085#1099#1093 +
              ' '#1082#1085#1080#1075)
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 7.559060000000000000
          Top = 26.456710000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[DATE]')
        end
        object SysMemo2: TfrxSysMemoView
          Left = 188.976500000000000000
          Top = 26.456710000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            '[TIME]')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 173.858380000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1S_ID: TfrxMemoView
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          DataField = 'S_ID'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."S_ID"]')
          ParentFont = False
        end
        object frxDBDataset1S_NAME: TfrxMemoView
          Left = 105.826840000000000000
          Width = 495.118430000000000000
          Height = 22.677180000000000000
          DataField = 'S_NAME'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."S_NAME"]')
          ParentFont = False
        end
        object frxDBDataset1BOOKS_TAKEN: TfrxMemoView
          Left = 600.945270000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          DataField = 'BOOKS_TAKEN'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."BOOKS_TAKEN"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 257.008040000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 128.504020000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 600.945270000000000000
          Width = 79.370130000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1050#1085#1080#1075' '#1074#1079#1103#1090#1086)
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1048#1044' '#1055#1086#1076#1087#1080#1089#1095#1080#1082#1072)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 105.826840000000000000
          Width = 495.118430000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1060#1048#1054' '#1055#1086#1076#1087#1080#1089#1095#1080#1082#1072)
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = Form1.OraDataSource8
    BCDToCurrency = False
    Left = 512
    Top = 160
  end
end
