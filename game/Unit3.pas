unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

var
  fil:TextFile;
  score:array[1..6]of integer;
  nickname:array[1..6]of string;
  results:array[1..6]of string;

type
  TForm3 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    btn2: TButton;
    btn3: TButton;
    lbl4: TLabel;
    edt1: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1, Unit4, Unit2;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
 Form3.Hide;
 Form1.Show;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  Form3.Color:=$B0C8A7;
  edt1.Visible:=False;
  lbl4.Visible:=False;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
     Form3.Hide;
     Form4.Show;
end;

procedure TForm3.FormShow(Sender: TObject);
var
i,j,n:Integer;
str,sbuf:string;
buf:Integer;
begin
  edt1.Visible:=False;
  lbl4.Visible:=False;

  Assignfile(fil,'highscores.txt');
  reset(fil);
  score[6]:=0;
  edt1.Clear;

  //Зчитування рекордів у масив
  i:=1;
  while not eof(fil) do
  begin
    readln(fil,results[i]);
    Inc(i);
  end;
  CloseFile(fil);

  //Формування масиву очок
  for i:=1 to 5 do
  begin
    str:=results[i];
    if Pos(' ',str)>1 then
    score[i]:=StrToInt(Copy(str, 1, Pos(' ',str)-1));
  end;

  //Формування масиву нікнеймів
  for i:=1 to 5 do
  begin
    str:=results[i];
    n:=pos('-',str);
    nickname[i]:=copy(str,n+1,Length(str)-n+1);
  end;

  j:=0;
  for i:=1 to 5 do
  begin
    if points>score[i] then
    j:=j+1;
  end;

  if j>=1 then
  begin
    edt1.Visible:=True;
    lbl4.Visible:=True;
  end;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MessageBox(handle, PChar('I hope you enjoed the game, I`m looking forward to play with you again, press "OK" to exit :)'), PChar('Thank`s for playing!'),(MB_ICONINFORMATION+MB_OK));
  Application.Terminate;
end;

end.
