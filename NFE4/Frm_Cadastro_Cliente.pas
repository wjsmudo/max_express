unit Frm_Cadastro_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ACBrBase, ACBrSocket, ACBrConsultaCNPJ,
  Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, AdvMetroButton, Vcl.DBCtrls,
  Soap.InvokeRegistry, Soap.Rio, Soap.SOAPHTTPClient, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, JvExControls,
  JvNavigationPane, Vcl.Buttons, Global, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, JvComponentBase, JvEnterTab, Vcl.ButtonGroup,
  ACBrCEP, JvDBLookup;

type
  TCadastro_Clientes = class(TForm)
    p_topo: TPanel;
    FlowPanel1: TFlowPanel;
    Btn_Novo: TAdvMetroButton;
    Btn_Edita: TAdvMetroButton;
    Btn_Exclui: TAdvMetroButton;
    Btn_Pesquisa: TAdvMetroButton;
    PN_Cadastro: TPanel;
    LbEdt_Cod: TLabeledEdit;
    LbEdt_Razao_Social: TLabeledEdit;
    LbEdt_Fantasia: TLabeledEdit;
    LbEdt_Endereco: TLabeledEdit;
    LbEdt_Cep: TLabeledEdit;
    LbEdt_Numero: TLabeledEdit;
    LbEdt_Bairro: TLabeledEdit;
    MkEdt_CNPJ: TMaskEdit;
    Lb_CNPJ: TLabel;
    Lb_Inscricao_Estadual: TLabel;
    MEdt_Inscricao_Estadual: TMaskEdit;
    Cb_Isento: TCheckBox;
    ACBrConsultaCNPJ: TACBrConsultaCNPJ;
    Label3: TLabel;
    Label4: TLabel;
    lbEdt_Email: TLabeledEdit;
    lbEdt_Inscricao_municipal: TLabeledEdit;
    lbEdt_Responsavel: TLabeledEdit;
    MEdt_Telefone_Comercial: TMaskEdit;
    Label5: TLabel;
    MEdt_Telefone_Celular: TMaskEdit;
    Label6: TLabel;
    lbEdt_Site: TLabeledEdit;
    IdHTTP1: TIdHTTP;
    PN_Captcha: TPanel;
    Label7: TLabel;
    Label14: TLabel;
    ButBuscar: TBitBtn;
    EditCaptcha: TEdit;
    EditCNPJ: TMaskEdit;
    Panel3: TPanel;
    Image1: TImage;
    LabAtualizarCaptcha: TLabel;
    ckRemoverEspacosDuplos: TCheckBox;
    JvNavPanelHeader1: TJvNavPanelHeader;
    JvNavPanelHeader2: TJvNavPanelHeader;
    Btn_Gravar: TAdvMetroButton;
    QryUF: TZQuery;
    QryCidade: TZQuery;
    DSCidade: TDataSource;
    DSUF: TDataSource;
    QryCidadeID: TIntegerField;
    QryCidadeCODIGO: TIntegerField;
    QryCidadeNOME: TWideStringField;
    QryCidadeUF: TWideStringField;
    QryUFID: TIntegerField;
    QryUFCODIGOUF: TIntegerField;
    QryUFNOME: TWideStringField;
    QryUFUF: TWideStringField;
    QryUFREGIAO: TIntegerField;
    JvEnterAsTab1: TJvEnterAsTab;
    QryClientes: TZQuery;
    BtnGrp_PFPJ: TButtonGroup;
    ACBrCEP: TACBrCEP;
    DBLKCB_UF: TJvDBLookupCombo;
    DBLKCB_Cidade: TJvDBLookupCombo;
    procedure ButBuscarClick(Sender: TObject);
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    Function ValidaCampos : Boolean;
    procedure Btn_GravarClick(Sender: TObject);
    procedure GravaCadastro;
    procedure EditaCadastro;
    procedure Cb_IsentoClick(Sender: TObject);
    procedure MkEdt_CNPJExit(Sender: TObject);
    procedure LimpaCampos;
    procedure Btn_NovoClick(Sender: TObject);
    procedure EditCNPJExit(Sender: TObject);
    procedure BtnGrp_PFPJClick(Sender: TObject);
    procedure LbEdt_CepExit(Sender: TObject);
    procedure lbEdt_SiteExit(Sender: TObject);
    procedure Btn_PesquisaClick(Sender: TObject);
    Function ConsultaCliente(pCodIntCli : Integer; pStatus : String) : Boolean;
    procedure Btn_EditaClick(Sender: TObject);
    procedure CarregaPF;
    procedure CarregaPJ;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cadastro_Clientes: TCadastro_Clientes;

