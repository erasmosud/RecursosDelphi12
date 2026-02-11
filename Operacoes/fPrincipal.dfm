object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Fun'#231#245'es R'#225'pidas'
  ClientHeight = 686
  ClientWidth = 800
  Color = clActiveBorder
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  DesignSize = (
    800
    686)
  TextHeight = 15
  object Label4: TLabel
    Left = 40
    Top = 170
    Width = 10
    Height = 50
    ParentCustomHint = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdLeftToRight
    Color = clYellow
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Segoe UI Black'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    Transparent = True
    StyleElements = []
    StyleName = 'Windows'
  end
  object lblResultado: TLabel
    Left = 32
    Top = 162
    Width = 313
    Height = 50
    ParentCustomHint = False
    Anchors = [akLeft, akTop, akRight, akBottom]
    BiDiMode = bdLeftToRight
    Color = clYellow
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Segoe UI Black'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    Transparent = True
    StyleElements = []
    StyleName = 'Windows'
  end
  object btnCalcular: TButton
    Left = 488
    Top = 162
    Width = 265
    Height = 50
    Caption = 'Dist'#227'ncia em KM'
    TabOrder = 0
    OnClick = btnCalcularClick
  end
  object pnlOrigem: TPanel
    Left = 32
    Top = 25
    Width = 313
    Height = 131
    TabOrder = 1
    object Label1: TLabel
      Left = 29
      Top = 42
      Width = 87
      Height = 28
      Caption = 'Latitude:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 9
      Top = 88
      Width = 107
      Height = 28
      Caption = 'Longitude:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 11
      Top = 5
      Width = 273
      Height = 31
      Caption = 'Coordenadas de Origem'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtLatOrigem: TEdit
      Left = 122
      Top = 42
      Width = 170
      Height = 34
      Color = clGainsboro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '-23,5505'
    end
    object edtLonOrigem: TEdit
      Left = 122
      Top = 88
      Width = 170
      Height = 36
      Color = clGainsboro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '-46,6333'
    end
  end
  object pnlDestino: TPanel
    Left = 432
    Top = 25
    Width = 321
    Height = 131
    TabOrder = 2
    object lblDestino: TLabel
      Left = 28
      Top = 5
      Width = 275
      Height = 31
      Caption = 'Coordenadas de Destino'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblLatitude: TLabel
      Left = 37
      Top = 42
      Width = 87
      Height = 28
      Caption = 'Latitude:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblLongitude: TLabel
      Left = 19
      Top = 88
      Width = 107
      Height = 28
      Caption = 'Longitude:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtLonDestino: TEdit
      Left = 132
      Top = 88
      Width = 170
      Height = 36
      Color = clGainsboro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = '-43,2105'
    end
    object edtLatDestino: TEdit
      Left = 130
      Top = 42
      Width = 170
      Height = 36
      Color = clGainsboro
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '-22,9519'
    end
  end
  object btnOperacaoSimples: TButton
    Left = 488
    Top = 233
    Width = 265
    Height = 50
    Caption = 'Opera'#231#245'es Matem'#225'tica Simples'
    TabOrder = 3
    OnClick = btnOperacaoSimplesClick
  end
  object btnConcatenar: TButton
    Left = 488
    Top = 338
    Width = 265
    Height = 50
    Caption = 'Concatena'#231#227'o Simples'
    TabOrder = 4
    OnClick = btnConcatenarClick
  end
  object edtPrimeiroValor: TEdit
    Left = 32
    Top = 235
    Width = 145
    Height = 36
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Text = '4'
  end
  object edtSegundoValor: TEdit
    Left = 200
    Top = 235
    Width = 145
    Height = 36
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = '2'
  end
end
