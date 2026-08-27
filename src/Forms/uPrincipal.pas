unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrmPrincipal = class(TForm)
    lblSistema: TLabel;
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    pnlAreaPrincipal: TPanel;
    pnlConteudo: TPanel;
    pnlLogo: TPanel;
    pnlUsuarios: TPanel;
    lblUsuarios: TLabel;
    procedure pnlUsuariosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  uUsuarios;

{$R *.dfm}

procedure TFrmPrincipal.pnlUsuariosClick(Sender: TObject);
begin
  if not Assigned(frmUsuarios) then
  begin
    frmUsuarios := TfrmUsuarios.Create(Self);

    frmUsuarios.Parent := pnlConteudo;
    frmUsuarios.BorderStyle := bsNone;
    frmUsuarios.Align := alClient;
  end;

  frmUsuarios.Show;
  frmUsuarios.BringToFront;
end;

end.
