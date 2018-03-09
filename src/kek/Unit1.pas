unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ComObj, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    SaveDialog1: TSaveDialog;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Word,WordTable: variant;


implementation

procedure CreateWord;
begin
  Word:=CreateOleObject('Word.Application');
end;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  path:string;
begin
  if SaveDialog1.Execute then
    Word.ActiveDocument.SaveAs(SaveDialog1.FileName);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  i,j,index:integer;
begin
  CreateWord;
  Word.Documents.Add;
  Word.ActiveDocument.Range.InsertBefore('Hello World');
  Word.ActiveDocument.Range.InsertAfter('текст после Hello World');
  Word.ActiveDocument.Range.InsertAfter('окончание строки в документа');

  Word.ActiveDocument.Tables.Add(Word.ActiveDocument.Range,
  5,8);


  word.ActiveDocument.Tables.Item(1).columns.item(1).Width:=22;
  word.ActiveDocument.Tables.Item(1).columns.item(2).Width:=64;
  word.ActiveDocument.Tables.Item(1).columns.item(3).Width:=70;
  word.ActiveDocument.Tables.Item(1).columns.item(4).Width:=60;
  word.ActiveDocument.Tables.Item(1).columns.item(5).Width:=22;
  word.ActiveDocument.Tables.Item(1).columns.item(6).Width:=22;
  word.ActiveDocument.Tables.Item(1).columns.item(7).Width:=22;
  word.ActiveDocument.Tables.Item(1).columns.item(8).Width:=22;

  WordTable:=Word.ActiveDocument.Tables.Item(1);

  WordTable.Style:='—етка таблицы'; // можно поставить любой стиль, доступный в Word

  For i:=1 To 8 Do
  Begin
    WordTable.Cell(1, i).Range.Font.Bold:=True; (* делаю заголовки жирные *)
    WordTable.Cell(1, i).Range.Text:='«аголовок';
  End;
  Index:=2; // индекс вывода (в ¬орде нумераци€ с 1, а 1 - заголовки)
  For i:=2 To 5 Do
  Begin
    For j:=1 To 8 Do
    begin
      WordTable.Cell(I, j).Range.Text:='текст дл€ €чейки';
    end;

  End;
  WordTable.Cell(1,3).Merge(WordTable.Cell(3,3));
end;

end.
