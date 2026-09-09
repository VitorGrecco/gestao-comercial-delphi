object frmClientes: TfrmClientes
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Clientes'
  ClientHeight = 935
  ClientWidth = 1680
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  TextHeight = 15
  object pnlCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 1680
    Height = 110
    Align = alTop
    BevelOuter = bvNone
    Caption = ''
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 24
      Top = 20
      Width = 71
      Height = 25
      Caption = 'Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSubtitulo: TLabel
      Left = 24
      Top = 54
      Width = 229
      Height = 15
      Caption = 'Gerencie os clientes cadastrados no sistema'
    end
    object btnNovo: TButton
      Left = 1404
      Top = 27
      Width = 125
      Height = 34
      Anchors = [akTop, akRight]
      Caption = '+ Novo cliente'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnEditar: TButton
      Left = 1539
      Top = 27
      Width = 117
      Height = 34
      Anchors = [akTop, akRight]
      Caption = 'Editar cliente'
      TabOrder = 1
      OnClick = btnEditarClick
    end
  end
  object pnlLista: TPanel
    Left = 0
    Top = 110
    Width = 1680
    Height = 825
    Align = alClient
    BevelOuter = bvNone
    Caption = ''
    TabOrder = 1
    object grdClientes: TDBGrid
      Left = 0
      Top = 0
      Width = 1680
      Height = 825
      Align = alClient
      DataSource = dsClientes
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DOCUMENTO'
          Title.Caption = 'Documento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMAIL'
          Title.Caption = 'Email'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONE'
          Title.Caption = 'Telefone'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ATIVO_DESC'
          Title.Caption = 'Ativo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTH_CADASTRO'
          Title.Caption = 'Cadastro'
          Visible = True
        end>
    end
  end
  object dsClientes: TDataSource
    Left = 64
    Top = 144
  end
end
