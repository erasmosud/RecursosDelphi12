object Form1: TForm1
  Left = 0
  Top = 0
  ClientHeight = 441
  ClientWidth = 318
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 318
    Height = 41
    Align = alTop
    Caption = 'Valores em Delphi - Matriz'
    Color = clSkyBlue
    Ctl3D = True
    DoubleBuffered = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentBackground = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 0
  end
  object btnArrayDinamico: TButton
    Left = 40
    Top = 103
    Width = 241
    Height = 25
    Caption = 'Matriz Din'#226'mica'
    TabOrder = 1
    OnClick = btnArrayDinamicoClick
  end
  object btnArrayFixo: TButton
    Left = 40
    Top = 57
    Width = 241
    Height = 25
    Caption = 'Matriz de tamanho fixo'
    TabOrder = 2
    OnClick = btnArrayFixoClick
  end
  object Button3: TButton
    Left = 40
    Top = 149
    Width = 241
    Height = 25
    Caption = 'Limpar Lista'
    TabOrder = 3
    OnClick = Button3Click
  end
  object mmoLista: TMemo
    Left = 0
    Top = 200
    Width = 318
    Height = 241
    Align = alBottom
    Lines.Strings = (
      'mmoLista')
    TabOrder = 4
  end
end
