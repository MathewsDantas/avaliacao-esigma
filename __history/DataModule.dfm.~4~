object DataModule1: TDataModule1
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=PG'
      'Password=123456'
      'Database=esigma'
      'User_Name=postgres')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 72
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM funcionarios')
    Left = 88
    Top = 168
    object FDQuery1id: TGuidField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 38
    end
    object FDQuery1cpf: TWideStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 11
    end
    object FDQuery1nome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 255
    end
    object FDQuery1codigo: TIntegerField
      FieldName = 'codigo'
      Origin = 'codigo'
    end
    object FDQuery1data_nascimento: TDateField
      FieldName = 'data_nascimento'
      Origin = 'data_nascimento'
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
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
