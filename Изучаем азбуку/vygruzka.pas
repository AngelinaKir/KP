unit vygruzka;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, MMSystem,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.MPlayer, Vcl.Buttons,
  Vcl.OleCtrls, SHDocVw, sButton;

type
  TForm4 = class(TForm)
    WebBrowser1: TWebBrowser;
    sButton1: TsButton;
    ComboBox1: TComboBox;
    MediaPlayer1: TMediaPlayer;
    sButton2: TsButton;
    procedure sButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses alfavit;


procedure TForm4.FormCreate(Sender: TObject);
begin
 ComboBox1.Items.Add('звук\А.mp3');
 ComboBox1.Items.Add('звук\Б.mp3');
 ComboBox1.Items.Add('звук\В.mp3');
 ComboBox1.Items.Add('звук\Г.mp3');
 ComboBox1.Items.Add('звук\Д.mp3');
 ComboBox1.Items.Add('звук\Е.mp3');
 ComboBox1.Items.Add('звук\Ё.mp3');
 ComboBox1.Items.Add('звук\Ж.mp3');
 ComboBox1.Items.Add('звук\З.mp3');
 ComboBox1.Items.Add('звук\И.mp3');
 ComboBox1.Items.Add('звук\Й.mp3');
 ComboBox1.Items.Add('звук\К.mp3');
 ComboBox1.Items.Add('звук\Л.mp3');
 ComboBox1.Items.Add('звук\М.mp3');
 ComboBox1.Items.Add('звук\Н.mp3');
 ComboBox1.Items.Add('звук\О.mp3');
 ComboBox1.Items.Add('звук\П.mp3');
 ComboBox1.Items.Add('звук\Р.mp3');
 ComboBox1.Items.Add('звук\С.mp3');
 ComboBox1.Items.Add('звук\Т.mp3');
 ComboBox1.Items.Add('звук\У.mp3');
 ComboBox1.Items.Add('звук\Ф.mp3');
 ComboBox1.Items.Add('звук\Х.mp3');
 ComboBox1.Items.Add('звук\Ц.mp3');
 ComboBox1.Items.Add('звук\Ч.mp3');
 ComboBox1.Items.Add('звук\Ш.mp3');
 ComboBox1.Items.Add('звук\Щ.mp3');
 ComboBox1.Items.Add('звук\Ъ.mp3');
 ComboBox1.Items.Add('звук\Ы.mp3');
 ComboBox1.Items.Add('звук\Ь.mp3');
 ComboBox1.Items.Add('звук\Э.mp3');
 ComboBox1.Items.Add('звук\Ю.mp3');
 ComboBox1.Items.Add('звук\Я.mp3');
end;

procedure TForm4.sButton1Click(Sender: TObject);
begin
Form3.Show;
Form4.Close;
PlaySound('клик.wav', 0, SND_ASYNC);
end;

procedure TForm4.sButton2Click(Sender: TObject);
begin
 ComboBox1.ItemIndex := SelectedSound;
  // Проверяем, что индекс находится в допустимом диапазоне для ComboBox
  if (ComboBox1.ItemIndex >= 0) and (ComboBox1.ItemIndex < ComboBox1.Items.Count) then
  begin
    // Устанавливаем файл для воспроизведения
    MediaPlayer1.FileName := ComboBox1.Items[ComboBox1.ItemIndex];
    // Открываем файл
    MediaPlayer1.Open;
    // Воспроизводим файл
    MediaPlayer1.Play;
  end
  else
    ShowMessage('Ошибка: Неверный индекс звука');
end;

end.
