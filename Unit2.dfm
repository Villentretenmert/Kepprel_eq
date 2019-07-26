object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 500
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCanResize = FormCanResize
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox
    Left = 0
    Top = 0
    Width = 500
    Height = 500
  end
  object PaintBox2: TPaintBox
    Left = 0
    Top = 0
    Width = 500
    Height = 500
  end
  object PaintBox3: TPaintBox
    Left = 0
    Top = 0
    Width = 500
    Height = 500
    OnPaint = PaintBox3Paint
  end
end
