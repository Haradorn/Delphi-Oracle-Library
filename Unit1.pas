unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Data.DB,
  DBAccess, Ora, MemDS, OraCall, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    OraSession1: TOraSession;
    OraQuery1: TOraQuery;
    OraDataSource1: TOraDataSource;
    Button1: TButton;
    OraQuery2: TOraQuery;
    OraDataSource2: TOraDataSource;
    DBGrid3: TDBGrid;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    DBEdit2: TDBEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid2: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBEdit1: TDBEdit;
    TabSheet2: TTabSheet;
    OraQuery4: TOraQuery;
    OraDataSource4: TOraDataSource;
    DBGrid4: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid5: TDBGrid;
    OraQuery5: TOraQuery;
    OraDataSource5: TOraDataSource;
    TabSheet4: TTabSheet;
    DBGrid6: TDBGrid;
    OraQuery6: TOraQuery;
    OraDataSource6: TOraDataSource;
    MainMenu1: TMainMenu;
    Rybub1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4, Unit5, Unit6;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Form2.Show;
  Form2.frxReport1.ShowReport();
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.OraQuery2.Append;
  Form3.ShowModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Form4.ShowModal;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  //Form1.OraQuery3.Append;
  Form5.ShowModal;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Form5.ShowModal;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Form6.ShowModal;
end;
procedure TForm1.N7Click(Sender: TObject);
begin
    Form1.OraQuery2.Append;
    Form3.ShowModal;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
  Form4.ShowModal;
end;

end.
