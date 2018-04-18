object Pesquisa: TPesquisa
  Left = 0
  Top = 0
  Caption = 'Pesquisa'
  ClientHeight = 433
  ClientWidth = 701
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Calibri semilight'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object PN_Topo: TPanel
    Left = 0
    Top = 0
    Width = 701
    Height = 73
    Align = alTop
    TabOrder = 0
    object Lb_Filtro: TLabel
      Left = 16
      Top = 8
      Width = 39
      Height = 19
      Caption = 'Filtro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri semilight'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 175
      Top = 8
      Width = 71
      Height = 19
      Caption = 'Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri semilight'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edt_Pesquisa: TEdit
      Left = 175
      Top = 32
      Width = 490
      Height = 26
      TabOrder = 0
      OnKeyPress = Edt_PesquisaKeyPress
    end
    object CB_Pesquisa: TComboBoxEx
      Left = 17
      Top = 31
      Width = 145
      Height = 27
      ItemsEx = <>
      TabOrder = 1
    end
  end
  object PN_Grid: TPanel
    Left = 0
    Top = 73
    Width = 701
    Height = 360
    Align = alClient
    TabOrder = 1
    object DBG_Pesquisa: TDBGrid
      Left = 1
      Top = 1
      Width = 699
      Height = 358
      Align = alClient
      DataSource = DSPesquisa
      DrawingStyle = gdsGradient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Calibri semilight'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Calibri semilight'
      TitleFont.Style = [fsBold]
      OnDblClick = DBG_PesquisaDblClick
      OnTitleClick = DBG_PesquisaTitleClick
    end
  end
  object DSPesquisa: TDataSource
    DataSet = QryPesquisa
    Left = 344
    Top = 224
  end
  object QryPesquisa: TZQuery
    Connection = Dm_Infinity.Con_TheInfinity
    Params = <>
    Left = 408
    Top = 224
  end
end
