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
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
 ComboBox1.Items.Add('����\�.mp3');
end;

procedure TForm4.sButton1Click(Sender: TObject);
begin
Form3.Show;
Form4.Close;
PlaySound('����.wav', 0, SND_ASYNC);
end;

procedure TForm4.sButton2Click(Sender: TObject);
begin
 ComboBox1.ItemIndex := SelectedSound;
  // ���������, ��� ������ ��������� � ���������� ��������� ��� ComboBox
  if (ComboBox1.ItemIndex >= 0) and (ComboBox1.ItemIndex < ComboBox1.Items.Count) then
  begin
    // ������������� ���� ��� ���������������
    MediaPlayer1.FileName := ComboBox1.Items[ComboBox1.ItemIndex];
    // ��������� ����
    MediaPlayer1.Open;
    // ������������� ����
    MediaPlayer1.Play;
  end
  else
    ShowMessage('������: �������� ������ �����');
end;

end.
