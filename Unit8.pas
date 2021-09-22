unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, frxClass, frxPreview, frxDBSet;

type
  TForm8 = class(TForm)
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxPreview1: TfrxPreview;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Unit1;

end.
