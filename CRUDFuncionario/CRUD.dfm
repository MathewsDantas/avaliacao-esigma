object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 633
  ClientWidth = 632
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCanResize = FormCanResize
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 632
    Height = 73
    Align = alTop
    Alignment = taLeftJustify
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 628
    object pnlControle: TPanel
      Left = 1
      Top = 1
      Width = 507
      Height = 71
      Align = alClient
      AutoSize = True
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 496
      object btnCadastrar: TButton
        AlignWithMargins = True
        Left = 387
        Top = 3
        Width = 117
        Height = 65
        Align = alRight
        Caption = 'Cadastrar'
        TabOrder = 0
        OnClick = btnCadastrarClick
        ExplicitLeft = 389
      end
    end
    object DBNavigator1: TDBNavigator
      AlignWithMargins = True
      Left = 511
      Top = 4
      Width = 117
      Height = 65
      DataSource = DataModule1.DataSource1
      VisibleButtons = [nbRefresh]
      Align = alRight
      TabOrder = 1
      ExplicitLeft = 504
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 149
    Width = 632
    Height = 204
    Cursor = crHandPoint
    Align = alTop
    BorderStyle = bsNone
    Ctl3D = True
    DataSource = DataModule1.DataSource1
    DragCursor = crHandPoint
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentCtl3D = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'codigo'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'data_nascimento'
        Width = 200
        Visible = True
      end>
  end
  object pnlCadastro: TPanel
    Left = 129
    Top = 378
    Width = 400
    Height = 210
    ParentBackground = False
    TabOrder = 2
    object Label3: TLabel
      Left = 16
      Top = 104
      Width = 33
      Height = 15
      Caption = 'Nome'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 16
      Top = 40
      Width = 39
      Height = 15
      Caption = 'C'#243'digo'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 280
      Top = 40
      Width = 96
      Height = 15
      Caption = 'Dt. de nascimento'
      FocusControl = DBEdit6
    end
    object Label1: TLabel
      Left = 144
      Top = 40
      Width = 21
      Height = 15
      Caption = 'CPF'
      FocusControl = DBEdit2
    end
    object Label2: TLabel
      Left = 16
      Top = 8
      Width = 73
      Height = 17
      Caption = 'Funcion'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 125
      Width = 364
      Height = 23
      DataField = 'nome'
      DataSource = DataModule1.DataSource1
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 61
      Width = 100
      Height = 23
      DataField = 'codigo'
      DataSource = DataModule1.DataSource1
      Enabled = False
      TabOrder = 1
    end
    object DBEdit6: TDBEdit
      Left = 279
      Top = 61
      Width = 100
      Height = 23
      DataField = 'data_nascimento'
      DataSource = DataModule1.DataSource1
      TabOrder = 2
      OnKeyPress = DBEdit6KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 144
      Top = 61
      Width = 100
      Height = 23
      AutoSize = False
      DataField = 'cpf'
      DataSource = DataModule1.DataSource1
      TabOrder = 3
    end
    object pnlBotoes: TPanel
      Left = 1
      Top = 177
      Width = 398
      Height = 32
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 4
      object btnCancelar: TButton
        AlignWithMargins = True
        Left = 229
        Top = 3
        Width = 80
        Height = 26
        Align = alRight
        Caption = 'Cancelar'
        TabOrder = 0
        Visible = False
        OnClick = btnCancelarClick
      end
      object btnSalvar: TButton
        AlignWithMargins = True
        Left = 315
        Top = 3
        Width = 80
        Height = 26
        Align = alRight
        Caption = 'Salvar'
        TabOrder = 1
        Visible = False
        OnClick = btnSalvarClick
      end
      object btnEditar: TButton
        AlignWithMargins = True
        Left = 57
        Top = 3
        Width = 80
        Height = 26
        Align = alRight
        Caption = 'Editar'
        TabOrder = 2
        OnClick = btnEditarClick
      end
      object btnDeletar: TButton
        AlignWithMargins = True
        Left = 143
        Top = 3
        Width = 80
        Height = 26
        Align = alRight
        Caption = 'Deletar'
        TabOrder = 3
        OnClick = btnDeletarClick
      end
    end
  end
  object lblFiltro: TPanel
    Left = 0
    Top = 114
    Width = 632
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 3
    ExplicitWidth = 628
    object lblFilter: TLabel
      Left = -36
      Top = 0
      Width = 364
      Height = 35
      Align = alRight
      Alignment = taCenter
      AutoSize = False
      Color = clBtnFace
      ParentColor = False
      ExplicitLeft = -35
      ExplicitTop = 5
    end
    object lblVerTodos: TLabel
      AlignWithMargins = True
      Left = 331
      Top = 10
      Width = 50
      Height = 22
      Margins.Top = 10
      Align = alRight
      Alignment = taCenter
      Caption = 'Ver Todos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = lblVerTodosClick
      ExplicitHeight = 13
    end
    object edtFiltro: TEdit
      AlignWithMargins = True
      Left = 387
      Top = 3
      Width = 161
      Height = 29
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      Text = 'Insira o C'#243'digo ou Nome'
      OnClick = edtFiltroClick
      ExplicitLeft = 383
      ExplicitHeight = 23
    end
    object btnFiltro: TButton
      AlignWithMargins = True
      Left = 554
      Top = 3
      Width = 75
      Height = 29
      Align = alRight
      Caption = 'Filtrar'
      TabOrder = 1
      OnClick = btnFiltroClick
      ExplicitLeft = 550
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 41
    Align = alTop
    Caption = 'Gerenciamento de Funcion'#225'rios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
    ExplicitWidth = 628
  end
end
