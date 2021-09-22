unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxDBSet, frxPreview;

type
  TForm13 = class(TForm)
    frxPreview1: TfrxPreview;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

uses Unit1;

end.
