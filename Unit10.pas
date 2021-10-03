unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm10.Button1Click(Sender: TObject);
var d: string;
begin
  d := Form1.DBEdit3.Text;
  Form1.OraQuery4.Delete;
  Form1.OraQuery4.SQL.Text := 'DELETE FROM authors WHERE a_id = ' + d + '';
  Form1.OraQuery4.ExecSQL;
  Form1.OraQuery4.SQL.Text := 'SELECT * FROM authors';
  Form1.OraQuery4.ExecSQL;
  Form10.Close;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
  Form10.Close;
end;

end.
