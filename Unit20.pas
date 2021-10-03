unit Unit20;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm20 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
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
  Form20: TForm20;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm20.Button1Click(Sender: TObject);
begin
    if Form1.OraQuery11.Modified then Form1.OraQuery11.Post;
    Form20.Close();
end;

procedure TForm20.Button2Click(Sender: TObject);
begin
    Form1.OraQuery11.Cancel;
    Form20.Close();
end;

end.
