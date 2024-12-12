object ServiceConexao: TServiceConexao
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 537
  Width = 648
  object dsFiliais: TDataSource
    DataSet = fds_Filiais
    Left = 224
    Top = 32
  end
  object Conexao: TpFIBDatabase
    Connected = True
    DBName = 'C:\DATA_BASES\DATABASE.FDB'
    DBParams.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'sql_role_name=win1256')
    SQLDialect = 3
    Timeout = 0
    LibraryName = 'fbclient.dll'
    WaitForRestoreConnect = 0
    Left = 72
    Top = 32
  end
  object Trans_Conexao: TpFIBTransaction
    Active = True
    DefaultDatabase = Conexao
    Left = 144
    Top = 32
  end
  object fds_Filiais: TpFIBDataSet
    UpdateSQL.Strings = (
      'UPDATE FILIAIS'
      'SET '
      '    FIL_RAZAO = :FIL_RAZAO,'
      '    FIL_FANTASIA = :FIL_FANTASIA,'
      '    FIL_CNPJ = :FIL_CNPJ,'
      '    FIL_TELEFONE = :FIL_TELEFONE'
      'WHERE'
      '    FIL_COD = :OLD_FIL_COD'
      '    ')
    DeleteSQL.Strings = (
      'DELETE FROM'
      '    FILIAIS'
      'WHERE'
      '        FIL_COD = :OLD_FIL_COD'
      '    ')
    InsertSQL.Strings = (
      'INSERT INTO FILIAIS('
      '    FIL_COD,'
      '    FIL_RAZAO,'
      '    FIL_FANTASIA,'
      '    FIL_CNPJ,'
      '    FIL_TELEFONE'
      ')'
      'VALUES('
      '    :FIL_COD,'
      '    :FIL_RAZAO,'
      '    :FIL_FANTASIA,'
      '    :FIL_CNPJ,'
      '    :FIL_TELEFONE'
      ')')
    RefreshSQL.Strings = (
      'SELECT'
      '    FIL_COD,'
      '    FIL_RAZAO,'
      '    FIL_FANTASIA,'
      '    FIL_CNPJ,'
      '    FIL_TELEFONE'
      'FROM'
      '    FILIAIS '
      ''
      ' WHERE '
      '        FILIAIS.FIL_COD = :OLD_FIL_COD'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    FIL_COD,'
      '    FIL_RAZAO,'
      '    FIL_FANTASIA,'
      '    FIL_CNPJ,'
      '    FIL_TELEFONE'
      'FROM'
      '    FILIAIS ')
    Active = True
    Transaction = Trans_Conexao
    Database = Conexao
    Left = 288
    Top = 32
    object fds_FiliaisFIL_COD: TFIBIntegerField
      FieldName = 'FIL_COD'
    end
    object fds_FiliaisFIL_RAZAO: TFIBStringField
      FieldName = 'FIL_RAZAO'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fds_FiliaisFIL_FANTASIA: TFIBStringField
      FieldName = 'FIL_FANTASIA'
      Size = 50
      Transliterate = False
      EmptyStrToNull = True
    end
    object fds_FiliaisFIL_CNPJ: TFIBStringField
      FieldName = 'FIL_CNPJ'
      Size = 30
      Transliterate = False
      EmptyStrToNull = True
    end
    object fds_FiliaisFIL_TELEFONE: TFIBStringField
      FieldName = 'FIL_TELEFONE'
      Transliterate = False
      EmptyStrToNull = True
    end
  end
end
