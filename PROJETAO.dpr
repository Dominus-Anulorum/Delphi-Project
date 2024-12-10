program PROJETAO;

uses
  Vcl.Forms,
  PROJETO in '..\..\Documents\RAD Studio\Projects\PROJETO.pas' {ViewPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.Run;
end.
