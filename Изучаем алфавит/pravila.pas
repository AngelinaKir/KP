unit pravila;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, sButton, Vcl.OleCtrls, MMSystem,
  SHDocVw;

type
  TForm8 = class(TForm)
    WebBrowser1: TWebBrowser;
    sButton1: TsButton;
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.sButton1Click(Sender: TObject);
begin
Form8.close;
PlaySound('клик.wav', 0, SND_ASYNC);
end;

end.
