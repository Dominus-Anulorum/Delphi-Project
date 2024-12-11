unit View.Principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
   System.Classes,
    Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Data.DB,
  Datasnap.DBClient,
  pFIBClientDataSet,
   Vcl.StdCtrls,
   Vcl.ExtCtrls,
   Vcl.Menus,
   FIBDatabase,
  pFIBDatabase,
  FIBDataSet,
  pFIBDataSet, dxGDIPlusClasses, Vcl.Buttons, System.Actions, Vcl.ActnList,
  Vcl.ImgList;

type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    pnlLogo: TPanel;
    plnInfologo: TPanel;
    lblEmpresa: TLabel;
    Lbl: TLabel;
    pnlVersao: TPanel;
    lblversao: TLabel;
    lblVersaoTitulo: TLabel;
    pnlUsuario: TPanel;
    pnlLinhaamarela: TPanel;
    pnlImagem: TPanel;
    imgUserAmarelo: TImage;
    pnlDadosUsuario: TPanel;
    lblNomeUsuario: TLabel;
    lblPerfil: TLabel;
    pnlLinhamarela: TPanel;
    pnlSAIR: TPanel;
    pnlShapeMenu: TPanel;
    shpMenuSegue: TShape;
    pnlDadosMenu: TPanel;
    btnConfig: TSpeedButton;
    btnCaixa: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnProduto: TSpeedButton;
    btnClientes: TSpeedButton;
    btnSAIR: TSpeedButton;
    UserBranco: TImage;
    PnlBackPrincipal: TPanel;
    PnlRodape: TPanel;
    pnlLicenciatura: TPanel;
    pnlLicen�aInfo: TPanel;
    lbllicen�aempresa: TLabel;
    Label1: TLabel;
    pnlLInhaamarela2: TPanel;
    pnlConteudo: TPanel;
    Image1: TImage;


    procedure btnSAIRClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblEmpresaMouseEnter(Sender: TObject);
    procedure lblEmpresaMouseLeave(Sender: TObject);
    procedure UserBrancoMouseEnter(Sender: TObject);
    procedure imgUserAmareloMouseLeave(Sender: TObject);
    procedure btnClientesMouseEnter(Sender: TObject);
    procedure btnClientesMouseLeave(Sender: TObject);
    procedure btnProdutoMouseEnter(Sender: TObject);
    procedure btnProdutoMouseLeave(Sender: TObject);
    procedure btnFornecedoresMouseEnter(Sender: TObject);
    procedure btnFornecedoresMouseLeave(Sender: TObject);
    procedure btnCaixaMouseEnter(Sender: TObject);
    procedure btnCaixaMouseLeave(Sender: TObject);
    procedure btnConfigMouseEnter(Sender: TObject);
    procedure btnConfigMouseLeave(Sender: TObject);






  private
   procedure BarraMenuSegue (Sender: TObject);
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}









//MUDAN�AS EM COR E INTERA��ES COM USUARIO ESTETICAS

    procedure TViewPrincipal.BarraMenuSegue(Sender: TObject);
    begin       //BARRA QUE FICA QUANDO CLICAMOS NAS OP��ES DO MENU
      shpMenuSegue.Brush.Color:= clYellow;
      shpMenuSegue.Height := TSpeedButton(Sender).Height;
      shpMenuSegue.Top :=    TSpeedButton(Sender).Top;
      shpMenuSegue.Left := TSpeedButton(Sender).Left;
      shpMenuSegue.Repaint;
      end;

    procedure TViewPrincipal.btnCaixaClick(Sender: TObject);
    begin          //CAIXA
      BarraMenuSegue(Sender);
    end;

    procedure TViewPrincipal.btnCaixaMouseEnter(Sender: TObject);
begin
       if Sender is TSpeedButton then
        TSpeedButton(Sender).Glyph.LoadFromFile('C:\Users\CBSistemas\Desktop\Delphiproject\Win32\Debug\Caixa.bmp')
end;

procedure TViewPrincipal.btnCaixaMouseLeave(Sender: TObject);
begin
       if Sender is TSpeedButton then
        TSpeedButton(Sender).Glyph.LoadFromFile('C:\Users\CBSistemas\Desktop\Delphiproject\Win32\Debug\Dinheiro.bmp')
end;

procedure TViewPrincipal.btnClientesClick(Sender: TObject);
    begin         //CLIENTES
      BarraMenuSegue(Sender);

    end;


