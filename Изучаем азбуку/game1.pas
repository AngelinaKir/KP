unit game1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Menus, sButton, Vcl.MPlayer;

type
  TGAME = class(TForm)
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer1Timer(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  // ���������� ������ ���� col_row
  col_row = record
    col: integer;
    row: integer;
  end;

const


  MAX_SIZE = 32; // ������������ ���-�� ������ ��������
  MAX_H = 8;     // ������������ ������ ���� - 8�8
  MAX_W = 8;

var
  GAME: TGAME;

  Pole: array [1..MAX_H,1..MAX_W] of integer;
  { Pole[i,j] < 100 - ��� ��������, ������ �������;
    Pole[i,j] > 100 � < 200 - ������ �������, �.�. ����� ����� ��������;
    Pole[i,j] > 200 - ����� ����� ���� ��� ���� �������� }

  Pictures: TBitmap;    // ��������, ����������� �� �����

  n : integer;     // ����� �������� ��� ��������
  count: integer;  // ���������� �������� � ������ ������ ������
  open1: col_row;  // ���������� 1-� �������� ������
  open2: col_row;  // ���������� 2-� �������� ������

  W: integer;    // ���-�� ������ �� �����������
  H: integer;    // ���-�� ������ �� ���������
            // ������������ W � H ������ ���� ������ 2-�
  WK: integer;  // ������ ������
  HK: integer;  // ������ ������


implementation

{$R *.dfm}

uses glavnaya;

// ������ ������ ����
procedure Kletka(col,row: integer);
var
  x,y: integer;     // ����� ������� ���� ������ (����������)
  src, dst : Trect; // �������� � ���������� �������� ������

begin
  // ����������� ���������� ������
  // � ���������� �� ����������� �����
  x := (col-1)*WK;
  y := (row-1)*HK;

  
  if Pole[col,row] > 200 then
   // ��� ���� ������ ������� ����
   // ������ ���� ������ � ����
   begin
      // ���������� ���� �������, �������� � ������
      GAME.Canvas.Brush.Color := clBtnFace;
      GAME.Canvas.Pen.Color := clBtnFace;
      GAME.Canvas.Font.Color := clBtnFace;
    end;


  if (Pole[col,row] > 100) and (Pole[col,row] < 200)
   then
       // ������ ������� - ������� ��������
       begin

      // Pole[col,row] = ����� �������� + 100,
      // ��� 100 - ������� ����, ��� ������ �������
      // ��������� ��������� �������� � Pictures
      src := Bounds((Pole[col,row]-100 -1 )*WK,0,WK,HK);

      // ���������� �������� (������) �� �����
      dst := Bounds(x,y,HK-2,WK-2);

      // ������� �������� � ������
      GAME.Canvas.CopyRect(dst,Pictures.Canvas,src);

      // ���������� ���� ������� � �����
     GAME.Canvas.Pen.Color := clBlack;
     GAME.Canvas.Font.Color := clBlack;
     GAME.Canvas.Brush.Style := bsClear;
  end;


  if (Pole[col,row] > 0) and (Pole[col,row] < 100) then
    // ������ �������, ������ ������ ������
    begin
      GAME.Canvas.Brush.Color := clBtnFace;
      GAME.Canvas.Pen.Color := clBlack;
      GAME.Canvas.Font.Color := clBtnFace;
    end;

  // ���������� ������
  GAME.Canvas.Rectangle(x,y,x+WK-2,y+HK-2);
  //Form1.Canvas.TextOut(x+15,y+15, IntToStr(Pole[col,row]));
  GAME.Canvas.Brush.Color := clBtnFace;

end;

// ������������ ����
procedure ShowPole;
var
   row,col: integer;
begin
   for row:=1 to H do
      for col:=1 to W do
           Kletka(row,col);
end;

// ����� ����
Procedure NewGame;
var

  k: integer;       // ���-�� ������ ��������
  r: integer;       // ��������� �����
  buf: array[1..MAX_SIZE] of integer;
  // � buf[i] ����������, ������� ����� i
  // �������� � ������ Pole
  i,j: integer; // ������� ��������
begin
  Randomize;
  k := Trunc(H*W/2);

  for i:=1 to k do
      buf[i] := 0;

  // ������� � ������ Pole ��������� �����
  // �� 1 �� 2
  // ������ ����� ������ ���� �������� ��� ����
  for i:=1 to H do
    for j:=1 to W do
      begin
        repeat
          r := random (k) + 1;
        until buf[r] < 2;
        Pole[i,j] := r;   // ��� ��������
        inc(buf[r]);
      end;
   // ����� ���� �������������
   n:=0;
   ShowPole;
end;

Procedure NewGame1;
var

  k: integer;       // ���-�� ������ ��������
  r: integer;       // ��������� �����
  buf: array[1..MAX_SIZE] of integer;
  // � buf[i] ����������, ������� ����� i
  // �������� � ������ Pole
  i,j: integer; // ������� ��������
begin
  Randomize;
  k := Trunc(H*W/2);

  for i:=1 to k do
      buf[i] := 0;

  // ������� � ������ Pole ��������� �����
  // �� 1 �� 2
  // ������ ����� ������ ���� �������� ��� ����
  for i:=1 to H do
    for j:=1 to W do
      begin
        repeat
          r := random (k) + 1;
        until buf[r] < 2;
        Pole[i,j] := r;   // ��� ��������
        inc(buf[r]);
      end;
   // ����� ���� �������������
   n:=0;
   ShowPole;
end;

// �������� �����
procedure TGAME.FormCreate(Sender: TObject);
var
  np: integer; // ���-�� ������ ��������
begin
  Pictures := TBitmap.Create;
  // ��������� �������� �� �����
  Pictures.LoadFromFile('����\��������.BMP');

  HK := Pictures.Height-1; // ������ ��������
  WK := HK;                // ������ ��������

  np:= Round(Pictures.Width / WK);
  if np <= 15
    then H := 4
    else H :=5;
  W := Round(np*2/H);

  // ���������� ������� ����
  GAME.ClientHeight := H * HK;
  GAME.ClientWidth := W * WK;


 GAME.Timer1.Enabled := False;
 GAME.Timer1.Interval := 200;

  n := 0;
  NewGame;
    NewGame1;
end;


// ���������� ������ �� ����
procedure TGAME.FormPaint(Sender: TObject);
begin
    ShowPole;
end;

// ������ � ������
procedure TGAME.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  col_: integer;   // ����� ������ �� �����������
  row_: integer;   //����� ������ �� ���������

begin
  col_ := Trunc(X/WK) + 1;
  row_ := Trunc(Y/HK) + 1;


  if Pole[col_,row_] > 200 then
     // ������ � �� ����� ����� �� ����
     // ��� ��������� ������ ��������
  exit;

  // �������� ������ ���
  if count = 0 then
  begin
    count := 1;
    open1.col := col_;
    open1.row := row_;

    // ������ ���������� ��� ��������
    Pole[open1.col,open1.row] := Pole[open1.col,open1.row] + 100;
    Kletka(open1.col,open1.row);
    exit;
  end;

  // ������� ���� ������, ���� ������� ������
  if count = 1 then begin
    open2.col := col_;
    open2.row := row_;

    // ���� ������� ���� ������ � ������ ������
    // � ���� ������, �� ������ �� ����������
    if (open1.col = open2.col) and (open1.row = open2.row)
       then exit

    else begin
      count := 2; // ������ ������� ��� ������
      Pole[open2.col,open2.row] :=
           Pole[open2.col,open2.row] + 100;
      Kletka(open2.col,open2.row); // �������� ������ ������

      // ��������, �������� �������� ����������?
      if Pole[open1.col,open1.row] = Pole[open2.col,open2.row] then
        // ������� ��� ���������� ��������
        begin
          n := n+1;
          GAME.Timer1.Enabled := True; // ��������� ������
          // �������� ��������� ������� OnTimer
          // "������" ��� ���������� ��������
        end;
    end;
    exit;
  end;

  if count = 2 then
  begin
    // ������� 2 ������ � ������� ����������
    // ������� �� � ������� �����, � �������
    // ������ ������

    // ������� �������� ������
    Pole[open1.col,open1.row] := Pole[open1.col,open1.row] - 100;
    Pole[open2.col,open2.row] := Pole[open2.col,open2.row] - 100;
    Kletka(open1.col,open1.row);
    Kletka(open2.col,open2.row);

    // ������ � open1 ������ ������� ������
    open1.col := col_;
    open1.row := row_;
    count := 1;   // ������� �������� ������

    // ������� ������� ������
    Pole[open1.col,open1.row] := Pole[open1.col,open1.row] + 100;
    Kletka(open1.col,open1.row);
  end;
end;

// ��������� ������� �������
procedure TGAME.Timer1Timer(Sender: TObject);
begin
  // � ������� Pole ������ ���������� ��� ���������
  Pole[open1.col,open1.row] := Pole[open1.col,open1.row] + 100;
  Pole[open2.col,open2.row] := Pole[open2.col,open2.row] + 100;
  count := 0;

  // ���������� ������
  Kletka(open2.col,open2.row);
  Kletka(open1.col,open1.row);

  // ��������� �������
  GAME.Timer1.Enabled := False;

  if n = Trunc(W*H/2)
  then // ������� ��� ����
  begin
    GAME.Canvas.Font.Name := 'Times New Roman';
    GAME.Canvas.Font.Size := 26;
    GAME.Canvas.Font.Color := clBlack;
    GAME.Canvas.TextOut(70,140,'����������!');
  end;
end;

// ����� � ���� ������� ����� ����


procedure TGAME.N3Click(Sender: TObject);
begin
Canvas.Rectangle(0,0,ClientWidth,ClientHeight);
    NewGame;
    Pictures.LoadFromFile('����\��������1.BMP');
end;

procedure TGAME.N4Click(Sender: TObject);
begin
Canvas.Rectangle(0,0,ClientWidth,ClientHeight);
    NewGame1;
     Pictures.LoadFromFile('����\��������2.BMP');
end;

procedure TGAME.N5Click(Sender: TObject);
begin
zag.Show;
GAME.close;
end;

end.

