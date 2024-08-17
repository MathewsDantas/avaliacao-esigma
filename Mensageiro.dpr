program Mensageiro;

uses
  Vcl.Forms,
  MensageiroPas in 'MensageiroPas.pas' {Form2},
  Mensageiro2Pas in 'Mensageiro2Pas.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
