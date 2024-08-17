unit Mensageiro2Pas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    pnlCentral: TPanel;
    btnCancelar: TButton;
    btnConfirmar: TButton;
    lblMensagem: TLabel;
    lblText: TMemo;
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure FormShow(Sender: TObject);
  private
    FMensagem: string;
  public
    property Mensagem: string read FMensagem write FMensagem;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrCancel;
end;

procedure TForm3.btnConfirmarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  lblText.Lines.Text := FMensagem
end;

procedure TForm3.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  pnlCentral.Top := (self.Height div 2) - (pnlCentral.Height div 2);
  pnlCentral.Left := (self.Width div 2) - (pnlCentral.Width div 2) - 8;
end;

end.
