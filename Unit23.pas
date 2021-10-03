unit Unit23;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls;

type
  TForm23 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Splitter1: TSplitter;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form23: TForm23;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm23.Button1Click(Sender: TObject);
begin
  if Form1.OraQuery13.Active then Form1.OraQuery13.Close;
  Form1.OraQuery13.SQL.Clear;
  Form1.OraQuery13.SQL.Assign(Form23.Memo1.Lines);
  Form1.OraQuery13.Open;
end;

procedure TForm23.FormActivate(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Assign(Form1.OraQuery13.SQL);
  Form1.OraQuery13.Open;
end;

procedure TForm23.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Form1.OraQuery13.Active then Form1.OraQuery13.Close;
end;

end.
