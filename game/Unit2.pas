unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MPlayer, ExtCtrls, ComCtrls, Gauges, Buttons, MMsystem, Math;
 var
  points:Integer;
  lifes:Integer;
  nick:string;
type
  TGauge = class(Gauges.TGauge)
    public
      property OnMouseDown;
      property OnClick;
  end;
  TForm2 = class(TForm)
    mp1: TMediaPlayer;
    tmr1: TTimer;
    g1: TGauge;
    btn4: TBitBtn;
    btn5: TBitBtn;
    btn6: TBitBtn;
    trckbr1: TTrackBar;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    lbl3: TLabel;
    btn1: TButton;
    rg1: TRadioGroup;
    lbl4: TLabel;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    btn2: TButton;
    procedure tmr1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure trckbr1Change(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
   


  private
    { Private declarations }
  public
    procedure GaugeHorzMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure GaugeOnClick(Sender: TObject);
    procedure Main(Sender: TObject);
  end;

var
  Form2: TForm2;

implementation

uses Unit1, Unit3, Unit4;

{$R *.dfm}

procedure TForm2.Main(Sender: TObject);
var
a:array[1..100]of string;
num:array[1..4]of Integer;
f:TextFile;
i,k:Integer;
begin
  Randomize;
  //Завантаження файлу зі списком пісень і занесення їх у масив
  assignfile(f,'songlist.txt');
  reset(f);
  i:=1;
  while not eof(f) do
  begin
  readln(f,a[i]);
  inc(i);
  end;
  closefile(f);

  //Вибір випадкових пісень до radiogroup
  rg1.Items.Clear;
  for i:=1 to 4 do
  begin
     z: num[i]:=RandomRange(1,101);
     for k:=1 to i-1 do             //Перевірка на повтор вибраних пісень
      if num[k]=num[i] then goto z;
  end;
  rg1.Items.Add(a[num[1]]);
  rg1.Items.Add(a[num[2]]);
  rg1.Items.Add(a[num[3]]);
  rg1.Items.Add(a[num[4]]);

  //Вибір та завантаження випадкової пісні з обраних чотирьох, щоб
  //уникнути розміщення правильної відповіді на одному й тому ж місці
  mp1.FileName:=a[num[RandomRange(1,5)]]+'.mid';
  mp1.Open;
  g1.MaxValue:=mp1.Length;
  btn2.Enabled:=False;
  btn1.Enabled:=True;
end;

procedure TForm2.tmr1Timer(Sender: TObject);
begin
  g1.Progress:=mp1.Position;
end;

procedure TForm2.GaugeHorzMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then begin
    with TGauge(Sender) do Progress:=(round(((MaxValue-MinValue)/Width)*X)+MinValue);
  end;
end;

procedure TForm2.GaugeOnClick(Sender: TObject);
begin
  mp1.Pause;
  mp1.Position:=g1.Progress;
  mp1.Play;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mp1.Stop;
  MessageBox(handle, PChar('I hope you enjoed the game, I`m looking forward to play with you again, press "OK" to exit :)'), PChar('Thank`s for playing!'),(MB_ICONINFORMATION+MB_OK));
  Application.Terminate;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
  mp1.Play;
end;

procedure TForm2.btn5Click(Sender: TObject);
begin
  mp1.Pause;
end;

procedure TForm2.btn6Click(Sender: TObject);
begin
  mp1.Stop;
  mp1.Position:=0;
end;

procedure TForm2.trckbr1Change(Sender: TObject);
var
  Value: DWord;
begin
  //Value := $FFFF - trckbr1.Position;
  Value:= trckbr1.Max - trckbr1.Position;
  WaveOutSetVolume(0, (Value SHL 16) + Value);
end;

procedure TForm2.btn1Click(Sender: TObject);
label m;
var
  i:Integer;
  str:string;
begin
  if rg1.ItemIndex=-1 then
  begin
   lifes:=lifes-1;
   goto m;
  end;

  for i:=0 to 3 do
  begin
  str:=rg1.Items[rg1.ItemIndex];
  end;

  if mp1.FileName=str+'.mid' then
  begin
  points:=points+100;
  Form2.edt1.Text:=IntToStr(points);
  end
  else
  lifes:=lifes-1;
  m:
  btn2.Enabled:=True;
  btn1.Enabled:=False;
  if lifes=3 then
  begin
  Form2.img1.Picture.LoadFromFile('Ylife.bmp');
  Form2.img2.Picture.LoadFromFile('Ylife.bmp');
  Form2.img3.Picture.LoadFromFile('Ylife.bmp');
  end;
  if lifes=2 then
  begin
  Form2.img1.Picture.LoadFromFile('Nlife.bmp');
  Form2.img2.Picture.LoadFromFile('Ylife.bmp');
  Form2.img3.Picture.LoadFromFile('Ylife.bmp');
  end;
  if lifes=1 then
  begin
  Form2.img1.Picture.LoadFromFile('Nlife.bmp');
  Form2.img2.Picture.LoadFromFile('Nlife.bmp');
  Form2.img3.Picture.LoadFromFile('Ylife.bmp');
  end;
  if lifes=0 then
  begin
  Form2.img1.Picture.LoadFromFile('Nlife.bmp');
  Form2.img2.Picture.LoadFromFile('Nlife.bmp');
  Form2.img3.Picture.LoadFromFile('Nlife.bmp');
  Form3.lbl2.Caption:=inttostr(points);
  Form2.Hide;
  mp1.Stop;
  Form3.Show;
  end;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
  Main(Form2);
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  //Визначення подій для Gauge
  g1.OnClick:=GaugeOnClick;
  g1.OnMouseDown:=GaugeHorzMouseDown;

  main(Form2);

  points:=0;
  edt1.Text:=IntToStr(points);
  lifes:=3;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Form2.Color:=$B0C8A7;
end;

end.
