unit Service.Cadastro;

interface

uses
  System.SysUtils,
  System.Classes,
  Service.conexao;

type
  TServiceCadastro = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
