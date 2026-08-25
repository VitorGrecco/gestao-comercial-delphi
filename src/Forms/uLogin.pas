unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmLogin = class(TForm)
    pnlEsquerdo: TPanel;
    pnlLogin: TPanel;
    lblTituloSistema: TLabel;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    lblFrase: TLabel;
    shpLinhaUsuario: TShape;
    shpLinhaSenha: TShape;
    pnlEntrar: TPanel;
    procedure pnlEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses
  uDMConexao,
  uUsuarioRepository;

{$R *.dfm}

procedure TfrmLogin.pnlEntrarClick(Sender: TObject);
var
  usuarioRepository: TUsuarioRepository;
  senhaHash: string;

begin
  if Trim(edtUsuario.Text) = '' then
  begin
    ShowMessage('Favor informar o seu nome de usuário!');
    edtUsuario.SetFocus;
    Exit;
  end;

  if Trim(edtSenha.Text) = '' then
  begin
    ShowMessage('Favor informar a sua senha!');
    edtSenha.SetFocus;
    Exit;
  end;

  usuarioRepository := TUsuarioRepository.Create(dmConexao.conPrincipal);
  try
    if not usuarioRepository.BuscarHashPorLogin (LowerCase(Trim(edtUsuario.Text)), senhaHash) then
    begin
      ShowMessage('Usuário não encontrado ou inativo.');
      edtUsuario.SetFocus;
      Exit;
    end;

    ShowMessage('Usuário encontrado com sucesso.');
  finally
    usuarioRepository.Free;
  end;
end;

end.