implementation

{$R *.dfm}

uses DM_TheInfinity;

procedure TCadastro_Clientes.BtnGrp_PFPJClick(Sender: TObject);
begin

  If BtnGrp_PFPJ.ItemIndex = 1 Then
    begin
      CarregaPF;
    end Else
          begin
            CarregaPJ;
          end;

  LbEdt_Cod.SetFocus;
end;

procedure TCadastro_Clientes.Btn_EditaClick(Sender: TObject);
begin
  if Not ValidaCampos then
    Exit
  Else
    EditaCadastro;
end;

procedure TCadastro_Clientes.Btn_GravarClick(Sender: TObject);
begin
  if Not ValidaCampos then
    Exit
  Else
    GravaCadastro;

end;

procedure TCadastro_Clientes.Btn_NovoClick(Sender: TObject);
begin
  LimpaCampos;
  LbEdt_Cod.SetFocus;
end;

procedure TCadastro_Clientes.Btn_PesquisaClick(Sender: TObject);
begin
 IF Consulta('CODIGO,RAZAO_SOCIAL,NOME_FANTASIA', 'CLIENTES', 'STATUS = ''A''', 'CODINTCLI','') Then
  Begin
    If ConsultaCliente(StrToInt(vRetornoGlobal1), 'A') Then
      begin
        With QryClientes Do
          Begin
            BtnGrp_PFPJ.ItemIndex             := IIF(FieldByName('PFPJ').AsString = 'PJ', 0, 1);

            If BtnGrp_PFPJ.ItemIndex = 0 Then
              CarregaPJ
            Else
              CarregaPF;

            LbEdt_Cod.Text                    := FieldByName('CODIGO').AsString;
            LbEdt_Cod.Tag                     := FieldByName('CODINTCLI').AsInteger;
            LbEdt_Razao_Social.Text           := FieldByName('RAZAO_SOCIAL').AsString;
            LbEdt_Fantasia.Text               := FieldByName('NOME_FANTASIA').AsString;
            MkEdt_CNPJ.Text                   := FieldByName('CNPJ').AsString;
            MkEdt_CNPJ.Enabled                := False;
            MEdt_Inscricao_Estadual.Text      := FieldByName('INSCRICAO_ESTADUAL').AsString;

            If BtnGrp_PFPJ.ItemIndex = 0 Then
              begin
                Cb_Isento.Checked                 := FieldByName('INSCRICAO_ESTADUAL').AsString = 'ISENTO';
                LbEdt_Inscricao_Municipal.Text    := FieldByName('INSCRICAO_MUNICIPAL').AsString;
              end;

            LbEdt_CEP.Text                    := FieldByName('CEP').AsString;
            LbEdt_Endereco.Text               := FieldByName('ENDERECO').AsString;
            LbEdt_Numero.Text                 := FieldByName('NUMERO').AsString;
            LbEdt_Bairro.Text                 := FieldByName('BAIRRO').AsString;
            DBLKCB_Cidade.DisplayValue        := FieldByName('CIDADE').AsString;
            DBLKCB_UF.DisplayValue            := FieldByName('UF').AsString;
            MEdt_Telefone_Comercial.Text      := FieldByName('TELEFONE_COMERCIAL').AsString;
            MEdt_Telefone_Celular.Text        := FieldByName('TELEFONE_CELULAR').AsString;
            Btn_Gravar.Visible                := False;
            Btn_Edita.Visible                 := True;
            LbEdt_Cod.Enabled                 := False;
            MkEdt_CNPJ.OnExit                 := MkEdt_CNPJExit
          End;
      end;

  End;
