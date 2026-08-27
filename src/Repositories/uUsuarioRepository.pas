unit uUsuarioRepository;

interface

uses
  Data.Win.ADODB;

type
  TUsuarioRepository = class
  private
    FConnection: TADOConnection;
  public
    constructor Create(AConnection: TADOConnection);

    function BuscarHashPorLogin(ALogin: string; out ASenhaHash: string): Boolean;

    procedure ListarUsuarios(AQuery: TADOQuery);
  end;

implementation

  constructor TUsuarioRepository.Create(AConnection: TADOConnection);
  begin
    FConnection := AConnection;
  end;

  function TUsuarioRepository.BuscarHashPorLogin(ALogin: string; out ASenhaHash: string): Boolean;
  var
    qryUsuario: TADOQuery;
  begin
    Result := False;
    ASenhaHash := '';

    qryUsuario := TADOQuery.Create(nil);
    try
      qryUsuario.Connection := FConnection;

      qryUsuario.SQL.Text := 'SELECT SENHA_HASH FROM USUARIO WHERE LOGIN = :LOGIN AND ATIVO = 1';
      qryUsuario.Parameters.ParamByName('LOGIN').Value := ALogin;
      qryUsuario.Open;

      if not qryUsuario.Eof then
      begin
        ASenhaHash := qryUsuario.FieldByName('SENHA_HASH').AsString;
        Result := True;
      end;
    finally
      qryUsuario.Free;
    end;
  end;

  procedure TUsuarioRepository.ListarUsuarios(AQuery: TADOQuery);
  begin
    AQuery.Close;
    AQuery.Connection := FConnection;

    AQuery.SQL.Text := 'SELECT ID_USUARIO, NOME, LOGIN, ATIVO, CASE WHEN ATIVO = 1 THEN ''Sim'' ELSE ''Não'' END AS ATIVO_DESC, ' +
                       'DTH_CADASTRO FROM USUARIO ORDER BY NOME';
    AQuery.Open;
  end;

end.
