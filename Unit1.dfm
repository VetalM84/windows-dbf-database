object Form1: TForm1
  Left = 213
  Top = 228
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
  ClientHeight = 193
  ClientWidth = 494
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 5
    Top = 175
    Width = 18
    Height = 13
    Caption = '???'
  end
  object Label2: TLabel
    Left = 245
    Top = 35
    Width = 3
    Height = 13
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 30
    Width = 240
    Height = 25
    DataSource = DataSource1
    Flat = True
    TabOrder = 0
  end
  object DBImage1: TDBImage
    Left = 360
    Top = 60
    Width = 131
    Height = 111
    Ctl3D = True
    DataField = #1055#1086#1083#1077' 5'
    DataSource = DataSource1
    ParentCtl3D = False
    TabOrder = 1
  end
  object DBGrid: TDBGrid
    Left = 0
    Top = 60
    Width = 356
    Height = 111
    Ctl3D = False
    DataSource = DataSource1
    ParentCtl3D = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 494
    Height = 27
    AutoSize = True
    BorderWidth = 1
    ButtonHeight = 21
    ButtonWidth = 65
    Caption = 'ToolBar1'
    Ctl3D = False
    Customizable = True
    EdgeBorders = [ebBottom]
    Flat = True
    ShowCaptions = True
    TabOrder = 3
    Transparent = True
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      AutoSize = True
      Caption = #1057#1086#1079#1076#1072#1090#1100
      ImageIndex = 0
      OnClick = ToolButton1Click
    end
    object ToolButton2: TToolButton
      Left = 53
      Top = 0
      AutoSize = True
      Caption = #1054#1090#1082#1088#1099#1090#1100
      ImageIndex = 1
      OnClick = ToolButton2Click
    end
    object ToolButton4: TToolButton
      Left = 108
      Top = 0
      AutoSize = True
      Caption = 'Active'
      ImageIndex = 5
      OnClick = ToolButton4Click
    end
    object ToolButton8: TToolButton
      Left = 149
      Top = 0
      AutoSize = True
      Caption = #1054#1095#1080#1089#1090#1082#1072
      ImageIndex = 10
      OnClick = ToolButton8Click
    end
    object ToolButton5: TToolButton
      Left = 202
      Top = 0
      AutoSize = True
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 7
      OnClick = ToolButton5Click
    end
    object ToolButton3: TToolButton
      Left = 256
      Top = 0
      AutoSize = True
      Caption = 'Image'
      ImageIndex = 2
      OnClick = ToolButton3Click
    end
    object ToolButton7: TToolButton
      Left = 296
      Top = 0
      Caption = #1042#1077#1088#1089#1080#1103
      ImageIndex = 9
      OnClick = ToolButton7Click
    end
    object ToolButton9: TToolButton
      Left = 361
      Top = 0
      Caption = 'ToolButton9'
      ImageIndex = 10
      OnClick = ToolButton9Click
    end
  end
  object DT1: TDateTimePicker
    Left = 250
    Top = 30
    Width = 131
    Height = 21
    Date = 38348.840302361110000000
    Time = 38348.840302361110000000
    DateFormat = dfLong
    TabOrder = 4
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 100
    Top = 105
  end
  object Pic: TOpenPictureDialog
    DefaultExt = 'bmp'
    Left = 55
    Top = 100
  end
  object Table1: TTable
    AutoRefresh = True
    DatabaseName = #1052#1086#1081
    SessionName = 'Default'
    FieldDefs = <
      item
        Name = #1055#1086#1083#1077' 1'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = #1055#1086#1083#1077' 2'
        DataType = ftString
        Size = 10
      end
      item
        Name = #1055#1086#1083#1077' 3'
        DataType = ftString
        Size = 10
      end
      item
        Name = #1055#1086#1083#1077' 4'
        DataType = ftCurrency
      end
      item
        Name = #1055#1086#1083#1077' 5'
        DataType = ftGraphic
        Size = 1
      end>
    IndexDefs = <
      item
        Fields = #1055#1086#1083#1077' 1'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'pack.DB'
    Left = 150
    Top = 110
  end
  object Open: TOpenDialog
    Filter = 
      #1042#1089#1077' '#1092#1072#1081#1083#1099' *.dbf, *.db|*.dbf; *.db|DBase *.dbf|*.dbf|Paradox *.db' +
      '|*.db'
    Left = 195
    Top = 115
  end
  object PopupMenu1: TPopupMenu
    Left = 260
    Top = 115
    object N1: TMenuItem
      Caption = #1044#1072#1090#1072' ('#1090#1077#1082#1091#1097#1072#1103')'
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1042#1088#1077#1084#1103' ('#1090#1077#1082#1091#1097#1077#1077')'
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1044#1072#1090#1072' + '#1042#1088#1077#1084#1103' ('#1090#1077#1082#1091#1097#1080#1077')'
      OnClick = N3Click
    end
    object N4: TMenuItem
      Caption = #1044#1072#1090#1072' ('#1087#1086' '#1074#1099#1073#1086#1088#1091')'
      OnClick = N4Click
    end
    object N5: TMenuItem
      Caption = #1050#1072#1088#1090#1080#1085#1082#1072
      OnClick = N5Click
    end
  end
end
