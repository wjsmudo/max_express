unit Frm_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, AdvMetroButton, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, GDIPCustomItem, GDIPTextItem,
  GDIPImageTextItem, CustomItemsContainer, AdvPolyList, RxDBCtrl,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrm_Nfe4 = class(TForm)
    p_topo: TPanel;
    p_grid: TPanel;
    p_rodape: TPanel;
    FlowPanel1: TFlowPanel;
    AdvMetroButton1: TAdvMetroButton;
    AdvMetroButton2: TAdvMetroButton;
    AdvMetroButton3: TAdvMetroButton;
    AdvMetroButton4: TAdvMetroButton;
    AdvMetroButton5: TAdvMetroButton;
    AdvMetroButton6: TAdvMetroButton;
    p_geral: TPanel;
    p_emissao: TPanel;
    p_menu: TPanel;
    menu_lateral: TAdvPolyMenu;
    ImageTextItem1: TImageTextItem;
    ImageTextItem2: TImageTextItem;
    ImageTextItem3: TImageTextItem;
    ImageTextItem4: TImageTextItem;
    ImageTextItem5: TImageTextItem;
    QryNF: TZQuery;
    DsNF: TDataSource;
    XDBG_NF: TRxDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Nfe4: Tfrm_Nfe4;

implementation

{$R *.dfm}

uses DM_TheInfinity;

end.
