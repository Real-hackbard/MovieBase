unit CoverShow;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    Image1: TImage;
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm3.FormShow(Sender: TObject);
var
  path : string;
begin
  path := Form1.TreeView1.Selected.Text;
  try
    Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
                                      'Data\Covers\' + path + '.jpg');
  finally
    Form3.Height := Image1.Picture.Height;
    Form3.Width := Image1.Picture.Width;
  end;
end;

end.
