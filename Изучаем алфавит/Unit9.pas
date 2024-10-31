unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.ExtCtrls, sLabel, Vcl.Imaging.jpeg;

type
  TForm9 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Panel2: TPanel;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    procedure FormCreate(Sender: TObject);
    procedure Panel1DragDrop(Sender, Source: TObject; X, Y: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  CorrectLetter:char;

implementation

{$R *.dfm}

procedure TForm9.FormCreate(Sender: TObject);
begin
  // Load images and letters here (e.g., from files or resources)
  // Set the DragMode property of the labels to dmManual
  sLabel1.DragMode := dmManual;
  sLabel2.DragMode := dmManual;
  sLabel3.DragMode := dmManual;
end;

procedure TForm9.Panel1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
if (Source is TLabel) then
  begin
    TLabel(Source).Parent := TPanel(Sender);
    TLabel(Source).Left := X;
    TLabel(Source).Top := Y;
    // Check if all letters are correctly matched to images
    if (sLabel1.Parent = Panel1) and (sLabel2.Parent = Panel1) and
      (sLabel3.Parent = Panel1) then
    begin
      ShowMessage('Молодец! Все сопоставлено правильно.');
      // Optionally, progress to the next level or perform other actions
    end
    else
    begin
      ShowMessage('Попробуй ещё раз.');
      // Optionally, reset the positions or provide feedback
    end;
  end;
end;

end.
