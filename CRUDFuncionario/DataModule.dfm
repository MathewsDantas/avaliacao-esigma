object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Password=P2fZUU5JzZowKPIeVoLXXxOw2KOqe5lv '
      'Database=esigma_8jq8'
      'User_Name=esigma_8jq8_user'
      'Server=dpg-cr101jbtq21c73cmh5pg-a.oregon-postgres.render.com'
      'DriverID=PG')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 72
  end
  object tbFuncionarios: TFDQuery
    Active = True
    Filtered = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM funcionarios')
    Left = 88
    Top = 168
    object tbFuncionariosid: TGuidField
      DisplayWidth = 24
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 38
    end
    object tbFuncionarioscodigo: TIntegerField
      DisplayWidth = 16
      FieldName = 'codigo'
      Origin = 'codigo'
    end
    object tbFuncionarioscpf: TWideStringField
      DisplayWidth = 77
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 11
    end
    object tbFuncionariosnome: TWideStringField
      DisplayWidth = 255
      FieldName = 'nome'
      Origin = 'nome'
      Size = 255
    end
    object tbFuncionariosdata_nascimento: TDateField
      DisplayWidth = 63
      FieldName = 'data_nascimento'
      Origin = 'data_nascimento'
    end
  end
  object DataSource1: TDataSource
    DataSet = tbFuncionarios
    Left = 88
    Top = 256
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 528
    Top = 80
  end
  object FDPhysPgDriverLink1: TFDPhysPgDriverLink
    VendorLib = 'C:\Program Files (x86)\PostgreSQL\psqlODBC\bin\libpq.dll'
    Left = 224
    Top = 72
  end
end
