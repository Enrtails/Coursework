object Form3: TForm3
  Left = 437
  Top = 288
  Width = 535
  Height = 196
  Caption = 'Your result!'
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clBlack
  Font.Height = -13
  Font.Name = 'Consolas'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object lbl1: TLabel
    Left = 96
    Top = 24
    Width = 138
    Height = 27
    Caption = 'You gained '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 248
    Top = 24
    Width = 5
    Height = 27
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 320
    Top = 24
    Width = 89
    Height = 27
    Caption = 'points!'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 80
    Top = 64
    Width = 221
    Height = 23
    Caption = 'Enter your nickname:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Showcard Gothic'
    Font.Style = []
    ParentFont = False
  end
  object btn2: TButton
    Left = 16
    Top = 104
    Width = 233
    Height = 41
    Caption = 'To main menu '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Showcard Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 264
    Top = 104
    Width = 233
    Height = 41
    Caption = 'Highscores'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Showcard Gothic'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btn3Click
  end
  object edt1: TEdit
    Left = 312
    Top = 64
    Width = 121
    Height = 27
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Consolas'
    Font.Style = [fsBold]
    ImeName = 'Ukrainian'
    ParentFont = False
    TabOrder = 2
  end
end
