unit uUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB,
  Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmUsuarios = class(TForm)
    lblTitulo: TLabel;
    pnlNovo: TPanel;
    grdUsuarios: TDBGrid;
    dsUsuarios: TDataSource;
    pnlCabecalho: TPanel;
    lblSubtitulo: TLabel;
    pnlLista: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FQryUsuarios: TADOQuery;
  public
    { Public declarations }
  end;

var
  frmUsuarios: TfrmUsuarios;

implementation

uses
  uDMConexao,
  uUsuarioRepository;
{$R *.dfm}

procedure TfrmUsuarios.FormCreate(Sender: TObject);
var
  usuarioRepository: TUsuarioRepository;
begin
  FQryUsuarios := TADOQuery.Create(nil);
  FQryUsuarios.Connection := dmConexao.conPrincipal;

  dsUsuarios.DataSet := FQryUsuarios;

  usuarioRepository := TUsuarioRepository.Create(dmConexao.conPrincipal);
  try
    usuarioRepository.ListarUsuarios(FQryUsuarios);
  finally
    usuarioRepository.Free;
  end;
end;

procedure TfrmUsuarios.FormDestroy(Sender: TObject);
begin
  FQryUsuarios.Free;
end;

end.
