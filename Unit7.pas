unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, frxPreview;

type
  TForm7 = class(TForm)
    frxPreview1: TfrxPreview;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit1;

end.
