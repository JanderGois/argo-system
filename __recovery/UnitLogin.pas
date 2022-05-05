unit UnitLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Vcl.WinXCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Image2: TImage;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image3: TImage;
    Label7: TLabel;
    Image4: TImage;
    procedure Image1Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Image1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.Panel4Click(Sender: TObject);

var
  username:String;
  password:String;
  unkmsg:Boolean;
  chklen:Boolean;

begin

  username:= 'admin';
  password := 'root';
  //Verifica se os campos(Edit1, Edit2) estão vazios
  if Edit1.GetTextLen < 1 then
    begin
      ShowMessage('Alguns campos se encontram vazios!');
      unkmsg:=false;
      chklen:=true;
    end;

  //Verifica conteúdo dos campos(Edit1, Edit2)
  if (Edit1.Text='admin') and (Edit2.Text='root') then
    ShowMessage('Welcome!! ' + Edit1.Text)
  else
    unkmsg:=true;

  //Verifica se os campos(Edit1, Edit2) não retornaram vazios(chk=true) e então
  //exibe mensagem de credenciais
  if (unkmsg=true) and (chklen=false) then
    ShowMessage('Unknow Credentials!!');

end;

end.

