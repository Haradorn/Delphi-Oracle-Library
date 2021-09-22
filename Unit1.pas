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
    OraQuery3: TOraQuery;
    OraDataSource3: TOraDataSource;
    Button8: TButton;
    Button9: TButton;
    OraQuery7: TOraQuery;
    OraDataSource7: TOraDataSource;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Button10: TButton;
    OraQuery8: TOraQuery;
    OraDataSource8: TOraDataSource;
    DBEdit5: TDBEdit;
    TabSheet5: TTabSheet;
    OraQuery9: TOraQuery;
    OraDataSource9: TOraDataSource;
    DBGrid1: TDBGrid;
    DBEdit6: TDBEdit;
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
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit8, Unit9, Unit10, Unit11,
  Unit12, Unit13, Unit14, Unit15, Unit16, Unit17;

procedure TForm1.Button10Click(Sender: TObject);
begin
  Form13.Show;
  Form13.frxReport1.ShowReport();
end;

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
procedure TForm1.Button8Click(Sender: TObject);
begin
  Form7.Show;
  Form7.frxReport1.ShowReport();
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  Form8.Show;
  Form8.frxReport1.ShowReport();
end;

procedure TForm1.N10Click(Sender: TObject);
begin
  Form1.OraQuery4.Append;
  Form9.ShowModal;
end;

procedure TForm1.N11Click(Sender: TObject);
begin
  Form9.ShowModal;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
  Form10.ShowModal;
end;

procedure TForm1.N13Click(Sender: TObject);
begin
  Form1.OraQuery5.Append;
  Form11.ShowModal;
end;

procedure TForm1.N14Click(Sender: TObject);
begin
  Form11.ShowModal;
end;

procedure TForm1.N15Click(Sender: TObject);
begin
   Form12.ShowModal;
end;

procedure TForm1.N16Click(Sender: TObject);
begin
    Form1.OraQuery6.Append;
    Form14.ShowModal;
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

procedure TForm1.N17Click(Sender: TObject);
begin
  Form14.ShowModal;
end;

procedure TForm1.N18Click(Sender: TObject);
begin
  Form15.ShowModal;
end;

procedure TForm1.N19Click(Sender: TObject);
begin
    Form1.OraQuery9.Append;
    Form16.ShowModal;
end;

procedure TForm1.N20Click(Sender: TObject);
begin
    Form16.ShowModal;
end;

procedure TForm1.N21Click(Sender: TObject);
begin
    Form17.ShowModal;
end;

end.
