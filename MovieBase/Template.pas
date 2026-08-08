unit Template;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Menus, WinApi.RichEdit;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    RichEdit1: TRichEdit;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Button5: TButton;
    OpenDialog1: TOpenDialog;
    Panel3: TPanel;
    PopupMenu1: TPopupMenu;
    Copy1: TMenuItem;
    Past1: TMenuItem;
    Cut1: TMenuItem;
    N1: TMenuItem;
    Selectall1: TMenuItem;
    Clear1: TMenuItem;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Past1Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Selectall1Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit1;

// richedit color highlighter
procedure CodeColors(Form : TForm;Style : String; RichE : TRichedit;InVisible : Boolean);
const
  // exception symbols...
  CodeC1: array[0..20] of String = ('#','$','(',')','*',',',
          '.','/',':',';','[',']','{','}','<','>',
          '-','=','+','''','@');
  // reserved words for highlighting...
  CodeC2: array[0..13] of String = (
          'Title','Artist', 'Genre', 'Director', 'Company', 'Producer', 'Year',
          'Playtime', 'Country', 'Composer', 'Author', 'URL', 'Comment', 'Plot');
var
  FoundAt : LongInt;
  StartPos, ToEnd, i : integer;
  OldCap,T : String;
  FontC, BackC, C1, C2 ,C3 ,strC, strC1 : TColor;
begin
  OldCap := Form.Caption;
  with RichE do
  begin
    if WordWrap then WordWrap := false;
    SelectAll;
    SelAttributes.Size := 8;              // font size
    SelAttributes.Name := 'Courier New';  // font name
    SelAttributes.color := clBlack;       // font color
    SelAttributes.Style := [fsBold];      // font style
    SelStart := 0;

    if InVisible then
    begin
      Visible := False;
    end;
  end;

  BackC := clWhite;   // background color
  FontC := clBlack;   // standard font color
  C1 := clBlack;
  C2 := clBlack;
  C3 := clBlack;
  strC := clBlue;     // hightlight color
  strC1 := clBlack;  // insert color (is not needed here)

  Style := 'Classic';

  { If you would like a different style, there is a selection here; the
    name must be specified below. }
  if Style = 'Twilight' then
  begin
    BackC := clBlack; FontC := clWhite;
    C1 := clLime; C2 := clSilver; C3 := clAqua;
    strC := clYellow; strC1 := clRed;
  end
  else
  if Style = 'Default' then
  begin
    BackC := clWhite; FontC := clBlack;
    C1 := clTeal; C2 := clMaroon; C3 := clBlue;
    strC := clMaroon; strC1 := clSilver;
  end
  else
  if Style = 'Ocean' then
  begin
    BackC := $00FFFF80; FontC := clBlack;
    C1 := clMaroon; C2 := clBlack; C3 := clBlue;
    strC := clTeal; strC1 := clBlack;
  end
  else
  if Style = 'Classic' then
  begin
    BackC := clWhite;
    FontC := clBlack;
    C1 := clBlack;
    C2 := clBlack;
    C3 := clNavy;
    strC := clBlack;
    strC1 := clBlack;
  end
  else
  begin
    { This section is needed to check the style, which wasn't necessary here. }
    //with RichE do
    //begin
      //T := '{'+Style+' = Invalid Style [Default,Classic,Twilight,Ocean] ONLY! }';
      //Lines.Insert(0,T);
      //StartPos := 0;
      //ToEnd := Length(Text) - StartPos;
      //FoundAt := FindText(T, StartPos, ToEnd, [stWholeWord]);
      //SelStart := FoundAt;
      //SelLength := Length(T);
      //SelAttributes.Color := clRed;
      //SelAttributes.Style := [fsBold];
      //StartPos := 0;
      //ToEnd := Length(Text) - StartPos;
      //FoundAt := FindText('ONLY!', StartPos, ToEnd, [stWholeWord]);
      //SelStart := FoundAt;
      //SelLength := 4;
      //SelAttributes.Color := clRed;
      //SelAttributes.Style := [fsBold,fsUnderLine];
    //end;
  end;

  RichE.SelectAll;
  RichE.color := BackC;
  RichE.SelAttributes.color := FontC;

  { This is a very useful function for finding strings, even when the
    specifications are imprecise. }
  for i := 0 to 100 do
  begin
    with RichE do
    begin
      StartPos := 0;
      ToEnd := Length(Text) - StartPos;
      { In Delphi, stWholeWord is an enumeration value used in text
        searching to restrict results to complete words only rather than
        partial matches (e.g., searching "men" will not find "women"). }
      FoundAt := FindText(IntToStr(i), StartPos, ToEnd, [stWholeWord]);
      while (FoundAt <> -1) do
      begin
        SelStart := FoundAt;
        SelLength := Length(IntToStr(i));
        SelAttributes.Color := C1;
        SelAttributes.Style := [];
        StartPos := FoundAt + Length(IntToStr(i));
        FoundAt := FindText(IntToStr(i), StartPos, ToEnd, [stWholeWord]);
      end;
    end;
  end;

  { Here, the exception

    `CodeC1: array[0..20] of String`

    is identified;
    the maximum value for the `for` loop must match the size of the array,
    or the highlighting will crash. }
  for i := 0 to 20 do
  begin
    with RichE do
    begin
      StartPos := 0;
      ToEnd := Length(Text) - StartPos;
      FoundAt := FindText(CodeC1[i], StartPos, ToEnd, []);
      while (FoundAt <> -1) do
      begin
        SelStart := FoundAt;
        SelLength := Length(CodeC1[i]);
        SelAttributes.Color := C2;
        StartPos := FoundAt + Length(CodeC1[i]);
        FoundAt := FindText(CodeC1[i], StartPos, ToEnd, []);
      end;
    end;
  end;


  { Here, the highlighted strings specified in

    `CodeC2: array[0..13] of String`

    are selected; the value of the for-loop must match, otherwise the
    highlighting crashes. }
  for i := 0 to 13 do
  begin
    with RichE do
    begin
      StartPos := 0;
      ToEnd := Length(Text) - StartPos;
      FoundAt := FindText(CodeC2[i], StartPos, ToEnd, [stWholeWord]);
      while (FoundAt <> -1) do
      begin
        SelStart := FoundAt;
        SelLength := Length(CodeC2[i]);
        SelAttributes.Color := C3;
        SelAttributes.Style := [fsBold];
        StartPos := FoundAt + Length(CodeC2[i]);
        FoundAt := FindText(CodeC2[i], StartPos, ToEnd, [stWholeWord]);
      end;
    end;
  end;

  // Exceptions involving apostrophes can be identified here if necessary.
  (*
  Startpos := 0;
  with RichE do
  begin
    FoundAt := FindText('''', StartPos, Length(Text), []);
    while FoundAt <> -1 do
    begin
      SelStart := FoundAt;
      Startpos := FoundAt+1;
      FoundAt := FindText('''', StartPos, Length(Text), []);
      if FoundAt <> -1 then
      begin
        SelLength := (FoundAt - selstart)+1;
        SelAttributes.Style := [];
        SelAttributes.Color := strC;
        StartPos := FoundAt+1;
        FoundAt := FindText('''', StartPos, Length(Text), []);
      end;
    end;
  end;  *)

  // and here, curly braces can be selected if necessary
  (*
  Startpos := 0;
  with RichE do
  begin
    FoundAt := FindText('{', StartPos, Length(Text), []);
    while FoundAt <> -1 do
    begin
      SelStart := FoundAt;
      Startpos := FoundAt+1;
      FoundAt := FindText('}', StartPos, Length(Text), []);
      if FoundAt <> -1 then
      begin
        SelLength := (FoundAt - selstart)+1;
        SelAttributes.Style := [];
        SelAttributes.Color := strC1;
        StartPos := FoundAt+1;
        FoundAt := FindText('{', StartPos, Length(Text), []);
      end;
    end;
  end;
  *)

  // Additional functions can be integrated if needed.

  if InVisible then
  begin
    RichE.Visible := True;
  end;
  RichE.SelStart := 0;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  Stream: TFileStream;
begin
  try
    // fmShareDenyNone erlaubt das Lesen, auch wenn die Datei blockiert ist
    Stream := TFileStream.Create(ExtractFilePath(Application.ExeName) +
                                    'Data\Template\Template.ini', fmOpenRead or fmShareDenyNone);
    Stream.Position := 0;
    // Tell the control to interpret the RTF tags
    RichEdit1.PlainText := False;
    //RichEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
    RichEdit1.Lines.LoadFromStream(Stream);
  finally
    // This immediately releases the file handle
    Stream.Free;
    // highlight entry
    CodeColors(Form2,'normal', Richedit1, true);
  end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Beep;
  if MessageBox(Handle,'Do you want to overwrite the template file?','Confirm',MB_YESNO) = IDYES then
    BEGIN
      try
        RichEdit1.Lines.SaveToFile(ExtractFilePath(Application.ExeName) +
                                    'Data\Template\Template.ini');
        Form1.Caption := Edit1.Text;
      except
        on E: Exception do
          ShowMessage(E.Message);
      end;
    END;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Close();
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  // highlight entry
  CodeColors(Form2,'normal', Richedit1, true);
end;

procedure TForm2.Button5Click(Sender: TObject);
var
  Stream: TFileStream;
begin
  // Specify the desired startup folder
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName) +
                                    'Data\Template\';

  if OpenDialog1.Execute then
  begin
    // Optional: Ensure that the dialog starts here again next time.
    OpenDialog1.Options := OpenDialog1.Options + [ofNoChangeDir];
    try
      // fmShareDenyNone allows reading even if the file is blocked.
      Stream := TFileStream.Create(OpenDialog1.FileName, fmOpenRead or fmShareDenyNone);
      Stream.Position := 0;

      // Tell the control to interpret the RTF tags
      RichEdit1.PlainText := False;
      // reload template
      RichEdit1.Lines.LoadFromStream(Stream);
    finally
      // This immediately releases the file handle
      Stream.Free;
      // highlight entry
      CodeColors(Form2,'normal', Richedit1, true);
    end;
  end;
