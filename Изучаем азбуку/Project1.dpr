program Project1;

uses
  Vcl.Forms,
  glavnaya in 'glavnaya.pas' {zag},
  zagryzka in 'zagryzka.pas' {nachalo},
  alfavit in 'alfavit.pas' {Form3},
  vygruzka in 'vygruzka.pas' {Form4},
  avtor in 'avtor.pas' {Form7},
  pravila in 'pravila.pas' {Form8},
  game1 in 'game1.pas' {GAME};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tzag, zag);
  Application.CreateForm(Tnachalo, nachalo);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TGAME, GAME);
  Application.Run;
end.
