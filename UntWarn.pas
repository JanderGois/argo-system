unit UntWarn;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TMessage = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label5: TLabel;
    Label6: TLabel;
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Message: TMessage;

implementation

{$R *.dfm}

procedure TMessage.Image1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
