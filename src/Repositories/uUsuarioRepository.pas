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

end.
