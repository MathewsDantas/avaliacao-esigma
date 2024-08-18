program CRUDFuncionario;

uses
  Vcl.Forms,
  CRUD in 'CRUD.pas' {Form4},
  DataModule in 'DataModule.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
