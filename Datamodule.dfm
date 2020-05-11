object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 306
  Width = 422
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 336
    Top = 24
  end
  object FDConn: TFDConnection
    Params.Strings = (
      'Database=D:\Projetos\ISMoney\DB\Database.db'
      'OpenMode=ReadWrite'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 48
    Top = 40
  end
  object qry_categoria: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'SELECT * FROM TAB_CATEGORIA')
    Left = 48
    Top = 96
    object qry_categoriaID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qry_categoriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object qry_categoriaTIPO_CATEGORIA: TStringField
      FieldName = 'TIPO_CATEGORIA'
      Origin = 'TIPO_CATEGORIA'
      Size = 1
    end
  end
  object qry_lancamento: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'SELECT L.*, C.DESCRICAO AS CATEGORIA, B.NOME AS BANCO,'
      
        '       CASE WHEN L.TIPO_LANCAMENTO = '#39'C'#39' THEN 0 ELSE 1 END "ICON' +
        'E::BIGINT" '
      'FROM TAB_LANCAMENTO L'
      'JOIN TAB_CATEGORIA C ON (C.ID_CATEGORIA = L.ID_CATEGORIA)'
      'JOIN TAB_BANCO B ON ( B.ID_BANCO = L.ID_BANCO)'
      'ORDER BY L.ID_LANCAMENTO'
      '')
    Left = 48
    Top = 160
    object qry_lancamentoID_LANCAMENTO: TIntegerField
      FieldName = 'ID_LANCAMENTO'
      Origin = 'ID_LANCAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qry_lancamentoVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'VALOR'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 8
      Size = 2
    end
    object qry_lancamentoDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = 'DATA'
    end
    object qry_lancamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object qry_lancamentoCATEGORIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORIA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object qry_lancamentoBANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object qry_lancamentoICONE: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ICONE'
      Origin = 'ICONE'
      ProviderFlags = []
      ReadOnly = True
    end
    object qry_lancamentoID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
    end
    object qry_lancamentoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
    end
    object qry_lancamentoTIPO_LANCAMENTO: TStringField
      FieldName = 'TIPO_LANCAMENTO'
      Origin = 'TIPO_LANCAMENTO'
      Size = 1
    end
  end
  object qry_geral: TFDQuery
    Connection = FDConn
    Left = 152
    Top = 104
  end
  object qry_perfil: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'SELECT * FROM TAB_CONFIG')
    Left = 152
    Top = 40
  end
  object qry_banco: TFDQuery
    Connection = FDConn
    SQL.Strings = (
      'SELECT * FROM TAB_BANCO')
    Left = 152
    Top = 160
    object qry_bancoID_BANCO: TIntegerField
      FieldName = 'ID_BANCO'
      Origin = 'ID_BANCO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object qry_bancoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 30
    end
    object qry_bancoAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      Size = 6
    end
    object qry_bancoCONTA: TStringField
      FieldName = 'CONTA'
      Origin = 'CONTA'
      Size = 10
    end
    object qry_bancoSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = 'SALDO'
    end
  end
end
