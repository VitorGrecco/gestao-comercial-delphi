object frmUsuarios: TfrmUsuarios
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Usu'#225'rios'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  TextHeight = 15
  object pnlCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 110
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object lblTitulo: TLabel
      Left = 25
      Top = 20
      Width = 99
      Height = 32
      Caption = 'Usu'#225'rios'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblSubtitulo: TLabel
      Left = 25
      Top = 55
      Width = 252
      Height = 15
      Caption = 'Gerencie os usu'#225'rios que tem acesso ao sistema'
    end
    object pnlNovo: TPanel
      Left = 333
      Top = 20
      Width = 140
      Height = 38
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = '+ Novo usu'#225'rio'
      Color = 3877150
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      OnClick = pnlNovoClick
    end
    object pnlEditar: TPanel
      Left = 480
      Top = 20
      Width = 140
      Height = 38
      Cursor = crHandPoint
      BevelOuter = bvNone
      Caption = 'Editar usu'#225'rio'
      Color = 3877150
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      OnClick = pnlEditarClick
    end
  end
  object pnlLista: TPanel
    Left = 0
    Top = 110
    Width = 624
    Height = 331
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object grdUsuarios: TDBGrid
      Left = 0
      Top = 0
      Width = 624
      Height = 331
      Align = alClient
      DataSource = dsUsuarios
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Nome'
          Width = 175
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOGIN'
          Title.Caption = 'Login'
          Width = 180
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ATIVO_DESC'
          Title.Caption = 'Ativo'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTH_CADASTRO'
          Title.Caption = 'Cadastro'
          Width = 160
          Visible = True
        end>
    end
  end
  object dsUsuarios: TDataSource
    Left = 8
    Top = 160
  end
end
