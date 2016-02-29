object Form4: TForm4
  Left = 477
  Top = 209
  Width = 339
  Height = 290
  Caption = 'Highscores'
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
    Left = 80
    Top = 8
    Width = 156
    Height = 30
    Caption = 'Highscores'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -24
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object redt1: TRichEdit
    Left = 24
    Top = 48
    Width = 273
    Height = 145
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -21
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ImeName = 'Ukrainian'
    Lines.Strings = (
      '')
    ParentFont = False
    PlainText = True
    TabOrder = 0
  end
  object btn1: TButton
    Left = 24
    Top = 200
    Width = 129
    Height = 41
    Caption = 'back'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 160
    Top = 200
    Width = 139
    Height = 41
    Caption = 'Main menu'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Showcard Gothic'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btn2Click
  end
end
