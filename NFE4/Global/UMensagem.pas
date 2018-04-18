unit UMensagem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvMetroButton, GR32_Image,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TMensagem = class(TForm)
    PN_Btns: TPanel;
    PN_Imagens: TPanel;
    PN_Mensagem: TPanel;
    Lb_Mensagem: TLabel;
    Img_Alert: TImage32;
    Img_Erro: TImage32;
    Img_Informacao: TImage32;
    Btn_Ok: TAdvMetroButton;
    Btn_Sim: TAdvMetroButton;
    Btn_Nao: TAdvMetroButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_SimClick(Sender: TObject);
    procedure Btn_NaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vConfirmou : Boolean;


  end;

var
  Mensagem: TMensagem;

implementation

{$R *.dfm}

procedure TMensagem.Btn_NaoClick(Sender: TObject);
begin
  vConfirmou := False;
end;

procedure TMensagem.Btn_SimClick(Sender: TObject);
begin
  vConfirmou := True;
end;

procedure TMensagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  UMensagem := Nil;
end;


end.
