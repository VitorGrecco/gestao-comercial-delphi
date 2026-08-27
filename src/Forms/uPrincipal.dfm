object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Gest'#227'o Comercial'
  ClientHeight = 700
  ClientWidth = 1200
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  TextHeight = 15
  object pnlAreaPrincipal: TPanel
    Left = 220
    Top = 0
    Width = 980
    Height = 700
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object pnlTopo: TPanel
      Left = 0
      Top = 0
      Width = 980
      Height = 65
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
    end
    object pnlConteudo: TPanel
      Left = 0
      Top = 65
      Width = 980
      Height = 635
      Align = alClient
      BevelOuter = bvNone
      Color = 15329769
      ParentBackground = False
      TabOrder = 1
    end
  end
  object pnlMenu: TPanel
    Left = 0
    Top = 0
    Width = 220
    Height = 700
    Align = alLeft
    BevelOuter = bvNone
    Color = 3877150
    ParentBackground = False
    TabOrder = 0
    object pnlLogo: TPanel
      Left = 0
      Top = 0
      Width = 220
      Height = 90
      Align = alTop
      BevelOuter = bvNone
      Color = 3877150
      ParentBackground = False
      TabOrder = 0
      object lblSistema: TLabel
        Left = 28
        Top = 28
        Width = 165
        Height = 28
        Alignment = taCenter
        Caption = 'Gest'#227'o Comercial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object pnlUsuarios: TPanel
      Left = 0
      Top = 90
      Width = 220
      Height = 50
      Cursor = crHandPoint
      Align = alTop
      BevelOuter = bvNone
      Color = 8404992
      ParentBackground = False
      TabOrder = 1
      OnClick = pnlUsuariosClick
      object lblUsuarios: TLabel
        Left = 20
        Top = 15
        Width = 53
        Height = 17
        Cursor = crHandPoint
        AutoSize = False
        Caption = 'Usu'#225'rios'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        OnClick = pnlUsuariosClick
      end
    end
  end
end
