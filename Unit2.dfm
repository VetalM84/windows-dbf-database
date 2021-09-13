object Form2: TForm2
  Left = 247
  Top = 203
  BorderStyle = bsDialog
  Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1090#1086#1083#1073#1077#1094
  ClientHeight = 133
  ClientWidth = 417
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 10
    Top = 5
    Width = 396
    Height = 81
    Caption = ' '#1057#1074#1086#1080#1089#1090#1074#1072' '#1089#1090#1086#1083#1073#1094#1072' '
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 50
      Width = 25
      Height = 13
      Caption = #1058#1080#1087': '
    end
    object LEdit1: TLabeledEdit
      Left = 45
      Top = 15
      Width = 126
      Height = 21
      Ctl3D = True
      EditLabel.Width = 37
      EditLabel.Height = 13
      EditLabel.Caption = #1048#1084#1103':    '
      EditLabel.Layout = tlCenter
      LabelPosition = lpLeft
      ParentCtl3D = False
      TabOrder = 0
    end
    object LEdit2: TLabeledEdit
      Left = 255
      Top = 15
      Width = 126
      Height = 21
      EditLabel.Width = 74
      EditLabel.Height = 13
      EditLabel.Caption = #1050#1086#1084#1087#1086#1085#1077#1085#1090':     '
      LabelPosition = lpLeft
      TabOrder = 1
    end
    object LEdit3: TLabeledEdit
      Left = 255
      Top = 45
      Width = 51
      Height = 21
      EditLabel.Width = 72
      EditLabel.Height = 13
      EditLabel.Caption = #1056#1072#1079#1084#1077#1088':          '
      LabelPosition = lpLeft
      TabOrder = 2
    end
    object ComboBox1: TComboBox
      Left = 45
      Top = 45
      Width = 126
      Height = 21
      Ctl3D = True
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 3
    end
    object Button1: TButton
      Left = 315
      Top = 45
      Width = 75
      Height = 21
      Caption = 'OK'
      Default = True
      TabOrder = 4
      OnClick = Button1Click
    end
  end
  object RadioGroup1: TRadioGroup
    Left = 10
    Top = 90
    Width = 396
    Height = 36
    Caption = ' '#1058#1080#1087' '#1089#1090#1086#1083#1073#1094#1072' '
    Columns = 3
    Items.Strings = (
      #1044#1072#1085#1085#1099#1077
      #1042#1099#1095#1077#1089#1083#1103#1077#1084#1086#1077
      #1055#1086#1080#1089#1082)
    TabOrder = 1
  end
end