end;

procedure TCadastro_Clientes.ButBuscarClick(Sender: TObject);
var
  WSCorreiosDados : TStringList;
begin

  if AcbrConsultaCnpj.Consulta(EditCNPJ.Text,EditCaptcha.Text, IIF(ckRemoverEspacosDuplos.Checked,True,False)) Then
    Begin
      MkEdt_CNPJ.Text               := AcbrConsultaCnpj.CNPJ;
      LbEdt_Razao_Social.Text       := AcbrConsultaCnpj.RazaoSocial;
      LbEdt_Fantasia.Text           := AcbrConsultaCnpj.Fantasia;
      LbEdt_Cep.Text                := AcbrConsultaCnpj.CEP;
      WSCorreiosDados               := TStringList.Create;
      WSCorreiosDados.Text          := StringReplace(
                                                      IdHTTP1.URL.URLDecode(
                                                      IdHTTP1.Get('http://republicavirtual.com.br/web_cep.php?cep='
                                                      +LbEdt_Cep.Text+'&formato=query_string')),'&',#13#10,
                                                      [rfreplaceAll]);
      LbEdt_Endereco.Text           := WSCorreiosDados.Values['TIPO_LOGRADOURO']+' '
                                      +WSCorreiosDados.Values['LOGRADOURO'];
      LbEdt_Bairro.Text             := WSCorreiosDados.Values['BAIRRO'];
      LbEdt_Numero.Text             := AcbrConsultaCnpj.Numero;
      LbEdt_Email.Text              := AcbrConsultaCnpj.EndEletronico;

    End Else
          begin
            MensagemDLG('CNPJ não localizado','I');
            MkEdt_CNPJ.SetFocus;
          end;
end;

procedure TCadastro_Clientes.CarregaPF;
begin
  PN_Captcha.Visible                   := False;
  Cadastro_Clientes.Height             := Cadastro_Clientes.Height - PN_Captcha.Height;
  Lb_CNPJ.Caption                      := 'CPF';
  Cb_Isento.Visible                    := False;
  MKEdt_CNPJ.EditMask                  := '';
  Lb_Inscricao_Estadual.Caption        := 'RG';
  MEdt_Inscricao_Estadual.EditMask     := '';
  LbEdt_Inscricao_Municipal.Visible    := False;
  LbEdt_Razao_Social.EditLabel.Caption := 'Nome Completo';
  LbEdt_Fantasia.EditLabel.Caption     := 'Apelido';
end;

procedure TCadastro_Clientes.CarregaPJ;
begin
  PN_Captcha.Visible                   := True;
  PN_Captcha.Height                    := 204;
  Cadastro_Clientes.Height             := Cadastro_Clientes.Height + PN_Captcha.Height;
  Lb_CNPJ.Caption                      := 'CNPJ';
  Cb_Isento.Visible                    := True;
  MKEdt_CNPJ.EditMask                  := '00\.000\.000\/000\-000;0;_';
  Lb_Inscricao_Estadual.Caption        := 'Inscrição Estadual';
  MEdt_Inscricao_Estadual.EditMask     := '000\.000\.000\.000;0;_';
  LbEdt_Inscricao_Municipal.Visible    := True;
  LbEdt_Razao_Social.EditLabel.Caption := 'Razão Social';
  LbEdt_Fantasia.EditLabel.Caption     := 'Nome Fantasia';
end;

