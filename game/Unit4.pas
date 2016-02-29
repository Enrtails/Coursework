unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TForm4 = class(TForm)
    redt1: TRichEdit;
    lbl1: TLabel;
    btn1: TButton;
    btn2: TButton;
    procedure FormShow(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit1, Unit2, Unit3;

{$R *.dfm}

procedure TForm4.FormShow(Sender: TObject);
var
 i, j: Integer;
 str,sbuf:string;
 buf:Integer;
begin
  nickname[6]:=' '+Form3.edt1.Text;
  score[6]:=points;

  for i:=1 to 5 do
  begin
    for j:=1 to 5 do
    begin
      if score[j] < score[j+1] then
      begin
      buf:=score[j];
      score[j]:=score[j+1];
      score[j+1]:=buf;

      sbuf:=nickname[j];
      nickname[j]:=nickname[j+1];
      nickname[j+1]:=sbuf;
      end;
    end;
  end;

  //Початок показу рекордів у "річедіт"
  form4.redt1.Lines.Clear;
  for i:=1 to 5 do
  begin
    if (i=1)and(i<>5) then
    begin
      redt1.SelAttributes.Color:=clOlive;
      redt1.Paragraph.Alignment:=taCenter;
    end;
    form4.redt1.Lines.Add(IntToStr(score[i]) + ' -' + nickname[i]);
  end;
  form4.redt1.SelStart:=0;
  //Кінець показу рекордів у "річедіт"
  
  redt1.Lines.SaveToFile('highscores.txt');
end;

procedure TForm4.btn1Click(Sender: TObject);
begin
  Form4.Hide;
  Form3.Show;
end;

procedure TForm4.btn2Click(Sender: TObject);
begin
  Form4.Hide;
  Form1.Show;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MessageBox(handle, PChar('I hope you enjoed the game, I`m looking forward to play with you again, press "OK" to exit :)'), PChar('Thank`s for playing!'),(MB_ICONINFORMATION+MB_OK));
  Application.Terminate;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  Form4.Color:=$B0C8A7;
end;

end.
