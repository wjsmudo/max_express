unit UPesquisa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, JvExControls, JvDBLookup, Global;

type
  TPesquisa = class(TForm)
    PN_Topo: TPanel;
    PN_Grid: TPanel;
    DBG_Pesquisa: TDBGrid;
    Lb_Filtro: TLabel;
    Edt_Pesquisa: TEdit;
    DSPesquisa: TDataSource;
    QryPesquisa: TZQuery;
    CB_Pesquisa: TComboBoxEx;
    Label1: TLabel;
    procedure Edt_PesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBG_PesquisaDblClick(Sender: TObject);
    procedure DBG_PesquisaTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    Var
      vSql                 : String;
      pRetornoPesquisa1, pRetornoPesquisa2 : String;
      vRetorno1, vRetorno2 : String;
      vResult              : Integer;
  end;

var
  Pesquisa: TPesquisa;

implementation

{$R *.dfm}

uses DM_TheInfinity;

procedure TPesquisa.DBG_PesquisaDblClick(Sender: TObject);
begin
  vRetorno1 := IIF(pRetornoPesquisa1 <> '',QryPesquisa.Fields[0].AsString,'');
  vRetorno2 := IIF(pRetornoPesquisa2 <> '',QryPesquisa.Fields[1].AsString, '');
  Close;
end;

procedure TPesquisa.DBG_PesquisaTitleClick(Column: TColumn);
begin
  QryPesquisa.SortedFields := DBG_Pesquisa.SelectedField.AsString;
end;

procedure TPesquisa.Edt_PesquisaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      With QryPesquisa Do
        begin
          Sql.Clear;
          if Edt_Pesquisa.Text <> '' then
            Begin
              vSql :=  vSql
                     + ' AND '
                     + CB_Pesquisa.Text
                     + ' LIKE '
                     + '''%'+Edt_Pesquisa.Text+'%''';

              Sql.Add(vSql);
            End Else
                  Begin
                    Sql.Add(vSql);
                  End;
          Open;
          vResult := RecordCount;
        end;
    end;
end;

procedure TPesquisa.FormShow(Sender: TObject);
Var
  Key : Char;
begin
  Key := #13;
  Edt_PesquisaKeyPress(Sender, Key);
  Edt_Pesquisa.SetFocus;
end;

end.
