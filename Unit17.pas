unit Unit17;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm17 = class(TForm)
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
  Form17: TForm17;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm17.Button1Click(Sender: TObject);
var d: string;
begin
  d := Form1.DBEdit5.Text;
  Form1.OraQuery9.Delete;
  Form1.OraQuery9.SQL.Text := 'DELETE FROM subscriptions WHERE sb_id = ' + d + '';
  Form1.OraQuery9.ExecSQL;
  Form1.OraQuery9.SQL.Text := 'SELECT * FROM subscriptions';
  Form1.OraQuery9.ExecSQL;
  Form17.Close;
end;

procedure TForm17.Button2Click(Sender: TObject);
begin
   Form17.Close;
end;

end.
