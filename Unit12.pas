unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm12 = class(TForm)
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
  Form12: TForm12;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm12.Button1Click(Sender: TObject);
var d: string;
begin
  d := Form1.DBEdit4.Text;
  Form1.OraQuery5.Delete;
  Form1.OraQuery5.SQL.Text := 'DELETE FROM genres WHERE g_id = ' + d + '';
  Form1.OraQuery5.ExecSQL;
  Form1.OraQuery5.SQL.Text := 'SELECT * FROM genres';
  Form1.OraQuery5.ExecSQL;
  Form12.Close;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
   Form12.Close;
end;

end.
