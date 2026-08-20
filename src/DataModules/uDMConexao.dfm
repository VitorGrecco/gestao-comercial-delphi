object dmConexao: TdmConexao
  Height = 480
  Width = 640
  object conPrincipal: TADOConnection
    ConnectionString = 
      'Provider=MSOLEDBSQL19.1;Integrated Security=SSPI;Persist Securit' +
      'y Info=False;User ID="";Initial Catalog=PORTFOLIO_GESTAO;Data So' +
      'urce=GRECCO;Initial File Name="";Trust Server Certificate=True;S' +
      'erver SPN="";Authentication="";Access Token="";Host Name In Cert' +
      'ificate="";'
    LoginPrompt = False
    Provider = 'MSOLEDBSQL19.1'
    Left = 48
    Top = 24
  end
  object qryTeste: TADOQuery
    Connection = conPrincipal
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '    DB_NAME() AS BANCO,'
      '    GETDATE() AS DATA_HORA')
    Left = 128
    Top = 24
  end
end
