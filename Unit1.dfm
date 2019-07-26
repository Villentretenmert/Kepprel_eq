object Form1: TForm1
  Left = 221
  Top = 186
  Caption = #1047#1072#1076#1072#1095#1072' '#1050#1077#1087#1087#1083#1077#1088#1072'. '#1052#1072#1082#1072#1088#1086#1074' '#1044#1084#1080#1090#1088#1080#1081' '#1057#1077#1088#1075#1077#1077#1074#1080#1095' '#1060'-101'
  ClientHeight = 592
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 0
    Top = 0
    Width = 530
    Height = 537
    Color = clGradientActiveCaption
    DragCursor = crCross
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    OnClick = PaintBox1Click
    OnPaint = PaintBox1Paint
  end
  object PaintBox2: TPaintBox
    Left = 0
    Top = 0
    Width = 530
    Height = 537
    OnClick = PaintBox2Click
  end
  object Label16: TLabel
    Left = 19
    Top = 571
    Width = 48
    Height = 13
    Caption = '________'
    Visible = False
  end
  object GroupBox2: TGroupBox
    Left = 529
    Top = 0
    Width = 264
    Height = 537
    Caption = #1055#1091#1083#1100#1090' '#1091#1087#1088#1072#1074#1083#1077#1085#1080#1103
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 15
      Top = 19
      Width = 234
      Height = 134
      Caption = #1055#1077#1088#1074#1086#1077' '#1090#1077#1083#1086
      TabOrder = 0
      object Panel2: TPanel
        Left = 5
        Top = 18
        Width = 224
        Height = 34
        TabOrder = 0
        object Label2: TLabel
          Left = 8
          Top = 8
          Width = 23
          Height = 13
          Caption = 'X1 ='
        end
        object Label1: TLabel
          Left = 40
          Top = 8
          Width = 18
          Height = 13
          Caption = '___'
        end
        object TrackBar1: TTrackBar
          Left = 70
          Top = 5
          Width = 150
          Height = 26
          Max = 150
          Min = 10
          Position = 15
          ShowSelRange = False
          TabOrder = 0
          TickStyle = tsNone
          OnChange = TrackBar1Change
        end
      end
      object Panel3: TPanel
        Left = 5
        Top = 52
        Width = 224
        Height = 34
        TabOrder = 1
        object Label3: TLabel
          Left = 8
          Top = 8
          Width = 29
          Height = 13
          Caption = 'VY1 ='
        end
        object Label4: TLabel
          Left = 40
          Top = 8
          Width = 18
          Height = 13
          Caption = '___'
        end
        object TrackBar2: TTrackBar
          Left = 70
          Top = 5
          Width = 150
          Height = 26
          Max = 1000
          Min = 2
          Position = 115
          ShowSelRange = False
          TabOrder = 0
          TickStyle = tsNone
          OnChange = TrackBar2Change
        end
      end
      object Panel4: TPanel
        Left = 5
        Top = 86
        Width = 224
        Height = 34
        TabOrder = 2
        object Label5: TLabel
          Left = 8
          Top = 8
          Width = 25
          Height = 13
          Caption = 'M1 ='
        end
        object Label6: TLabel
          Left = 40
          Top = 8
          Width = 18
          Height = 13
          Caption = '___'
        end
        object TrackBar3: TTrackBar
          Left = 70
          Top = 5
          Width = 150
          Height = 26
          Max = 399
          Position = 150
          ShowSelRange = False
          TabOrder = 0
          TickStyle = tsNone
          OnChange = TrackBar3Change
        end
      end
    end
    object GroupBox3: TGroupBox
      Left = 15
      Top = 316
      Width = 234
      Height = 213
      Caption = #1043#1083#1086#1073#1072#1083#1100#1085#1099#1077' '#1085#1072#1089#1090#1088#1086#1081#1082#1080
      TabOrder = 1
      object Label7: TLabel
        Left = 20
        Top = 50
        Width = 21
        Height = 13
        Caption = 'dt ='
      end
      object Label8: TLabel
        Left = 47
        Top = 50
        Width = 18
        Height = 13
        Caption = '___'
      end
      object Button1: TButton
        Left = 16
        Top = 69
        Width = 36
        Height = 25
        Caption = #1055#1091#1089#1082
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 58
        Top = 69
        Width = 78
        Height = 25
        Caption = #1057#1090#1086#1087
        TabOrder = 1
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 142
        Top = 69
        Width = 75
        Height = 25
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        TabOrder = 2
        OnClick = Button3Click
      end
      object TrackBar4: TTrackBar
        Left = 13
        Top = 18
        Width = 150
        Height = 26
        Max = 9
        Min = 1
        PageSize = 3
        Position = 4
        ShowSelRange = False
        TabOrder = 3
        OnChange = TrackBar4Change
      end
    end
    object Panel1: TPanel
      Left = 16
      Top = 432
      Width = 232
      Height = 74
      TabOrder = 2
      object Label9: TLabel
        Left = 10
        Top = 28
        Width = 134
        Height = 13
        Caption = #1055#1086#1089#1083#1077' '#1074#1074#1086#1076#1072' '#1085#1072#1078#1072#1090#1100' enter'
      end
      object CheckBox1: TCheckBox
        Left = 10
        Top = 5
        Width = 209
        Height = 17
        Caption = #1054#1095#1080#1089#1090#1082#1072' '#1089' '#1095#1072#1089#1090#1086#1090#1086#1081' '#1074' '#1084#1080#1083#1080#1089#1077#1082#1091#1085#1076#1072#1093
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object Edit1: TEdit
        Left = 10
        Top = 43
        Width = 121
        Height = 21
        TabOrder = 1
        Text = '1'
        OnKeyPress = Edit1KeyPress
      end
      object TrackBar5: TTrackBar
        Left = 129
        Top = 43
        Width = 96
        Height = 26
        Max = 2000
        Min = 1
        Position = 1
        ShowSelRange = False
        TabOrder = 2
        TickStyle = tsNone
        OnChange = TrackBar5Change
      end
    end
    object GroupBox4: TGroupBox
      Left = 15
      Top = 176
      Width = 234
      Height = 134
      Caption = #1042#1090#1086#1088#1086#1077' '#1090#1077#1083#1086
      TabOrder = 3
      object Panel5: TPanel
        Left = 5
        Top = 18
        Width = 224
        Height = 34
        TabOrder = 0
        object Label10: TLabel
          Left = 8
          Top = 8
          Width = 23
          Height = 13
          Caption = 'X2 ='
        end
        object Label11: TLabel
          Left = 40
          Top = 8
          Width = 18
          Height = 13
          Caption = '___'
        end
        object TrackBar6: TTrackBar
          Left = 70
          Top = 5
          Width = 150
          Height = 26
          Max = 150
          Min = 10
          Position = 60
          ShowSelRange = False
          TabOrder = 0
          TickStyle = tsNone
          OnChange = TrackBar6Change
        end
      end
      object Panel6: TPanel
        Left = 5
        Top = 52
        Width = 224
        Height = 34
        TabOrder = 1
        object Label12: TLabel
          Left = 8
          Top = 8
          Width = 18
          Height = 13
          Caption = 'VY2'
        end
        object Label13: TLabel
          Left = 40
          Top = 8
          Width = 18
          Height = 13
          Caption = '___'
        end
        object TrackBar7: TTrackBar
          Left = 70
          Top = 5
          Width = 150
          Height = 26
          Max = 1000
          Min = 2
          Position = 180
          ShowSelRange = False
          TabOrder = 0
          TickStyle = tsNone
          OnChange = TrackBar7Change
        end
      end
      object Panel7: TPanel
        Left = 5
        Top = 86
        Width = 224
        Height = 34
        TabOrder = 2
        object Label14: TLabel
          Left = 8
          Top = 8
          Width = 25
          Height = 13
          Caption = 'M2 ='
        end
        object Label15: TLabel
          Left = 40
          Top = 8
          Width = 18
          Height = 13
          Caption = '___'
        end
        object TrackBar8: TTrackBar
          Left = 70
          Top = 5
          Width = 150
          Height = 26
          Max = 399
          Position = 150
          ShowSelRange = False
          TabOrder = 0
          TickStyle = tsNone
          OnChange = TrackBar8Change
        end
      end
    end
    object CheckBox2: TCheckBox
      Left = 28
      Top = 507
      Width = 181
      Height = 17
      Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1074#1079#1072#1080#1084#1086#1076#1077#1081#1089#1090#1074#1080#1077
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
  end
  object TrackBar9: TTrackBar
    Left = 6
    Top = 543
    Width = 787
    Height = 22
    Max = 1000
    Min = 1
    Position = 1
    TabOrder = 1
    OnChange = TrackBar9Change
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer1Timer
    Left = 200
    Top = 104
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 1
    OnTimer = Timer2Timer
    Left = 368
    Top = 136
  end
end
