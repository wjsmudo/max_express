unit Frm_Cadastro_Natureza_Operacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ButtonGroup, AdvMetroButton,
  Vcl.ExtCtrls, Vcl.StdCtrls, JvExControls, JvDBLookup, Data.DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TNatureza_Operacao = class(TForm)
    p_topo: TPanel;
    FlowPanel1: TFlowPanel;
    Btn_Novo: TAdvMetroButton;
    Btn_Gravar: TAdvMetroButton;
    Btn_Edita: TAdvMetroButton;
    Btn_Exclui: TAdvMetroButton;
    Btn_Pesquisa: TAdvMetroButton;
    BtnGrp_PFPJ: TButtonGroup;
    PN_Conteudo: TPanel;
    LbEdt_Nome_Natureza: TLabeledEdit;
    DBLKCB_CFOP_Dentro_Estado: TJvDBLookupCombo;
    Label3: TLabel;
    Label1: TLabel;
    Panel1: TPanel;
    Chk_Calculo_Automatico_IBPT: TCheckBox;
    DsCFOP: TDataSource;
    Qry_CFOP: TZQuery;
    QryNatureza: TZQuery;
    DBLKCB_CFOP_Fora_Estado: TJvDBLookupCombo;
    Procedure GravaCadastro;
    Procedure LimpaCampos;
    Function ValidaCampos : Boolean;
    procedure Btn_NovoClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Natureza_Operacao: TNatureza_Operacao;

implementation

{$R *.dfm}

uses DM_TheInfinity, Global;

procedure TNatureza_Operacao.Btn_GravarClick(Sender: TObject);
begin
  if Not ValidaCampos then
    Exit
  Else
    GravaCadastro;
end;

procedure TNatureza_Operacao.Btn_NovoClick(Sender: TObject);
begin
  LimpaCampos;
  LbEdt_Nome_Natureza.SetFocus;
end;

procedure TNatureza_Operacao.GravaCadastro;
begin
 if Not Dm_Infinity.Con_TheInfinity.InTransaction then
    Dm_Infinity.Con_TheInfinity.StartTransaction;

  With QryNatureza do
    begin
      Sql.Clear;
      Sql.Add(' INSERT INTO NATUREZA_OPERACAO             ');
      Sql.Add('             (CFOP_DENTRO_ESTADO_ID        ');
      Sql.Add('             ,CFOP_FORA_ESTADO_ID          ');
      Sql.Add('             ,NOME_NATUREZA_OPERACAO       ');
      Sql.Add('             ,FLG_CALCULO_AUTOMATICO       ');
      Sql.Add('        VALUES                             ');
            Sql.Add('       (:PCFOP_DENTRO_ESTADO_ID      ');
      Sql.Add('             ,:PCFOP_FORA_ESTADO_ID        ');
      Sql.Add('             ,:PNOME_NATUREZA_OPERACAO     ');
      Sql.Add('             ,:PFLG_CALCULO_AUTOMATICO)    ');

      ParamByName('PCFOP_DENTRO_ESTADO_ID'  ).AsInteger := DBLKCB_CFOP_Dentro_Estado.KeyValue;
      ParamByName('PCFOP_FORA_ESTADO_ID'    ).AsInteger := DBLKCB_CFOP_Fora_Estado.KeyValue;
      ParamByName('PNOME_NATUREZA_OPERACAO' ).AsString  := LbEdt_Nome_Natureza.Text;
      ParamByName('PFLG_CALCULO_AUTOMATICO' ).AsString  := IIF(Chk_Calculo_Automatico_IBPT.Checked, 'S','N');

      Try
       ExecSql;
       Dm_Infinity.Con_TheInfinity.Commit;
       MensagemDlG('Natureza cadastrada com sucesso!','C');
       Btn_Novo.Click;

      Except
       Dm_Infinity.Con_TheInfinity.Rollback;
       MensagemDlg('Houveram problemas na gravação do cadastro. Tente novamente.','E');
      End;
    end;
end;

procedure TNatureza_Operacao.LimpaCampos;
begin
  LbEdt_Nome_Natureza.Clear;
  DBLKCB_CFOP_Dentro_Estado.DisplayValues[-1];
  DBLKCB_CFOP_Fora_Estado.DisplayValues[-1];
  Chk_Calculo_Automatico_IBPT.Checked := False;
end;

function TNatureza_Operacao.ValidaCampos: Boolean;
begin
  if LbEdt_Nome_Natureza.Text <> '' then
    begin
      MensagemDlg('Digite um nome para a Natureza de Operação!','I');
      LbEdt_Nome_Natureza.SetFocus;
      Result := False;
      Exit;
    end;

  if DBLKCB_CFOP_Dentro_Estado.DisplayValue = '' then
    begin
      MensagemDlg('Selecione uma CFOP para operações Dentro do Estado','I');
      DBLKCB_CFOP_Dentro_Estado.SetFocus;
      Result := False;
      Exit;
    end;

  if DBLKCB_CFOP_Fora_Estado.DisplayValue = '' then
    begin
      MensagemDlg('Selecione uma CFOP para operações Fora do Estado','I');
      DBLKCB_CFOP_Fora_Estado.SetFocus;
      Result := False;
      Exit;
    end;

  Result := True;
end;

end.
