unit MensageiroPas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    btnEnviar: TButton;
    lblMensagem: TLabel;
    pnlCentral: TPanel;
    edtMensagem: TMemo;
    lblError: TLabel;
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure btnEnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Mensageiro2Pas;

procedure TForm2.btnEnviarClick(Sender: TObject);
begin
  Form3 := TForm3.Create(self);
  Form2.lblError.Caption := '';
  if (edtMensagem.Text = '') then
  begin
    Form2.lblError.Caption := 'Erro: Por favor, preencha o campo acima';
    Exit;
  end;
  try
    Form3.Mensagem := edtMensagem.Text;
    if Form3.ShowModal = mrOk then
      ShowMessage('Usu�rio Confirmou.')
    else
      ShowMessage('Opera��o Cancelada');
  finally
    Form3.Free;
  end;
end;

procedure TForm2.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  pnlCentral.Top := (self.Height div 2) - (pnlCentral.Height div 2);
  pnlCentral.Left := (self.Width div 2) - (pnlCentral.Width div 2) - 8;
end;
end.
