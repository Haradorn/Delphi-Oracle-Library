unit Unit15;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm15 = class(TForm)
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
  Form15: TForm15;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm15.Button1Click(Sender: TObject);
var d: string;
begin
  d := Form1.DBEdit5.Text;
  Form1.OraQuery6.Delete;
  Form1.OraQuery6.SQL.Text := 'DELETE FROM subscribers WHERE s_id = ' + d + '';
  Form1.OraQuery6.ExecSQL;
  Form1.OraQuery6.SQL.Text := 'SELECT * FROM subscribers';
  Form1.OraQuery6.ExecSQL;
  Form15.Close;
end;

procedure TForm15.Button2Click(Sender: TObject);
begin
  Form15.Close;
end;

end.