procedure TCadastro_Clientes.Cb_IsentoClick(Sender: TObject);
begin
  IF MEdt_Inscricao_Estadual.Text <> 'ISENTO' Then
    begin
      MEdt_Inscricao_Estadual.EditMask := '';
      MEdt_Inscricao_Estadual.Text     := 'ISENTO';
      MEdt_Inscricao_Estadual.Enabled  := False;
    end Else
          Begin
            MEdt_Inscricao_Estadual.EditMask := '000\.000\.000\.000;0;_';
            MEdt_Inscricao_Estadual.Clear;
            MEdt_Inscricao_Estadual.Enabled  := True;
          End;

end;

function TCadastro_Clientes.ConsultaCliente(pCodIntCli: Integer;
  pStatus: String): Boolean;
begin
  With QryClientes do
    Begin
      Sql.Clear;
      Sql.Add(' SELECT *                          ');
      Sql.Add('   FROM CLIENTES                   ');
      Sql.Add('  WHERE CODINTCLI = :PCODINTCLI    ');
      Sql.Add('    AND STATUS    = :PSTATUS       ');

      ParamByName('PCODINTCLI').AsInteger := pCodIntCli;
      ParamByName('PSTATUS').AsString := pStatus;

      Open;

      if RecordCount > 0 then
        Result := True
      Else
        Result := False;
    End;
end;

procedure TCadastro_Clientes.EditaCadastro;
begin
 if Not Dm_Infinity.Con_TheInfinity.InTransaction then
    Dm_Infinity.Con_TheInfinity.StartTransaction;

  With QryClientes do
    begin
      Sql.Clear;
      Sql.Add(' UPDATE CLIENTES                                     ');
      Sql.Add('    SET CODIGO               = :PCODIGO              ');
      Sql.Add('        RAZAO_SOCIAL         = :PRAZAO_SOCIAL        ');
      Sql.Add('        NOME_FANTASIA        = :PNOME_FANTASIA       ');
      Sql.Add('        CNPJ                 = :PCNPJ                ');
      Sql.Add('        INSCRICAO_ESTADUAL   = :PINSCRICAO_ESTADUAL  ');
      Sql.Add('        INSCRICAO_MUNICIPAL  = :PINSCRICAO_MUNICIPAL ');
      Sql.Add('        CEP                  = :PCEP                 ');
      Sql.Add('        ENDERECO             = :PENDERECO            ');
      Sql.Add('        NUMERO               = :PNUMERO              ');
      Sql.Add('        BAIRRO               = :PBAIRRO              ');
      Sql.Add('        CIDADE               = :PCIDADE              ');
      Sql.Add('        UF                   = :PUF                  ');
      Sql.Add('        TELEFONE_COMERCIAL   = :PTELEFONE_COMERCIAL  ');
      Sql.Add('        TELEFONE_CELULAR     = :PTELEFONE_CELULAR    ');
      Sql.Add('        STATUS               = :PSTATUS              ');
      Sql.Add('        PFPJ                 = :PPFPJ                ');

      ParamByName('PCODIGO'              ).AsString := LbEdt_Cod.Text;
      ParamByName('PRAZAO_SOCIAL'        ).AsString := LbEdt_Razao_Social.Text;
      ParamByName('PNOME_FANTASIA'       ).AsString := LbEdt_Fantasia.Text;
      ParamByName('PCNPJ'                ).AsString := MkEdt_CNPJ.Text;
      ParamByName('PINSCRICAO_ESTADUAL'  ).AsString := MEdt_Inscricao_Estadual.Text;
      ParamByName('PINSCRICAO_MUNICIPAL' ).AsString := LbEdt_Inscricao_Municipal.Text;
      ParamByName('PCEP'                 ).AsString := LbEdt_CEP.Text;
      ParamByName('PENDERECO'            ).AsString := LbEdt_Endereco.Text;
      ParamByName('PNUMERO'              ).AsString := LbEdt_Numero.Text;
      ParamByName('PBAIRRO'              ).AsString := LbEdt_Bairro.Text;
      ParamByName('PCIDADE'              ).AsString := DBLKCB_Cidade.Text;
      ParamByName('PUF'                  ).AsString := DBLKCB_UF.Text;
      ParamByName('PTELEFONE_COMERCIAL'  ).AsString := MEdt_Telefone_Comercial.Text;
      ParamByName('PTELEFONE_CELULAR'    ).AsString := MEdt_Telefone_Celular.Text;
      ParamByName('STATUS'               ).AsString := 'A';
      ParamByName('PPFPJ'                ).AsString := IIF(BtnGrp_PFPJ.ItemIndex = 0, 'PJ','PF');

      Try
       ExecSql;
       Dm_Infinity.Con_TheInfinity.Commit;
       MensagemDlG('Cadastro atualizado com sucesso!','C');
       Btn_Novo.Click;

      Except
       Dm_Infinity.Con_TheInfinity.Rollback;
       MensagemDlg('Houveram problemas na atualização do cadastro. Tente novamente.','E');
      End;
    end;
