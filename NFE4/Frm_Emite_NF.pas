unit Frm_Emite_NF;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RxMemDS, Vcl.Grids, Vcl.DBGrids, RxDBCtrl,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls, RxToolEdit, RxCurrEdit,
  Vcl.Mask, System.ImageList, Vcl.ImgList, JvDBDotNetControls;

type
  TEmiteNF = class(TForm)
    pnf: TPanel;
    pCabecalho: TPanel;
    BtnEdt_Cliente: TButtonedEdit;
    DTP_Data_Saída: TDateTimePicker;
    DbLkCB_Natureza: TDBLookupComboBox;
    DTP_Emissao: TDateTimePicker;
    Edt_OrigemDoc: TEdit;
    Pn_Impostos: TPanel;
    Pn_Totais: TPanel;
    Pn_Transport: TPanel;
    pItens: TPanel;
    PGC_Itens: TPageControl;
    TBProdutos: TTabSheet;
    TBDocsRefs: TTabSheet;
    TBDuplicatas: TTabSheet;
    BtnEdt_Produto: TButtonedEdit;
    XDBG_ItensNF: TRxDBGrid;
    RxItensNF: TRxMemoryData;
    QryItensNF: TZQuery;
    DSItensNF: TDataSource;
    RxItensNFCODINTNF: TIntegerField;
    RxItensNFCODINTPRODUTO: TIntegerField;
    RxItensNFCOD_PRODUTO: TStringField;
    RxItensNFQTD_ITEM: TFloatField;
    RxItensNFVALOR_UNIT_ITEM: TCurrencyField;
    RxItensNFDESCONTO_ITEM: TCurrencyField;
    RxItensNFVALOR_BRUTO_ITEM: TCurrencyField;
    RxItensNFCST: TIntegerField;
    RxItensNFCFOP: TStringField;
    RxItensNFUNIDADE: TStringField;
    RxItensNFNOME_PRODUTO: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CB_Modalidade: TComboBox;
    DBLKCB_Transportadora: TDBLookupComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MSKEdt_Placa_Veiculo: TMaskEdit;
    DBLKCB_UF_Veiculo: TDBLookupComboBox;
    Label10: TLabel;
    Edt_Qtd: TEdit;
    Label11: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Label12: TLabel;
    CrrEdit_Frete: TCurrencyEdit;
    Label13: TLabel;
    CrrEdit_Seguro: TCurrencyEdit;
    Label14: TLabel;
    CrrEdit_Desconto: TCurrencyEdit;
    Label15: TLabel;
    Label16: TLabel;
    CrrEdt_Total: TCurrencyEdit;
    Label17: TLabel;
    CrrEdt_Pis: TCurrencyEdit;
    CrrEdt_COFINS: TCurrencyEdit;
    Label18: TLabel;
    Label19: TLabel;
    CrrEdt_CSLL: TCurrencyEdit;
    CrrEdt_BC_IRRF: TCurrencyEdit;
    Label20: TLabel;
    Label21: TLabel;
    CrrEdt_IRRF: TCurrencyEdit;
    CrrEdt_BC_Prev_Social: TCurrencyEdit;
    Label22: TLabel;
    Label23: TLabel;
    CrrEdt_Prev_Social: TCurrencyEdit;
    ImageList1: TImageList;
    QryClientes: TZQuery;
    DBLKLst_Consulta_Cliente: TJvDotNetDBLookupListBox;
    DsClientes: TDataSource;
    procedure BtnEdt_ClienteRightButtonClick(Sender: TObject);
    procedure DBLKLst_Consulta_ClienteClick(Sender: TObject);
    procedure BtnEdt_ClienteExit(Sender: TObject);
    procedure BtnEdt_ClienteKeyPress(Sender: TObject; var Key: Char);
    procedure DBLKLst_Consulta_ClienteKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EmiteNF: TEmiteNF;

implementation

{$R *.dfm}

uses DM_TheInfinity, Frm_Cadastro_Cliente;

procedure TEmiteNF.BtnEdt_ClienteExit(Sender: TObject);
begin
  if BtnEdt_Cliente.Tag = 0 then
    BtnEdt_Cliente.Clear;
end;

procedure TEmiteNF.BtnEdt_ClienteKeyPress(Sender: TObject; var Key: Char);
begin
  Case Key Of
  'A'..'Z',
  '0'..'9':
    begin
       With QryClientes do
        begin
          Sql.Clear;
          Sql.Add(' SELECT CODINTCLI                                        ');
          Sql.Add('       ,RAZAO_SOCIAL                                     ');
          Sql.Add('   FROM CLIENTES                                         ');
          Sql.Add('  WHERE RAZAO_SOCIAL  LIKE ''%'+BtnEdt_Cliente.Text+'%'' ');
          Sql.Add('     OR NOME_FANTASIA LIKE ''%'+BtnEdt_Cliente.Text+'%'' ');
          Sql.Add('     OR CNPJ LIKE   ''%'+BtnEdt_Cliente.Text+'%''        ');
          Sql.Add('  ORDER BY RAZAO_SOCIAL                                  ');
          Open;

          if (BtnEdt_Cliente.Text <> '') And (RecordCount <> 0) then
            Begin
              DBLKLst_Consulta_Cliente.Visible  := True;
              DBLKLst_Consulta_Cliente.RowCount := RecordCount;
            End else
                begin
                  DBLKLst_Consulta_Cliente.Visible := False;
                end;
        end;

    end;
  End;

end;

procedure TEmiteNF.BtnEdt_ClienteRightButtonClick(Sender: TObject);
begin
  if Cadastro_Clientes = nil then
    Cadastro_Clientes := TCadastro_Clientes.Create(Self);

  Cadastro_Clientes.ShowModal;

end;

procedure TEmiteNF.DBLKLst_Consulta_ClienteClick(Sender: TObject);
begin
  BtnEdt_Cliente.Text              := QryClientes.FieldByName('RAZAO_SOCIAL').AsString;
  BtnEdt_Cliente.Tag               := QryClientes.FieldByName('CODINTCLI').AsInteger;
  DBLKLst_Consulta_Cliente.Visible := False;
  DbLkCB_Natureza.SetFocus;
end;

procedure TEmiteNF.DBLKLst_Consulta_ClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
      BtnEdt_Cliente.Text              := QryClientes.FieldByName('RAZAO_SOCIAL').AsString;
      BtnEdt_Cliente.Tag               := QryClientes.FieldByName('CODINTCLI').AsInteger;
      DBLKLst_Consulta_Cliente.Visible := False;
      DbLkCB_Natureza.SetFocus;
    end;
end;

end.