end;

procedure TForm2.Clear1Click(Sender: TObject);
begin
  RichEdit1.Clear;
end;

procedure TForm2.Copy1Click(Sender: TObject);
begin
  RichEdit1.Perform(WM_COPY,0,0); // richedit copy
end;

procedure TForm2.Cut1Click(Sender: TObject);
begin
  RichEdit1.CutToClipboard;  // richedit cit strings
end;

procedure TForm2.FormCreate(Sender: TObject);
const
  ScrollBarA: array[0..3] of TScrollStyle = (
    ssBoth,ssHorizontal,ssNone,ssVertical);
begin
  // create scrollbars for RichEdit
  RichEdit1.ScrollBars := ScrollBarA[0];
  RichEdit1.WordWrap := False;
end;

procedure TForm2.FormShow(Sender: TObject);
var
  Stream: TFileStream;
begin
  try
    // fmShareDenyNone allows reading even if the file is blocked.
    Stream := TFileStream.Create(ExtractFilePath(Application.ExeName) +
                          'Data\Template\Template.ini', fmOpenRead or fmShareDenyNone);
    Stream.Position := 0;
    // Tell the control to interpret the RTF tags
    RichEdit1.PlainText := False;
    // load template start edit
    RichEdit1.Lines.LoadFromStream(Stream);
  finally
    // This immediately releases the file handle
    Stream.Free;
    // highlight entry
    CodeColors(Form2,'normal', Richedit1, true);
  end;

end;

procedure TForm2.Past1Click(Sender: TObject);
begin
  RichEdit1.PasteFromClipboard;
end;

procedure TForm2.Selectall1Click(Sender: TObject);
begin
  RichEdit1.Perform(EM_SETSEL,0,-1);
end;

end.
