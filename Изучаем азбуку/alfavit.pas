unit alfavit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls, MMSystem,
  Vcl.Buttons, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure SpeedButton28Click(Sender: TObject);
    procedure SpeedButton29Click(Sender: TObject);
    procedure SpeedButton30Click(Sender: TObject);
    procedure SpeedButton31Click(Sender: TObject);
    procedure SpeedButton32Click(Sender: TObject);
    procedure SpeedButton33Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  SelectedSound: Integer;

implementation

{$R *.dfm}

uses vygruzka, glavnaya;






procedure TForm3.Button1Click(Sender: TObject);
begin
zag.Show;
Form3.close;
PlaySound('����.wav', 0, SND_ASYNC);
end;

procedure TForm3.SpeedButton10Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 9;
end;

procedure TForm3.SpeedButton11Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 10;
end;

procedure TForm3.SpeedButton12Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 11;
end;

procedure TForm3.SpeedButton13Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 12;
end;

procedure TForm3.SpeedButton14Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 13;
end;

procedure TForm3.SpeedButton15Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 14;
end;

procedure TForm3.SpeedButton16Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 15;
end;

procedure TForm3.SpeedButton17Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 16;
end;

procedure TForm3.SpeedButton18Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 17;
end;


procedure TForm3.SpeedButton19Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 18;
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
 SelectedSound := 0;
 Form4.ComboBox1.ItemIndex := SelectedSound;
end;

procedure TForm3.SpeedButton20Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 19;
end;

procedure TForm3.SpeedButton21Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 20;
end;

procedure TForm3.SpeedButton22Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 21;
end;

procedure TForm3.SpeedButton23Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 22;
end;

procedure TForm3.SpeedButton24Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 23;
end;

procedure TForm3.SpeedButton25Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 24;
end;

procedure TForm3.SpeedButton26Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 25;
end;

procedure TForm3.SpeedButton27Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 26;
end;

procedure TForm3.SpeedButton28Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 27;
end;

procedure TForm3.SpeedButton29Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 28;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 1;
end;

procedure TForm3.SpeedButton30Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 29;
end;

procedure TForm3.SpeedButton31Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 30;
end;

procedure TForm3.SpeedButton32Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 31;
end;

procedure TForm3.SpeedButton33Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 32;
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
 Form4.ComboBox1.ItemIndex := SelectedSound;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 2;
end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 3;
end;

procedure TForm3.SpeedButton5Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 4;
end;

procedure TForm3.SpeedButton6Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 5;
end;

procedure TForm3.SpeedButton7Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 6;
end;

procedure TForm3.SpeedButton8Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 7;
end;

procedure TForm3.SpeedButton9Click(Sender: TObject);
begin
Form3.Hide;
 Form4.Show;
Form4.WebBrowser1.Navigate(extractFilePath(paramstr(0))+'�����\�.htm');
SelectedSound := 8;
end;

end.
