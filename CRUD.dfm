object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 481
  ClientWidth = 636
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
    Top = 0
    Width = 636
    Height = 73
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 919
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 634
      Height = 71
      DataSource = DataModule1.DataSource1
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel, nbRefresh]
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 618
      ExplicitHeight = 80
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 73
    Width = 636
    Height = 167
    Align = alTop
    DataSource = DataModule1.DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Panel2: TPanel
    Left = 114
    Top = 260
    Width = 400
    Height = 200
    ParentBackground = False
    TabOrder = 2
    object Label2: TLabel
      Left = 144
      Top = 16
      Width = 21
      Height = 15
      Caption = 'CPF'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 16
      Top = 80
      Width = 33
      Height = 15
      Caption = 'Nome'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 16
      Top = 16
      Width = 39
      Height = 15
      Caption = 'C'#243'digo'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 280
      Top = 16
      Width = 96
      Height = 15
      Caption = 'Dt. de nascimento'
      FocusControl = DBEdit6
    end
    object DBEdit2: TDBEdit
      Left = 144
      Top = 37
      Width = 100
      Height = 23
      DataField = 'cpf'
      DataSource = DataModule1.DataSource1
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 101
      Width = 364
      Height = 23
      DataField = 'nome'
      DataSource = DataModule1.DataSource1
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 37
      Width = 100
      Height = 23
      DataField = 'codigo'
      DataSource = DataModule1.DataSource1
      Enabled = False
      TabOrder = 2
    end
    object DBEdit6: TDBEdit
      Left = 280
      Top = 37
      Width = 100
      Height = 23
      DataField = 'data_nascimento'
      DataSource = DataModule1.DataSource1
      TabOrder = 3
    end
  end
end
