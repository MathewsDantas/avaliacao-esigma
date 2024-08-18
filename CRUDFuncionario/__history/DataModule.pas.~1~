unit DataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    tbFuncionarios: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    DataSource1: TDataSource;
    FDPhysPgDriverLink1: TFDPhysPgDriverLink;
    tbFuncionariosid: TGuidField;
    tbFuncionarioscodigo: TIntegerField;
    tbFuncionariosnome: TWideStringField;
    tbFuncionarioscpf: TWideStringField;
    tbFuncionariosdata_nascimento: TDateField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
