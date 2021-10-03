unit Unit19;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm19 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form19: TForm19;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm19.Button1Click(Sender: TObject);
var d: string;
begin
  d := Form1.DBEdit7.Text;
  Form1.OraQuery10.Delete;
  Form1.OraQuery10.SQL.Text := 'DELETE FROM m2m_books_authors WHERE sb_id = ' + d + '';
  Form1.OraQuery10.ExecSQL;
  Form1.OraQuery10.SQL.Text := 'SELECT * FROM m2m_books_authors';
  Form1.OraQuery10.ExecSQL;
  Form19.Close;
end;

procedure TForm19.Button2Click(Sender: TObject);
begin
  Form19.Close;
end;

end.
