unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MPlayer, ExtCtrls, Buttons, Menus;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    lbl2: TLabel;
    mp1: TMediaPlayer;
    lbl3: TLabel;
    btn1: TSpeedButton;
    img1: TImage;
    img2: TImage;
    tmr1: TTimer;
    img4: TImage;
    img3: TImage;
    lbl4: TLabel;
    mm1: TMainMenu;
    About1: TMenuItem;
    Exit1: TMenuItem;
    Feedback1: TMenuItem;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Exit1Click(Sender: TObject);
    procedure Feedback1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);

  private
    { Private declarations }
  public

  end;

var
  Form1: TForm1;
  x1:Integer=359;
  x2:Integer=0;
  shx:Integer=-4;
implementation

uses Unit2, Unit4, Unit3;

{$R *.dfm}


procedure TForm1.btn1Click(Sender: TObject);
begin
  mp1.Stop;
  tmr1.Enabled:=False;
  Form1.Hide;
  Form2.img1.Picture.LoadFromFile('Ylife.bmp');
  Form2.img2.Picture.LoadFromFile('Ylife.bmp');
  Form2.img3.Picture.LoadFromFile('Ylife.bmp');
  Form2.Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  img1.Canvas.Brush.Color:=$B0C8A7;
  img1.Canvas.FillRect(img1.ClientRect);
  img2.Canvas.Brush.Color:=$B0C8A7;
  img2.Canvas.FillRect(img2.ClientRect);
  Form1.Color:=$B0C8A7;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  tmr1.Enabled:=True;
  mp1.FileName:='Haddaway - What Is Love.mid';
  mp1.Open;
  mp1.Play;
end;

procedure TForm1.tmr1Timer(Sender: TObject);
var imag1:TBitmap;
    imag2:TBitmap;
    r_arrow:TBitmap;
    l_arrow:TBitmap;
begin
  Form1.DoubleBuffered := true;
  imag1:=TBitmap.Create;
  imag2:=TBitmap.Create;
  r_arrow:=TBitmap.Create;
  l_arrow:=TBitmap.Create;
  imag1.LoadFromFile('unicorn.bmp');
  imag2.LoadFromFile('cat.bmp');
  r_arrow.LoadFromFile('r_arrow.bmp');
  l_arrow.LoadFromFile('l_arrow.bmp');

  x1:=x1+shx;
  x2:=x2+abs(shx);
  if x1<0 then x1:=359;
  if x2>359 then x2:=0;
  img1.Picture:=nil;
  img1.Canvas.Brush.Color:=$B0C8A7;
  img1.Canvas.FillRect(img1.ClientRect);
  img1.Canvas.Draw(x1,0,imag1);
  img2.Picture:=nil;
  img2.Canvas.Brush.Color:=$B0C8A7;
  img2.Canvas.FillRect(img2.ClientRect);
  img2.Canvas.Draw(x2,0,imag2);
  img3.Canvas.Draw(0,0,r_arrow);
  img4.Canvas.Draw(0,0,l_arrow);
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  MessageBox(handle, PChar('I hope you enjoed the game, I`m looking forward to play with you again, press "OK" to exit :)'), PChar('Thank`s for playing!'),(MB_ICONINFORMATION+MB_OK));
  Application.Terminate;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  MessageBox(handle, PChar('I hope you enjoed the game, I`m looking forward to play with you again, press "OK" to exit :)'), PChar('Thank`s for playing!'),(MB_ICONINFORMATION+MB_OK));
  Application.Terminate;
end;

procedure TForm1.Feedback1Click(Sender: TObject);
begin
  MessageBox(handle, PChar(' My mail: "sigor95@ukr.net", Facebook page: "https://www.facebook.com/profile.php?id=100009410341758". '), PChar('Feedback'),(MB_ICONINFORMATION+MB_OK));
end;

procedure TForm1.About1Click(Sender: TObject);
begin
  MessageBox(handle, PChar(' "Guess Melody" v1.0 by Igor Shendera, NUWM, AM-21, 2015 '), PChar('About'),(MB_ICONINFORMATION+MB_OK));
end;

end.
