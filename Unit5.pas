unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.ExtDlgs;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Image1: TImage;
    DBMemo1: TDBMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm5.Button1Click(Sender: TObject);
var
  pic: string;
begin
  Form1.OraQuery4.Edit;
  if Form5.OpenPictureDialog1.Execute then Form5.DBMemo1.Text := Form5.OpenPictureDialog1.FileName;
  pic := Form5.DBMemo1.Text;
  Form5.Image1.Picture.LoadFromFile(pic);
  Form1.OraQuery4.Post;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  if Form1.OraQuery4.Modified then Form1.OraQuery4.Post;
  Form5.Close;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
  Form1.OraQuery4.Cancel;
  Form5.Close;
end;
procedure TForm5.FormCreate(Sender: TObject);
begin
  if Form5.DBMemo1.Text = '' then Form5.Image1.Picture.LoadFromFile('image\V.jpg')
  else Form5.Image1.Picture.LoadFromFile(Form5.DBMemo1.Text);
end;

end.