procedure TViewPrincipal.btnClientesMouseEnter(Sender: TObject);
begin

    if Sender is TSpeedButton then
      TSpeedButton(Sender).Glyph.LoadFromFile('C:\Users\CBSistemas\Desktop\Delphiproject\Win32\Debug\Cliente-full.bmp'); // Caminho do �cone normal
end;

procedure TViewPrincipal.btnClientesMouseLeave(Sender: TObject);
begin
            if Sender is TSpeedButton then
        TSpeedButton(Sender).Glyph.LoadFromFile('C:\Users\CBSistemas\Desktop\Delphiproject\Win32\Debug\Cliente-outline.bmp') // Caminho do �cone de hover
end;

procedure TViewPrincipal.btnConfigClick(Sender: TObject);
    begin        //CONFIG
      BarraMenuSegue(Sender);
    end;

    procedure TViewPrincipal.btnConfigMouseEnter(Sender: TObject);
begin
     if Sender is TSpeedButton then
       TSpeedButton(Sender).Glyph.LoadFromFile('C:\Users\CBSistemas\Desktop\Delphiproject\Win32\Debug\Config-full.bmp');
end;

procedure TViewPrincipal.btnConfigMouseLeave(Sender: TObject);
begin
     if Sender is TSpeedButton then
        TSpeedButton(Sender).Glyph.LoadFromFile('C:\Users\CBSistemas\Desktop\Delphiproject\Win32\Debug\Config-outline.bmp')
end;

procedure TViewPrincipal.btnFornecedoresClick(Sender: TObject);
    begin       //FORNECEDOR
      BarraMenuSegue(Sender);
    end;

procedure TViewPrincipal.btnFornecedoresMouseEnter(Sender: TObject);
begin
   if Sender is TSpeedButton then
      TSpeedButton(Sender).Glyph.LoadFromFile('C:\Users\CBSistemas\Desktop\Delphiproject\Win32\Debug\TFornecedor-full.bmp');
end;

procedure TViewPrincipal.btnFornecedoresMouseLeave(Sender: TObject);
begin
    if Sender is TSpeedButton then
        TSpeedButton(Sender).Glyph.LoadFromFile('C:\Users\CBSistemas\Desktop\Delphiproject\Win32\Debug\Fornecedor-outline.bmp')
end;

procedure TViewPrincipal.btnProdutoClick(Sender: TObject);
    begin      //PRODUTO
      BarraMenuSegue(Sender);
    end;

    procedure TViewPrincipal.btnProdutoMouseEnter(Sender: TObject);
begin
   if Sender is TSpeedButton then
      TSpeedButton(Sender).Glyph.LoadFromFile('C:\Users\CBSistemas\Desktop\Delphiproject\Win32\Debug\Produto-full.bmp');
end;

procedure TViewPrincipal.btnProdutoMouseLeave(Sender: TObject);
begin
   if Sender is TSpeedButton then
        TSpeedButton(Sender).Glyph.LoadFromFile('C:\Users\CBSistemas\Desktop\Delphiproject\Win32\Debug\Produto-outline.bmp')
end;

procedure TViewPrincipal.btnSAIRClick(Sender: TObject);
    begin      //SAIR
      Application.Terminate;
    end;


     //COLOCA A BARRA INICIANDO NO BOTAO CLIENTES
    procedure TViewPrincipal.FormShow(Sender: TObject);
    begin
      BarraMenuSegue(btnClientes);
    end;

     // MODIFICA ICONE DO USER BRANCO/AMARELO
    procedure TViewPrincipal.imgUserAmareloMouseLeave(Sender: TObject);
    begin
      UserBranco.BringToFront;
    end;
    procedure TViewPrincipal.UserBrancoMouseEnter(Sender: TObject);
    begin
      UserBranco.SendToBack;
    end;
    //////// ATE AQUI ///////////////////////////////

    procedure TViewPrincipal.lblEmpresaMouseEnter(Sender: TObject);
    begin
         lblEmpresa.Font.Color :=clYellow;
    end;

    procedure TViewPrincipal.lblEmpresaMouseLeave(Sender: TObject);
    begin
        lblEmpresa.Font.Color :=clWhite;
    end;


//////////////////////////////// FIM DAS MUDAN�AS EST�TICAS./////////////////////////////




end.
