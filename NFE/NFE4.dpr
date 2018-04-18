program NFE4;

uses
  Vcl.Forms,
  Frm_Principal in 'NFE 4.0\Frm_Principal.pas' {frm_Nfe4},
  Vcl.Themes,
  Vcl.Styles,
  DM_TheInfinity in 'DATAMODULO\DM_TheInfinity.pas' {Dm_Infinity: TDataModule},
  Frm_Emite_NF in 'NFE 4.0\Frm_Emite_NF.pas' {EmiteNF},
  Frm_Cadastro_Cliente in 'NFE 4.0\Frm_Cadastro_Cliente.pas' {Cadastro_Clientes},
  Global in '..\Global\Global.pas',
  Frm_Cadastro_Natureza_Operacao in 'NFE 4.0\Frm_Cadastro_Natureza_Operacao.pas' {Natureza_Operacao},
  UPesquisa in '..\Global\UPesquisa.pas' {Pesquisa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'NFe 4.0 - The Infitnity';
  TStyleManager.TrySetStyle('Light');
  Application.CreateForm(TCadastro_Clientes, Cadastro_Clientes);
  Application.CreateForm(TEmiteNF, EmiteNF);
  Application.CreateForm(Tfrm_Nfe4, frm_Nfe4);
  Application.CreateForm(TDm_Infinity, Dm_Infinity);
  Application.CreateForm(TNatureza_Operacao, Natureza_Operacao);
  Application.CreateForm(TPesquisa, Pesquisa);
  Application.Run;
end.
