program MensagemDlg;

uses
  Vcl.Forms,
  UMensagem in 'UMensagem.pas' {Mensagem};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMensagem, Mensagem);
  Application.Run;
end.
