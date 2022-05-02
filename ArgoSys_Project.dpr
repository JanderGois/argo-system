program ArgoSys_Project;

uses
  Vcl.Forms,
  UnitLogin in 'UnitLogin.pas' {Form1},
  UntWarn in 'UntWarn.pas' {Message};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TMessage, Message);
  Application.Run;
end.