end;

procedure TCadastro_Clientes.EditCNPJExit(Sender: TObject);
begin
  If Not ValidaCNPJ (MKEdt_CNPJ.Text, QryClientes) Then
    begin
      LimpaCampos;
      MKEdt_CNPJ.SetFocus;
    end;
end;

procedure TCadastro_Clientes.FormShow(Sender: TObject);
begin
  LabAtualizarCaptchaClick(Sender);
  EditCNPJ.SetFocus;
  Btn_Gravar.Visible                := True;
  Btn_Edita.Visible                 := False;
  QryUF.Open;
  QryCidade.Open;
end;

procedure TCadastro_Clientes.GravaCadastro;
begin
  if Not Dm_Infinity.Con_TheInfinity.InTransaction then
    Dm_Infinity.Con_TheInfinity.StartTransaction;

  With QryClientes do
    begin
      Sql.Clear;
      Sql.Add(' INSERT INTO CLIENTES                      ');
      Sql.Add('             (CODIGO                       ');
      Sql.Add('             ,RAZAO_SOCIAL                 ');
      Sql.Add('             ,NOME_FANTASIA                ');
      Sql.Add('             ,CNPJ                         ');
      Sql.Add('             ,INSCRICAO_ESTADUAL           ');
      Sql.Add('             ,INSCRICAO_MUNICIPAL          ');
      Sql.Add('             ,CEP                          ');
      Sql.Add('             ,ENDERECO                     ');
      Sql.Add('             ,NUMERO                       ');
      Sql.Add('             ,BAIRRO                       ');
      Sql.Add('             ,CIDADE                       ');
      Sql.Add('             ,UF                           ');
      Sql.Add('             ,TELEFONE_COMERCIAL           ');
      Sql.Add('             ,TELEFONE_CELULAR             ');
      Sql.Add('             ,STATUS                       ');
      Sql.Add('             ,PFPJ)                        ');
      Sql.Add('        VALUES                             ');
      Sql.Add('             (:PCODIGO                     ');
      Sql.Add('             ,:PRAZAO_SOCIAL               ');
      Sql.Add('             ,:PNOME_FANTASIA              ');
      Sql.Add('             ,:PCNPJ                       ');
      Sql.Add('             ,:PINSCRICAO_ESTADUAL         ');
      Sql.Add('             ,:PINSCRICAO_MUNICIPAL        ');
      Sql.Add('             ,:PCEP                        ');
      Sql.Add('             ,:PENDERECO                   ');
      Sql.Add('             ,:PNUMERO                     ');
      Sql.Add('             ,:PBAIRRO                     ');
      Sql.Add('             ,:PCIDADE                     ');
      Sql.Add('             ,:PUF                         ');
      Sql.Add('             ,:PTELEFONE_COMERCIAL         ');
      Sql.Add('             ,:PTELEFONE_CELULAR           ');
      Sql.Add('             ,:STATUS           ');
      Sql.Add('             ,:PPFPJ)                      ');

      ParamByName('PCODIGO'              ).AsString := IIF(LbEdt_Cod.Text = '',ProximoID (QryClientes, 'CLIENTES', 'CODINTCLI'), LbEdt_Cod.Text);
      ParamByName('PRAZAO_SOCIAL'        ).AsString := LbEdt_Razao_Social.Text;
      ParamByName('PNOME_FANTASIA'       ).AsString := LbEdt_Fantasia.Text;
      ParamByName('PCNPJ'                ).AsString := MkEdt_CNPJ.Text;
      ParamByName('PINSCRICAO_ESTADUAL'  ).AsString := MEdt_Inscricao_Estadual.Text;
      ParamByName('PINSCRICAO_MUNICIPAL' ).AsString := LbEdt_Inscricao_Municipal.Text;
      ParamByName('PCEP'                 ).AsString := LbEdt_CEP.Text;
      ParamByName('PENDERECO'            ).AsString := LbEdt_Endereco.Text;
      ParamByName('PNUMERO'              ).AsString := LbEdt_Numero.Text;
      ParamByName('PBAIRRO'              ).AsString := LbEdt_Bairro.Text;
      ParamByName('PCIDADE'              ).AsString := DBLKCB_Cidade.Text;
      ParamByName('PUF'                  ).AsString := DBLKCB_UF.Text;
      ParamByName('PTELEFONE_COMERCIAL'  ).AsString := MEdt_Telefone_Comercial.Text;
      ParamByName('PTELEFONE_CELULAR'    ).AsString := MEdt_Telefone_Celular.Text;
      ParamByName('STATUS'               ).AsString := 'A';
      ParamByName('PPFPJ'                ).AsString := IIF(BtnGrp_PFPJ.ItemIndex = 0, 'PJ','PF');

      Try
       ExecSql;
       Dm_Infinity.Con_TheInfinity.Commit;
       MensagemDlG('Cliente cadastrado com sucesso!','C');
       Btn_Novo.Click;

      Except
       Dm_Infinity.Con_TheInfinity.Rollback;
       MensagemDlg('Houveram problemas na gravação do cadastro. Tente novamente.','E');
      End;
    end;
