object Form4: TForm4
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Form4'
  ClientHeight = 812
  ClientWidth = 1117
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  TextHeight = 15
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 0
    Width = 1117
    Height = 812
    Align = alClient
    TabOrder = 0
    ControlData = {
      4C0000005B5C0000234300000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object sButton1: TsButton
    Left = 24
    Top = 720
    Width = 209
    Height = 49
    Caption = #1040#1083#1092#1072#1074#1080#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Flyer Shadow'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = sButton1Click
  end
  object ComboBox1: TComboBox
    Left = 248
    Top = 184
    Width = 145
    Height = 23
    TabOrder = 2
    Text = 'ComboBox1'
    Visible = False
  end
  object MediaPlayer1: TMediaPlayer
    Left = 440
    Top = 392
    Width = 253
    Height = 30
    DoubleBuffered = True
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 3
  end
  object sButton2: TsButton
    Left = 24
    Top = 144
    Width = 209
    Height = 49
    Caption = #1047#1074#1091#1095#1072#1085#1080#1077
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Flyer Shadow'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = sButton2Click
  end
end
