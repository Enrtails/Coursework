object Form1: TForm1
  Left = 360
  Top = 198
  Width = 656
  Height = 433
  Caption = 'Do you want to play my GAME?'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'Consolas'
  Font.Style = [fsBold]
  Menu = mm1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object lbl1: TLabel
    Left = 16
    Top = 56
    Width = 624
    Height = 24
    Caption = 'You just have to choose the right name of the song. '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 160
    Top = 96
    Width = 324
    Height = 24
    Caption = 'You have only three lifes. '
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 192
    Top = 16
    Width = 252
    Height = 24
    Caption = 'The rules are simple:'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btn1: TSpeedButton
    Left = 136
    Top = 232
    Width = 369
    Height = 63
    Caption = 'Let'#39's have some  fun!'
    Flat = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -29
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btn1Click
  end
  object img1: TImage
    Left = 112
    Top = 168
    Width = 418
    Height = 57
  end
  object img2: TImage
    Left = 112
    Top = 304
    Width = 418
    Height = 57
  end
  object img4: TImage
    Left = 32
    Top = 224
    Width = 81
    Height = 81
  end
  object img3: TImage
    Left = 528
    Top = 224
    Width = 81
    Height = 81
  end
  object lbl4: TLabel
    Left = 80
    Top = 136
    Width = 480
    Height = 24
    Caption = #39#39'May the force be with you!'#39#39'  Han Solo'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clMaroon
    Font.Height = -21
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object mp1: TMediaPlayer
    Left = 600
    Top = 24
    Width = 253
    Height = 30
    Visible = False
    TabOrder = 0
  end
  object tmr1: TTimer
    Interval = 110
    OnTimer = tmr1Timer
    Left = 616
    Top = 88
  end
  object mm1: TMainMenu
    Left = 624
    Top = 160
    object About1: TMenuItem
      Caption = 'About'
      OnClick = About1Click
    end
    object Feedback1: TMenuItem
      Caption = 'Feedback'
      OnClick = Feedback1Click
    end
    object Exit1: TMenuItem
      Caption = 'Exit'
      OnClick = Exit1Click
    end
  end
end
