object Form1: TForm1
  Left = 533
  Top = 153
  Width = 1021
  Height = 298
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 32
    Width = 115
    Height = 16
    Caption = #1047#1072#1087#1091#1089#1082' '#1087#1088#1086#1094#1077#1089#1091' 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 72
    Width = 115
    Height = 16
    Caption = #1047#1072#1087#1091#1089#1082' '#1087#1088#1086#1094#1077#1089#1091' 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 112
    Width = 115
    Height = 16
    Caption = #1047#1072#1087#1091#1089#1082' '#1087#1088#1086#1094#1077#1089#1091' 3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 424
    Top = 8
    Width = 118
    Height = 16
    Caption = #1050#1110#1083#1100#1082#1110#1089#1090#1100' '#1087#1086#1074#1090#1086#1088#1110#1074
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 208
    Width = 155
    Height = 16
    Caption = #1063#1072#1089' '#1074#1080#1082#1086#1085#1072#1085#1085#1103' '#1079#1072#1075#1072#1083#1086#1084
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object CheckBox1: TCheckBox
    Left = 560
    Top = 24
    Width = 33
    Height = 33
    TabOrder = 4
  end
  object CheckBox2: TCheckBox
    Left = 560
    Top = 64
    Width = 41
    Height = 41
    TabOrder = 0
  end
  object CheckBox3: TCheckBox
    Left = 560
    Top = 104
    Width = 33
    Height = 33
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 160
    Width = 569
    Height = 33
    Caption = #1047#1072#1087#1091#1089#1082
    TabOrder = 2
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 136
    Top = 32
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Text = #1042#1074#1077#1076#1110#1090#1100' '#1087#1088#1110#1086#1088#1110#1090#1077#1090
    Items.Strings = (
      'IDLE_PRIORITY'
      'NORMAL_PRIORITY'
      'REALTIME_PRIORITY')
  end
  object ComboBox2: TComboBox
    Left = 136
    Top = 72
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = #1042#1074#1077#1076#1110#1090#1100' '#1087#1088#1110#1086#1088#1110#1090#1077#1090
    Items.Strings = (
      'IDLE_PRIORITY'
      'NORMAL_PRIORITY'
      'REALTIME_PRIORITY')
  end
  object ComboBox3: TComboBox
    Left = 136
    Top = 112
    Width = 273
    Height = 21
    ItemHeight = 13
    TabOrder = 6
    Text = #1042#1074#1077#1076#1110#1090#1100' '#1087#1088#1110#1086#1088#1110#1090#1077#1090
    Items.Strings = (
      'IDLE_PRIORITY'
      'NORMAL_PRIORITY'
      'REALTIME_PRIORITY')
  end
  object Edit1: TEdit
    Left = 416
    Top = 32
    Width = 129
    Height = 21
    TabOrder = 7
    Text = '100'
  end
  object Edit2: TEdit
    Left = 416
    Top = 72
    Width = 129
    Height = 21
    TabOrder = 8
    Text = '100'
  end
  object Edit3: TEdit
    Left = 416
    Top = 112
    Width = 129
    Height = 21
    TabOrder = 9
    Text = '100'
  end
  object Memo1: TMemo
    Left = 600
    Top = 8
    Width = 393
    Height = 225
    Lines.Strings = (
      'Memo1')
    TabOrder = 10
  end
  object Edit4: TEdit
    Left = 176
    Top = 208
    Width = 49
    Height = 21
    TabOrder = 11
  end
  object Button2: TButton
    Left = 248
    Top = 208
    Width = 329
    Height = 25
    Caption = #1042#1110#1076#1082#1088#1080#1090#1080' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1080
    TabOrder = 12
    OnClick = Button2Click
  end
  object MainMenu1: TMainMenu
    Left = 984
    Top = 65528
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
    end
    object N2: TMenuItem
      Caption = ' '
    end
    object N3: TMenuItem
      Caption = '                 '
      Visible = False
    end
    object N4: TMenuItem
      Caption = #1042#1080#1093#1110#1076
      OnClick = N4Click
    end
  end
end
