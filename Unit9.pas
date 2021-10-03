unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TForm9 = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm9.Button1Click(Sender: TObject);
begin
  if Form1.OraQuery4.Modified then Form1.OraQuery4.Post;
  Form9.Close();
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
  Form1.OraQuery4.Cancel;
  Form9.Close();
end;

end.
