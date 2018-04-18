unit DM_TheInfinity;

interface

uses
  System.SysUtils, System.Classes, ZAbstractConnection, ZConnection;

type
  TDm_Infinity = class(TDataModule)
    Con_TheInfinity: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm_Infinity: TDm_Infinity;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