end;

procedure TCadastro_Clientes.LabAtualizarCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
 // Jpg: TJPEGImage;
{$IFDEF DELPHI_UP}
  png: TPngImage;
{$ELSE}
  ImgArq: String;
{$ENDIF}
begin

  Stream:= TMemoryStream.Create;
  try
    ACBrConsultaCNPJ.Captcha(Stream);

   {$IFDEF DELPHI2009_UP}

    png:= TPngImage.Create;
    try
      png.LoadFromStream(Stream);
      Image1.Picture.Assign(png);
    finally
      png.Free;
    end;

   {$ELSE}
    ImgArq := ExtractFilePath(ParamStr(0))+PathDelim+'captch.png';
    Stream.SaveToFile( ImgArq );
    Image1.Picture.LoadFromFile( ImgArq );
   {$ENDIF}

    EditCaptcha.Clear;
    EditCaptcha.SetFocus;
  finally
    Stream.Free;
  end;
end;

procedure TCadastro_Clientes.LbEdt_CepExit(Sender: TObject);
Var
  I : Integer;
begin
  IF AcbrCep.BuscarPorCEP(LbEdt_CEP.Text) > 0 Then
    Begin
      for I := 0 to ACBrCEP.Enderecos.Count - 1 do
        Begin
          LbEdt_Endereco.Text         := ACBrCEP.Enderecos[I].Tipo_Logradouro
                                         + ' '
                                         + ACBrCEP.Enderecos[I].Logradouro;
          LbEdt_Bairro.Text           := ACBrCEP.Enderecos[I].Bairro;
          DBLKCB_UF.DisplayValue      := ACBrCEP.Enderecos[I].UF;
          DBLKCB_Cidade.DisplayValue  := ACBrCEP.Enderecos[I].Municipio;
        End;
    End Else
          LbEdt_Endereco.SetFocus;
end;

