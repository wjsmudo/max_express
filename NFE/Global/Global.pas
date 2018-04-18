unit Global;

interface
Uses
    Windows, SysUtils, Classes, Forms, UMensagem,ZAbstractRODataset,
  ZAbstractDataset, ZDataset, JvComponentBase;

    Function IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
    Function MensagemDlg(pMensagem, pTipo : String) : Boolean;
    Function ValidaCNPJ (pCNPJ : String; pQry :TZQuery): Boolean;
    Function ProximoID (pQry : TZQuery; pTabela, pCampo : String) : Integer;
    Function RemoveCaractereEspecial(pTexto: string): string; stdcall;
    Function Consulta(pCampos, pTabela, pCondicao :String; pRetorno1, pRetorno2 : Variant) : Boolean;

    Var
      vRetornoGlobal1, vRetornoGlobal2 : String;

implementation

uses DM_TheInfinity, UPesquisa;

Function IIf(Expressao: Variant; ParteTRUE, ParteFALSE: Variant): Variant;
Begin
  if Expressao then
      Result := ParteTRUE
   else
      Result := ParteFALSE;
End;

Function MensagemDlg(pMensagem, pTipo : String) : Boolean;
Begin
    Mensagem := TMensagem.Create(nil);
    try
      Mensagem.Lb_Mensagem.Caption := pMensagem;
      With Mensagem do
        begin
          if pTipo = 'I' then
            begin
              Img_Alert.Visible := True;
              Btn_OK.Visible := True;

            end Else
                 if pTipo = 'P' then
                  begin
                    Img_Informacao.Visible := True;
                    Btn_Sim.Visible := True;
                    Btn_Nao.Visible := True;
                  end Else
                        if pTipo = 'E' then
                          begin
                            Img_Erro.Visible := True;
                            Btn_OK.Visible := True;
                          end Else
                                 if pTipo = 'C' then
                                  begin
                                    Img_Confirm.Visible := True;
                                    Btn_OK.Visible := True;
                                  end;
          ShowModal;
        end;
    finally

    end;
End;

Function ValidaCNPJ (pCNPJ : String; pQry :TZQuery): Boolean;
Begin
    With pQry do
    begin
      Sql.Clear;
      Sql.Add(' SELECT CNPJ           ');
      Sql.Add('   FROM CLIENTES       ');
      Sql.Add('  WHERE CNPJ = :PCNPJ  ');

      ParamByName('PCNPJ').AsString := pCNPJ;
      Open;

      if RecordCount > 0 then
        Begin
          MensagemDlg('Já existe um cliente cadastrado com esse '+IIF(Length(pCNPJ) < 14,'CPF', 'CNPJ'),'I');
          Result := False;
        End Else
              Begin
                Result := True;
              End;

    end;
End;

Function ProximoID (pQry : TZQuery; pTabela, pCampo : String) : Integer;
var
Qry : TZQuery;
Begin
  QRy := TZQuery.Create(nil);
  QRY.Connection := Dm_Infinity.Con_TheInfinity;
  With Qry do
    Begin
      Sql.Clear;
      Sql.Add('SELECT MAX('+pCampo+') '+pCampo+' ');
      Sql.Add('  FROM '+pTabela+'                ');

      Open;

      Result := FieldByName(PcAMPO).AsInteger + 1;
    End;
End;

Function RemoveCaractereEspecial(pTexto: string): string; stdcall;
const
  Remove = ':;~`!@#$%^&*()_-+=|\<>,.?/æ';
var
  x: Integer;
begin
  Result := '';
  For x := 1 to Length(pTexto) do
    if Pos(pTexto[x], Remove) = 0 then
      Result := result + pTexto[x];
End;

Function Consulta(pCampos, pTabela, pCondicao :String; pRetorno1, pRetorno2 : Variant) : Boolean;
Var
  X : String;
  I : Integer;
Begin
  Pesquisa := TPesquisa.Create(Nil);
  With Pesquisa Do
    Begin
      Try
       Pesquisa.vSql :=   'SELECT '+pRetorno1+','
                          +IIF(pRetorno2 <> '',pRetorno2 +',','')
                           +pCampos
                          +'  FROM '+pTabela
                          +' WHERE '+pCondicao;

        for I := Low(pCampos) to High(pCampos) do
          Begin
            if pCampos[I] <> ',' Then
              Begin
//                IF pCampos[I] = '_' Then
//                  X := X + ' '
//                Else
                  X := X + pCampos[I];
              End Else
                    Begin
                      Pesquisa.CB_Pesquisa.ItemsEx.AddItem(Copy(X,0,(Length(X))),0,0,0,0,0);
                      X := '';
                    End;
          End;
       Pesquisa.CB_Pesquisa.ItemIndex := 0;
       Pesquisa.pRetornoPesquisa1 := pRetorno1;
       Pesquisa.pRetornoPesquisa2 := pRetorno2;

       Pesquisa.ShowModal;
      Finally
         vRetornoGlobal1 := Pesquisa.vRetorno1;
         vRetornoGlobal2 := Pesquisa.vRetorno2;
         Result          := Pesquisa.vResult > 0;
      End;
    End;

End;

end.
