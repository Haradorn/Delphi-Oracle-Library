unit Unit21;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm21 = class(TForm)
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
  Form21: TForm21;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm21.Button1Click(Sender: TObject);
var d: string;
begin
  d := Form1.DBEdit8.Text;
  Form1.OraQuery11.Delete;
  Form1.OraQuery11.SQL.Text := 'DELETE FROM m2m_books_genres WHERE sb_id = ' + d + '';
  Form1.OraQuery11.ExecSQL;
  Form1.OraQuery11.SQL.Text := 'SELECT * FROM m2m_books_genres';
  Form1.OraQuery11.ExecSQL;
  Form21.Close;
end;

procedure TForm21.Button2Click(Sender: TObject);
begin
  Form21.Close;
end;

end.
