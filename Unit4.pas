unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
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
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm4.Button1Click(Sender: TObject);
var d: string;
begin
  d := Form1.DBEdit1.Text;
  Form1.OraQuery2.Delete;
  Form1.OraQuery2.SQL.Text := 'DELETE FROM books WHERE b_id = ' + d + '';
  Form1.OraQuery2.ExecSQL;
  Form1.OraQuery2.SQL.Text := 'SELECT * FROM books';
  Form1.OraQuery2.ExecSQL;
  Form4.Close;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  Form4.Close;
end;

end.
