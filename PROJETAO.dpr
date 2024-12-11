program PROJETAO;

uses
  Vcl.Forms,
  View.Principal in 'src\View\View.Principal.pas' {ViewPrincipal},
  Service.conexao in 'src\Service.conexao.pas' {ServiceConexao: TDataModule},
  Service.Cadastro in 'src\services\Service.Cadastro.pas' {ServiceCadastro: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TServiceCadastro, ServiceCadastro);
  Application.Run;
end.
