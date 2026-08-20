program GestaoComercial;

uses
  Vcl.Forms,
  uPrincipal in 'Forms\uPrincipal.pas' {FrmPrincipal},
  uDMConexao in 'DataModules\uDMConexao.pas' {dmConexao: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.Run;
end.