procedure TCadastro_Clientes.lbEdt_SiteExit(Sender: TObject);
begin
  Btn_Gravar.SetFocus;
end;

procedure TCadastro_Clientes.LimpaCampos;
begin
  LbEdt_Cod.Clear;
  LbEdt_Cod.Tag := 0;
  LbEdt_Razao_Social.Clear;
  LbEdt_Fantasia.Clear;
  LbEdt_Endereco.Clear;
  LbEdt_Cep.Clear;
  LbEdt_Numero.Clear;
  LbEdt_Bairro.Clear;
  EditCNPJ.Clear;
  MkEdt_CNPJ.Clear;
  MkEdt_CNPJ.Enabled := True;
  MEdt_Inscricao_Estadual.Clear;
  LbEdt_Inscricao_Municipal.Clear;
  MEdt_Telefone_Comercial.Clear;
  MEdt_Telefone_Celular.Clear;
  LbEdt_Bairro.Clear;
  LbEdt_Responsavel.Clear;
  LbEdt_Email.Clear;
  LbEdt_Site.Clear;
  Btn_Gravar.Visible := True;
  Btn_Edita.Visible  := False;
  LbEdt_Cod.Enabled  := True;
end;

procedure TCadastro_Clientes.MkEdt_CNPJExit(Sender: TObject);
begin
  If Not ValidaCNPJ (MKEdt_CNPJ.Text, QryClientes) Then
    begin
      LimpaCampos;
      MKEdt_CNPJ.SetFocus;
    end;
end;

Function TCadastro_Clientes.ValidaCampos : Boolean;
begin
   if LbEdt_Razao_Social.Text = '' then
    begin
      Result := False;
      MensagemDlg('Preencha o campo '+LbEdt_Razao_Social.EditLabel.Caption+' do cliente','I');
      LbEdt_Razao_Social.SetFocus;
      Exit;
    end;

   if (BtnGrp_PFPJ.ItemIndex = 0) And (LbEdt_Fantasia.Text = '') then
    begin
      Result := False;
      MensagemDlg('Preencha o nome fantasia do cliente','I');
      LbEdt_Fantasia.SetFocus;
      Exit;
    end;

   if LbEdt_Endereco.Text = '' then
    begin
      Result := False;
      MensagemDlg('Preencha o endereco do cliente','I');
      LbEdt_endereco.SetFocus;
      Exit;
    end;

   if LbEdt_Cep.Text = '' then
    begin
      Result := False;
      MensagemDlg('Preencha o cep do cliente','I');
      LbEdt_Cep.SetFocus;
      Exit;
    end;

   if LbEdt_Numero.Text = '' then
    begin
      Result := False;
      MensagemDlg('Preencha o número do endereço do cliente','I');
      LbEdt_Numero.SetFocus;
      Exit;
    end;

   if LbEdt_Bairro.Text = '' then
    begin
      Result := False;
      MensagemDlg('Preencha o bairro do cliente','I');
      LbEdt_Bairro.SetFocus;
      Exit;
    end;

   if MkEdt_CNPJ.Text = '' then
    begin
      Result := False;
      MensagemDlg('Preencha o '+ Lb_CNPJ.Caption +' cliente','I');
      MkEdt_CNPJ.SetFocus;
      Exit;
    end;

   if (MEdt_Inscricao_Estadual.Text = '') and (Not Cb_Isento.Checked) then
    begin
      Result := False;
      MensagemDlg('Preencha o campo '+ Lb_Inscricao_Estadual.Caption+' Inscrição Estadual do cliente','I');
      MEdt_Inscricao_Estadual.SetFocus;
      Exit;
    end;

   if (MEdt_Telefone_Comercial.Text = '') And (MEdt_Telefone_Celular.Text = '') then
    begin
      Result := False;
      MensagemDlg('Preencha pelo menos 1 telefone','I');
      MEdt_Telefone_Comercial.SetFocus;
      Exit;
    end;

    Result := True;
end;

end.
