unit zagryzka;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, Vcl.Samples.Gauges, sGauge;

type
  Tnachalo = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    sGauge1: TsGauge;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  nachalo: Tnachalo;

implementation

{$R *.dfm}

uses glavnaya;



procedure Tnachalo.FormCreate(Sender: TObject);
begin
 Timer1.Interval := 10; // �������� � �������������
  Timer1.Enabled := True; // ��������� �������
end;

procedure Tnachalo.Timer1Timer(Sender: TObject);
begin
  if sGauge1.Progress < 100 then
  begin
    sGauge1.Progress := sGauge1.Progress + 1;
  end
  else if sGauge1.Progress = 100 then // ������� ��� ��������
  begin
    Timer1.Enabled := False; // ��������� ������� ����� ���������� 100%
    zag.Show; // �������� ������ �����
    nachalo.Close; // ������� ������� �����
  end;
end;

end.
