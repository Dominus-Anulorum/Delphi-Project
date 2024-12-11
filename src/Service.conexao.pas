unit Service.conexao;

interface

uses
  System.SysUtils,
  System.Classes,
  Data.DB,
  FIBDataSet,
  pFIBDataSet,
  FIBDatabase,
  pFIBDatabase,
  pFIBQuery,
  FIBQuery,
  System.IniFiles;

type
  TServiceConexao = class(TDataModule)
    dsFiliais: TDataSource;
    Conexao: TpFIBDatabase;
    Trans_Conexao: TpFIBTransaction;
    fds_Filiais: TpFIBDataSet;
    fds_FiliaisFIL_COD: TFIBIntegerField;
    fds_FiliaisFIL_RAZAO: TFIBStringField;
    fds_FiliaisFIL_FANTASIA: TFIBStringField;
    fds_FiliaisFIL_CNPJ: TFIBStringField;
    fds_FiliaisFIL_TELEFONE: TFIBStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceConexao: TServiceConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure TServiceConexao.DataModuleCreate(Sender: TObject);
var
  LIniFile   :  TIniFile;
  LDatabase  :  String;
  LUser_Name :  String;
  LPassword  :  String;
  LServidor  :  String;
  LPorta     :  integer;
  LCaminho   :  String;

  begin



      try

        Conexao.Connected:= false;

        LCaminho   := ExtractFileDir(ParamStr(0)) +'\Login.ini';

        LIniFile   := TIniFile.Create(LCaminho);

        LDatabase  := LIniFile.ReadString('Conexao','Database',LDatabase);
        LServidor  := LIniFile.ReadString('Conexao','Servidor', LServidor);
        LPorta     := LIniFile.ReadInteger('Conexao','Porta',LPorta);

        LUser_Name :='SYSDBA';
        LPassword  :='masterkey';


        //JOGANDO AS INFO ABAIXO PARA DENTRO DO CONEXAO
        Conexao.DatabaseName := LDatabase;
        Conexao.DBParams.Values['user_name']:= LUser_Name;
        Conexao.DBParams.Values['Password'] := LPassword;
        Conexao.DBParams.Values['Server']   := LServidor;
        Conexao.DBParams.Values['Porta']    := LPorta.ToString();

        // Conexao.Connected :=True;  (OPCIONAL)
      finally
       FreeAndNil(LIniFile);

      end;




  end;
end.
