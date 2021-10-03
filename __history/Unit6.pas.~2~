unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
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
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm6.Button1Click(Sender: TObject);
var
  d: string;
begin
  d := Form1.DBEdit2.Text;
  //Form1.OraQuery3.Delete;
  //Form1.OraQuery3.SQL.Text := 'DELETE FROM mtr WHERE g_id = ' + d + '';
  //Form1.OraQuery3.ExecSQL;
  //Form1.OraQuery3.SQL.Text := 'SELECT * FROM mtr';
  //Form1.OraQuery3.ExecSQL;
  Form6.Close;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  Form6.Close;
end;

end.
