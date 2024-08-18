unit CRUD;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Vcl.ExtCtrls, Data.DB, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    pnlCadastro: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    btnFiltro: TButton;
    lblFiltro: TPanel;
    edtFiltro: TEdit;
    lblFilter: TLabel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    pnlControle: TPanel;
    DBNavigator1: TDBNavigator;
    btnCadastrar: TButton;
    btnDeletar: TButton;
    btnEditar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    Panel2: TPanel;
    Label2: TLabel;
    pnlBotoes: TPanel;
    lblVerTodos: TLabel;
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure btnFiltroClick(Sender: TObject);
    procedure edtFiltroClick(Sender: TObject);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure lblVerTodosClick(Sender: TObject);
  private
    procedure ativarDesativarControles(opcoes, commits: Boolean);
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses DataModule;

procedure TForm4.ativarDesativarControles(opcoes, commits: Boolean);
begin
  btnCadastrar.Enabled := opcoes;
  btnDeletar.Enabled := opcoes;
  btnEditar.Enabled := opcoes;

  btnSalvar.Visible := commits;
  btnCancelar.Visible := commits;
end;

procedure TForm4.btnFiltroClick(Sender: TObject);
var
  Num: Integer;
begin
  if (edtFiltro.Text = '') or (edtFiltro.Text = 'Insira o C�digo ou Nome') then
  begin
    ShowMessage('Erro: Por favor, preencha o campo com o c�digo ou nome do usu�rio');
    Exit;
  end;
  DataModule.DataModule1.tbFuncionarios.Filtered := false;

  if TryStrToInt(edtFiltro.Text, Num) then
  begin
    DataModule.DataModule1.tbFuncionarios.Filter := 'codigo=' + QuotedStr(edtFiltro.Text);
  end
  else
  begin
    DataModule.DataModule1.tbFuncionarios.Filter := 'UPPER(nome) LIKE ' + QuotedStr('%'+UpperCase(edtFiltro.Text)+'%');
  end;
  DataModule.DataModule1.tbFuncionarios.Filtered := true;
end;

procedure TForm4.btnCadastrarClick(Sender: TObject);
begin
  ativarDesativarControles(false, true);
  DataModule.DataModule1.tbFuncionarios.Append;
end;

procedure TForm4.btnDeletarClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente deletar o registro?' ,'Aten��o', MB_ICONQUESTION+MB_YESNO) = mrYes then
  begin
    DataModule.DataModule1.tbFuncionarios.Delete;
  end;

end;

procedure TForm4.btnEditarClick(Sender: TObject);
begin
  ativarDesativarControles(false, true);
  DataModule.DataModule1.tbFuncionarios.Edit;
end;


procedure TForm4.btnSalvarClick(Sender: TObject);
begin
  ativarDesativarControles(true, false);
  DataModule.DataModule1.tbFuncionarios.Post;
  DataModule.DataModule1.tbFuncionarios.Refresh;
end;

procedure TForm4.btnCancelarClick(Sender: TObject);
begin
  ativarDesativarControles(true, false);
  DataModule.DataModule1.tbFuncionarios.Cancel;
end;


procedure TForm4.DBEdit6KeyPress(Sender: TObject; var Key: Char);
var
  TextoAtual: string;
begin

  TextoAtual := DBEdit6.Text;
  if (Length(TextoAtual) in [2, 5]) and (Key <> #8) then
  begin
    DBEdit6.Text := TextoAtual + '/';
    DBEdit6.SelStart := Length(DBEdit6.Text) + 1;
  end;


  if Length(TextoAtual) = 10 then
  begin
    if Key <> #8 then
      Key := #0;
  end;
end;

procedure TForm4.edtFiltroClick(Sender: TObject);
begin
  edtFiltro.Text := ''
end;

procedure TForm4.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  pnlCadastro.Left := (self.Width div 2) - (pnlCadastro.Width div 2);
end;

procedure TForm4.lblVerTodosClick(Sender: TObject);
begin
  DataModule.DataModule1.tbFuncionarios.Filtered := false;
  DataModule.DataModule1.tbFuncionarios.FetchAll;
end;

end.
