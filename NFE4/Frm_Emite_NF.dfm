object EmiteNF: TEmiteNF
  Left = 0
  Top = 0
  Caption = 'Emiss'#227'o de NFE'
  ClientHeight = 702
  ClientWidth = 1098
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Calibri semilight'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 18
  object pnf: TPanel
    Left = 0
    Top = 0
    Width = 1098
    Height = 702
    Align = alClient
    TabOrder = 0
    object pCabecalho: TPanel
      Left = 1
      Top = 1
      Width = 1096
      Height = 128
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 17
        Top = 16
        Width = 49
        Height = 16
        Caption = 'Cliente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 412
        Top = 17
        Width = 61
        Height = 16
        Caption = 'Natureza:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 617
        Top = 16
        Width = 136
        Height = 16
        Caption = 'Data e Hora de Sa'#237'da'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 833
        Top = 16
        Width = 151
        Height = 16
        Caption = 'Data e Hora da Emiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 17
        Top = 67
        Width = 99
        Height = 16
        Caption = 'Origem do Doc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BtnEdt_Cliente: TButtonedEdit
        Left = 16
        Top = 35
        Width = 388
        Height = 26
        Images = ImageList1
        RightButton.DisabledImageIndex = 1
        RightButton.HotImageIndex = 2
        RightButton.ImageIndex = 0
        RightButton.PressedImageIndex = 2
        RightButton.Visible = True
        TabOrder = 0
        OnExit = BtnEdt_ClienteExit
        OnKeyPress = BtnEdt_ClienteKeyPress
        OnRightButtonClick = BtnEdt_ClienteRightButtonClick
      end
      object DTP_Data_Saída: TDateTimePicker
        Left = 617
        Top = 35
        Width = 210
        Height = 26
        Date = 43189.541277615740000000
        Time = 43189.541277615740000000
        TabOrder = 1
      end
      object DbLkCB_Natureza: TDBLookupComboBox
        Left = 410
        Top = 35
        Width = 201
        Height = 26
        TabOrder = 2
      end
      object DTP_Emissao: TDateTimePicker
        Left = 833
        Top = 35
        Width = 242
        Height = 26
        Date = 43189.541277615740000000
        Time = 43189.541277615740000000
        TabOrder = 3
      end
      object Edt_OrigemDoc: TEdit
        Left = 16
        Top = 86
        Width = 1059
        Height = 26
        TabOrder = 4
      end
    end
    object Pn_Impostos: TPanel
      Left = 1
      Top = 626
      Width = 1096
      Height = 75
      Align = alBottom
      TabOrder = 1
      object Label17: TLabel
        Left = 17
        Top = 16
        Width = 101
        Height = 16
        Caption = 'Valor ret. de Pis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 170
        Top = 16
        Width = 131
        Height = 16
        Caption = 'Valor ret. de COFINS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 322
        Top = 16
        Width = 116
        Height = 16
        Caption = 'Valor ret. de CSLL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 473
        Top = 16
        Width = 72
        Height = 16
        Caption = 'BC de IRRF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 626
        Top = 16
        Width = 112
        Height = 16
        Caption = 'Valor ret. de IRRF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 778
        Top = 16
        Width = 114
        Height = 16
        Caption = 'BC de prev. social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 930
        Top = 16
        Width = 154
        Height = 16
        Caption = 'Valor ret. de prev. social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CrrEdt_Pis: TCurrencyEdit
        Left = 15
        Top = 38
        Width = 134
        Height = 26
        TabOrder = 0
      end
      object CrrEdt_COFINS: TCurrencyEdit
        Left = 168
        Top = 38
        Width = 134
        Height = 26
        TabOrder = 1
      end
      object CrrEdt_CSLL: TCurrencyEdit
        Left = 320
        Top = 38
        Width = 134
        Height = 26
        TabOrder = 2
      end
      object CrrEdt_BC_IRRF: TCurrencyEdit
        Left = 471
        Top = 38
        Width = 134
        Height = 26
        TabOrder = 3
      end
      object CrrEdt_IRRF: TCurrencyEdit
        Left = 624
        Top = 38
        Width = 134
        Height = 26
        TabOrder = 4
      end
      object CrrEdt_BC_Prev_Social: TCurrencyEdit
        Left = 776
        Top = 38
        Width = 134
        Height = 26
        TabOrder = 5
      end
      object CrrEdt_Prev_Social: TCurrencyEdit
        Left = 928
        Top = 38
        Width = 156
        Height = 26
        TabOrder = 6
      end
    end
    object Pn_Totais: TPanel
      Left = 1
      Top = 551
      Width = 1096
      Height = 75
      Align = alBottom
      TabOrder = 2
      object Label13: TLabel
        Left = 17
        Top = 16
        Width = 33
        Height = 16
        Caption = 'Frete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 170
        Top = 16
        Width = 46
        Height = 16
        Caption = 'Seguro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 322
        Top = 16
        Width = 58
        Height = 16
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 853
        Top = 16
        Width = 31
        Height = 16
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CrrEdit_Frete: TCurrencyEdit
        Left = 15
        Top = 38
        Width = 134
        Height = 26
        TabOrder = 0
      end
      object CrrEdit_Seguro: TCurrencyEdit
        Left = 168
        Top = 38
        Width = 134
        Height = 26
        TabOrder = 1
      end
      object CrrEdit_Desconto: TCurrencyEdit
        Left = 320
        Top = 38
        Width = 134
        Height = 26
        TabOrder = 2
      end
      object CrrEdt_Total: TCurrencyEdit
        Left = 853
        Top = 38
        Width = 222
        Height = 26
        TabOrder = 3
      end
    end
    object Pn_Transport: TPanel
      Left = 1
      Top = 476
      Width = 1096
      Height = 75
      Align = alBottom
      TabOrder = 3
      object Label7: TLabel
        Left = 236
        Top = 9
        Width = 96
        Height = 16
        Caption = 'Transportadora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 16
        Top = 8
        Width = 132
        Height = 16
        Caption = 'Modalidade de Frete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 567
        Top = 9
        Width = 107
        Height = 16
        Caption = 'Placa do Ve'#237'culo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 682
        Top = 10
        Width = 88
        Height = 16
        Caption = 'UF do Ve'#237'culo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Calibri semilight'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CB_Modalidade: TComboBox
        Left = 16
        Top = 28
        Width = 212
        Height = 26
        TabOrder = 0
        Text = 'CB_Modalidade'
      end
      object DBLKCB_Transportadora: TDBLookupComboBox
        Left = 234
        Top = 27
        Width = 327
        Height = 26
        TabOrder = 1
      end
      object MSKEdt_Placa_Veiculo: TMaskEdit
        Left = 567
        Top = 28
        Width = 107
        Height = 26
        CharCase = ecUpperCase
        EditMask = 'AAA\-9999;1;_'
        ImeMode = imAlpha
        MaxLength = 8
        TabOrder = 2
        Text = '   -    '
      end
      object DBLKCB_UF_Veiculo: TDBLookupComboBox
        Left = 680
        Top = 28
        Width = 105
        Height = 26
        TabOrder = 3
      end
    end
    object pItens: TPanel
      Left = 1
      Top = 129
      Width = 1096
      Height = 347
      Align = alClient
      TabOrder = 4
      object PGC_Itens: TPageControl
        Left = 1
        Top = 1
        Width = 1094
        Height = 345
        ActivePage = TBProdutos
        Align = alClient
        TabOrder = 0
        object TBProdutos: TTabSheet
          Caption = 'Produtos'
          object Label6: TLabel
            Left = 12
            Top = 8
            Width = 28
            Height = 16
            Caption = 'Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri semilight'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label11: TLabel
            Left = 848
            Top = 9
            Width = 74
            Height = 16
            Caption = 'Quantidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri semilight'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label12: TLabel
            Left = 980
            Top = 9
            Width = 87
            Height = 16
            Caption = 'Valor Unit'#225'rio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Calibri semilight'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object BtnEdt_Produto: TButtonedEdit
            Left = 11
            Top = 30
            Width = 831
            Height = 26
            TabOrder = 0
          end
          object XDBG_ItensNF: TRxDBGrid
            Left = 11
            Top = 72
            Width = 1059
            Height = 257
            DataSource = DSItensNF
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Calibri semilight'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -16
            TitleFont.Name = 'Calibri semilight'
            TitleFont.Style = [fsBold]
            RowColor2 = 16776176
            Columns = <
              item
                Expanded = False
                FieldName = 'COD_PRODUTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri semilight'
                Font.Style = []
                Title.Caption = 'C'#243'd. Produto'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Calibri semilight'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_PRODUTO'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri semilight'
                Font.Style = []
                Title.Caption = 'Nome Produto'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Calibri semilight'
                Title.Font.Style = [fsBold]
                Width = 232
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UNIDADE'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri semilight'
                Font.Style = []
                Title.Caption = 'Unidade'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Calibri semilight'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'QTD_ITEM'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri semilight'
                Font.Style = []
                Title.Caption = 'Quantidade'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Calibri semilight'
                Title.Font.Style = [fsBold]
                Width = 107
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR_UNIT_ITEM'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri semilight'
                Font.Style = []
                Title.Caption = 'Valor Unit'#225'rio'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Calibri semilight'
                Title.Font.Style = [fsBold]
                Width = 130
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCONTO_ITEM'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri semilight'
                Font.Style = []
                Title.Caption = 'Desconto'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Calibri semilight'
                Title.Font.Style = [fsBold]
                Width = 94
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CST'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri semilight'
                Font.Style = []
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Calibri semilight'
                Title.Font.Style = [fsBold]
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CFOP'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri semilight'
                Font.Style = []
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Calibri semilight'
                Title.Font.Style = [fsBold]
                Width = 69
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR_BRUTO_ITEM'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Calibri semilight'
                Font.Style = []
                Title.Caption = 'Total'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Calibri semilight'
                Title.Font.Style = [fsBold]
                Width = 94
                Visible = True
              end>
          end
          object Edt_Qtd: TEdit
            Left = 848
            Top = 30
            Width = 82
            Height = 26
            TabOrder = 2
          end
          object CurrencyEdit1: TCurrencyEdit
            Left = 936
            Top = 30
            Width = 134
            Height = 26
            TabOrder = 3
          end
        end
        object TBDocsRefs: TTabSheet
          Caption = 'Documentos Referenciados'
          ImageIndex = 1
        end
        object TBDuplicatas: TTabSheet
          Caption = 'Duplicatas'
          ImageIndex = 2
        end
      end
    end
    object DBLKLst_Consulta_Cliente: TJvDotNetDBLookupListBox
      Left = 16
      Top = 60
      Width = 389
      Height = 94
      KeyField = 'CODINTCLI'
      ListField = 'RAZAO_SOCIAL'
      ListSource = DsClientes
      TabOrder = 5
      Visible = False
      OnClick = DBLKLst_Consulta_ClienteClick
      OnKeyPress = DBLKLst_Consulta_ClienteKeyPress
    end
  end
  object RxItensNF: TRxMemoryData
    FieldDefs = <>
    Left = 136
    Top = 448
    object RxItensNFCODINTNF: TIntegerField
      FieldName = 'CODINTNF'
    end
    object RxItensNFCODINTPRODUTO: TIntegerField
      FieldName = 'CODINTPRODUTO'
    end
    object RxItensNFCOD_PRODUTO: TStringField
      FieldName = 'COD_PRODUTO'
      Size = 0
    end
    object RxItensNFUNIDADE: TStringField
      FieldName = 'UNIDADE'
    end
    object RxItensNFQTD_ITEM: TFloatField
      FieldName = 'QTD_ITEM'
    end
    object RxItensNFVALOR_UNIT_ITEM: TCurrencyField
      FieldName = 'VALOR_UNIT_ITEM'
    end
    object RxItensNFDESCONTO_ITEM: TCurrencyField
      FieldName = 'DESCONTO_ITEM'
    end
    object RxItensNFVALOR_BRUTO_ITEM: TCurrencyField
      FieldName = 'VALOR_BRUTO_ITEM'
    end
    object RxItensNFCST: TIntegerField
      FieldName = 'CST'
    end
    object RxItensNFCFOP: TStringField
      FieldName = 'CFOP'
    end
    object RxItensNFNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
    end
  end
  object QryItensNF: TZQuery
    Connection = Dm_Infinity.Con_TheInfinity
    Params = <>
    Left = 80
    Top = 448
  end
  object DSItensNF: TDataSource
    DataSet = RxItensNF
    Left = 24
    Top = 448
  end
  object ImageList1: TImageList
    AllocBy = 50
    DrawingStyle = dsTransparent
    Height = 24
    Width = 24
    Left = 544
    Top = 368
    Bitmap = {
      494C010103003800480018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFC08C3EFFD0AA
      70FFD0AA70FFC08C3EFFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFCEA66AFFFFFF
      FFFFFFFFFFFFCEA66AFFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFD6D6D6FFFFFF
      FFFFFFFFFFFFD6D6D6FFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF7E6D5DFFFFFF
      FFFFFFFFFFFF7E6D5DFF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFCEA66AFFFFFF
      FFFFFFFFFFFFCEA66AFFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFD6D6D6FFFFFF
      FFFFFFFFFFFFD6D6D6FFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF7E6D5DFFFFFF
      FFFFFFFFFFFF7E6D5DFF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFC08C3EFFCEA66AFFCEA66AFFDDC197FFFFFF
      FFFFFFFFFFFFDDC197FFCEA66AFFCEA66AFFC08C3EFFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFD6D6D6FFD6D6D6FFDEDEDEFFFFFF
      FFFFFFFFFFFFDEDEDEFFD6D6D6FFD6D6D6FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF7E6D5DFF7E6D5DFF988A7DFFFFFF
      FFFFFFFFFFFF988A7DFF7E6D5DFF7E6D5DFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFD0AA70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0AA70FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFD0AA70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0AA70FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFC08C3EFFCEA66AFFCEA66AFFDDC197FFFFFF
      FFFFFFFFFFFFDDC197FFCEA66AFFCEA66AFFC08C3EFFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFD6D6D6FFD6D6D6FFDEDEDEFFFFFF
      FFFFFFFFFFFFDEDEDEFFD6D6D6FFD6D6D6FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF7E6D5DFF7E6D5DFF988A7DFFFFFF
      FFFFFFFFFFFF988A7DFF7E6D5DFF7E6D5DFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFCEA66AFFFFFF
      FFFFFFFFFFFFCEA66AFFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFD6D6D6FFFFFF
      FFFFFFFFFFFFD6D6D6FFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF7E6D5DFFFFFF
      FFFFFFFFFFFF7E6D5DFF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFCEA66AFFFFFF
      FFFFFFFFFFFFCEA66AFFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFD6D6D6FFFFFF
      FFFFFFFFFFFFD6D6D6FFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF7E6D5DFFFFFF
      FFFFFFFFFFFF7E6D5DFF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFC08C3EFFD0AA
      70FFD0AA70FFC08C3EFFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB97F29FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB97F29FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB98029FFB980
      29FFB98029FFB98029FFB98029FFB98029FFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
      CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E4934FF5E49
      34FF5E4934FF5E4934FF5E4934FF5E4934FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object QryClientes: TZQuery
    Connection = Dm_Infinity.Con_TheInfinity
    Params = <>
    Left = 80
    Top = 400
  end
  object DsClientes: TDataSource
    DataSet = QryClientes
    Left = 24
    Top = 400
  end
end
