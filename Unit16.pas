unit Unit16;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ComCtrls;

type
  TForm16 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Button1: TButton;
    Button2: TButton;
    DBComboBox1: TDBComboBox;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm16.Button1Click(Sender: TObject);
begin
  Form1.OraQuery2.Active := false;
  Form1.OraQuery9.FieldByName('sb_start').Value := DateTimePicker1.DateTime;
  Form1.OraQuery9.FieldByName('sb_finish').Value := DateTimePicker2.DateTime;
  if Form1.OraQuery9.Modified then Form1.OraQuery9.Post;
  Form1.OraQuery2.Active := true;
  Form16.Close();
end;

procedure TForm16.Button2Click(Sender: TObject);
begin
  Form1.OraQuery9.Cancel;
  Form16.Close();
end;

procedure TForm16.FormActivate(Sender: TObject);
begin
  DateTimePicker1.Time := Now();
end;

end.
