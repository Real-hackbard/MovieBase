unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Menus, System.ImageList, Vcl.ImgList,
  ShellAPI, WinApi.CommCtrl, WinApi.ShlObj, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Printers, WinApi.RichEdit, System.IniFiles,
  Vcl.Imaging.pngimage, Vcl.Imaging.GIFImg, SHDocVw, MSHTML, Vcl.Clipbrd,
  System.IOUtils, Vcl.Samples.Spin, Vcl.Buttons;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    StatusBar1: TStatusBar;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    FontDialog1: TFontDialog;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    Image8: TImage;
    Edit1: TEdit;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    ToolButton18: TToolButton;
    Label2: TLabel;
    SpinEdit2: TSpinEdit;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    TreeView1: TTreeView;
    HeaderControl2: THeaderControl;
    Panel4: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    HeaderControl3: THeaderControl;
    Panel5: TPanel;
    RichEdit1: TRichEdit;
    HeaderControl1: THeaderControl;
    PopupMenu1: TPopupMenu;
    NewGenre1: TMenuItem;
    AddEntry1: TMenuItem;
    N1: TMenuItem;
    Remove1: TMenuItem;
    N2: TMenuItem;
    Rename1: TMenuItem;
    Sort1: TMenuItem;
    ext1: TMenuItem;
    Data1: TMenuItem;
    Both1: TMenuItem;
    N4: TMenuItem;
    None1: TMenuItem;
    N6: TMenuItem;
    Expand1: TMenuItem;
    Colllaps1: TMenuItem;
    ImageList1: TImageList;
    PopupMenu2: TPopupMenu;
    Save1: TMenuItem;
    N5: TMenuItem;
    Copy1: TMenuItem;
    Paste1: TMenuItem;
    Cut1: TMenuItem;
    N3: TMenuItem;
    Selectall1: TMenuItem;
    Clear1: TMenuItem;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Save2: TMenuItem;
    N15: TMenuItem;
    ExportHTML1: TMenuItem;
    ExportDOC1: TMenuItem;
    ExportRTF1: TMenuItem;
    N16: TMenuItem;
    Unicode1: TMenuItem;
    Default1: TMenuItem;
    N10: TMenuItem;
    UTF81: TMenuItem;
    UTF8Boom1: TMenuItem;
    UTF16LE1: TMenuItem;
    UTF16BE1: TMenuItem;
    ANSI1: TMenuItem;
    ASCii1: TMenuItem;
    N11: TMenuItem;
    Print1: TMenuItem;
    Backup1: TMenuItem;
    Create1: TMenuItem;
    Load1: TMenuItem;
    N7: TMenuItem;
    RemoveallGenres1: TMenuItem;
    N9: TMenuItem;
    Exit1: TMenuItem;
    Edit2: TMenuItem;
    emplate1: TMenuItem;
    N17: TMenuItem;
    InsertName1: TMenuItem;
    InsertDateTime1: TMenuItem;
    Insertcountentry1: TMenuItem;
    Cover2: TMenuItem;
    Open2: TMenuItem;
    Remove2: TMenuItem;
    N13: TMenuItem;
    Grayscale2: TMenuItem;
    Smooth1: TMenuItem;
    N12: TMenuItem;
    Displaysize1: TMenuItem;
    View1: TMenuItem;
    oolBar1: TMenuItem;
    Cover1: TMenuItem;
    Status1: TMenuItem;
    Options1: TMenuItem;
    StayTop1: TMenuItem;
    N14: TMenuItem;
    SaveCoverAutomatic1: TMenuItem;
    N8: TMenuItem;
    About1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    OpenDialog2: TOpenDialog;
    SaveDialog2: TSaveDialog;
    SaveDialog3: TSaveDialog;
    SaveDialog4: TSaveDialog;
    ImageList2: TImageList;
    Panel3: TPanel;
    Label3: TLabel;
    Button1: TButton;
    Button2: TButton;
    Image9: TImage;
    Rating1: TMenuItem;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure TreeView1CustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure TreeView1Click(Sender: TObject);
    procedure AddEntry1Click(Sender: TObject);
    procedure TreeView1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure NewGenre1Click(Sender: TObject);
    procedure Rename1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Cut1Click(Sender: TObject);
    procedure Selectall1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ext1Click(Sender: TObject);
    procedure Data1Click(Sender: TObject);
    procedure Both1Click(Sender: TObject);
    procedure None1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure RichEdit1Change(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure Expand1Click(Sender: TObject);
    procedure Colllaps1Click(Sender: TObject);
    procedure TreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure Panel2Resize(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton14Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure Print1Click(Sender: TObject);
    procedure RemoveallGenres1Click(Sender: TObject);
    procedure Create1Click(Sender: TObject);
    procedure Load1Click(Sender: TObject);
    procedure oolBar1Click(Sender: TObject);
    procedure Cover1Click(Sender: TObject);
    procedure Status1Click(Sender: TObject);
    procedure StayTop1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Save2Click(Sender: TObject);
    procedure Default1Click(Sender: TObject);
    procedure UTF81Click(Sender: TObject);
    procedure UTF8Boom1Click(Sender: TObject);
    procedure UTF16LE1Click(Sender: TObject);
    procedure UTF16BE1Click(Sender: TObject);
    procedure ANSI1Click(Sender: TObject);
    procedure ASCii1Click(Sender: TObject);
    procedure TreeView1Expanded(Sender: TObject; Node: TTreeNode);
    procedure TreeView1Collapsing(Sender: TObject; Node: TTreeNode;
      var AllowCollapse: Boolean);
    procedure Open2Click(Sender: TObject);
    procedure Remove2Click(Sender: TObject);
    procedure Grayscale2Click(Sender: TObject);
    procedure Smooth1Click(Sender: TObject);
    procedure Displaysize1Click(Sender: TObject);
    procedure ExportRTF1Click(Sender: TObject);
    procedure ExportDOC1Click(Sender: TObject);
    procedure ExportHTML1Click(Sender: TObject);
    procedure emplate1Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Remove1Click(Sender: TObject);
    procedure Edit1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image5MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image9DblClick(Sender: TObject);
    procedure Rating1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private-Deklarationen }
    PrevRichEditWndProc: TWndMethod;
    procedure RichEditWndProc(var Message: TMessage);
    procedure SetRichEditMasks;
    procedure CreateEntry;
  public
    { Public-Deklarationen }
    SelectedGenre : string;
    procedure WriteOptions;
    procedure ReadOptions;
  end;

var
  Form1: TForm1;
  MainPath : string;
  Filepath : String;
  TIF : TIniFile;
  stars : integer;
  selected : string;
  
type
  PNodeData = ^TNodeData;
  TNodeData = record
  IsFolder: Boolean;
  // additional data, e.g., file name, path, etc.

end;

implementation

{$R *.dfm}

uses Template, CoverShow;

{$Q-}  // Overflow Checking Off
{$R-}  // Range Checking Off
{$S-}  // Stack-Overflow Checking
{$V-}  // Var String Checking Off
{$X+}  // Extended Syntax On
{$I-}  // Switch off I/O error checking

procedure TForm1.WriteOptions;    // ################### Options Write
var
  OPT :string;
begin
   OPT := 'Options';

   // create directory if not exists
   if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Data\Options\')
   then ForceDirectories(ExtractFilePath(Application.ExeName) + 'Data\Options\');

   TIF := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Data\Options\Options.ini');
   with TIF do
   begin
    WriteBool(OPT,'UnicodeDefault1',Default1.Checked);
    WriteBool(OPT,'UnicodeUTF81',UTF81.Checked);
    WriteBool(OPT,'UnicodeUTF8Boom1',UTF8Boom1.Checked);
    WriteBool(OPT,'UnicodeUTF16LE1',UTF16LE1.Checked);
    WriteBool(OPT,'UnicodeUTF16BE1',UTF16BE1.Checked);
    WriteBool(OPT,'UnicodeANSI1',ANSI1.Checked);
    WriteBool(OPT,'UnicodeASCii1',ASCii1.Checked);
    WriteBool(OPT,'oolBar1',oolBar1.Checked);
    WriteBool(OPT,'Cover1',Cover1.Checked);
    WriteBool(OPT,'Status1',Status1.Checked);
    WriteBool(OPT,'SaveCoverAutomatic1',SaveCoverAutomatic1.Checked);
    WriteBool(OPT,'InsertName1',InsertName1.Checked);
    WriteBool(OPT,'InsertDateTime1',InsertDateTime1.Checked);
    WriteBool(OPT,'Insertcountentry1',Insertcountentry1.Checked);
    WriteInteger(OPT,'Margin',SpinEdit1.Value);
    WriteInteger(OPT,'Space',SpinEdit2.Value);
    WriteString(OPT,'Caption',Form1.Caption);
    WriteBool(OPT,'Rating1',Rating1.Checked);
    Free;
   end;
end;

procedure TForm1.Rating1Click(Sender: TObject);
begin
  Panel4.Visible := Rating1.Checked;
end;

procedure TForm1.ReadOptions;    // ################### Options Read
var
  OPT:string;
begin
  OPT := 'Options';
  if FileExists(ExtractFilePath(Application.ExeName) + 'Data\Options\Options.ini') then
  begin
  TIF:=TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Data\Options\Options.ini');
  with TIF do
    begin
      Default1.Checked:=ReadBool(OPT,'UnicodeDefault1',Default1.Checked);
      UTF81.Checked:=ReadBool(OPT,'UnicodeUTF81',UTF81.Checked);
      UTF8Boom1.Checked:=ReadBool(OPT,'UnicodeUTF8Boom1',UTF8Boom1.Checked);
      UTF16LE1.Checked:=ReadBool(OPT,'UnicodeUTF16LE1',UTF16LE1.Checked);
      UTF16BE1.Checked:=ReadBool(OPT,'UnicodeUTF16BE1',UTF16BE1.Checked);
      ANSI1.Checked:=ReadBool(OPT,'UnicodeANSI1',ANSI1.Checked);
      ASCii1.Checked:=ReadBool(OPT,'UnicodeASCii1',ASCii1.Checked);
      oolBar1.Checked:=ReadBool(OPT,'oolBar1',oolBar1.Checked);
      Cover1.Checked:=ReadBool(OPT,'Cover1',Cover1.Checked);
      Status1.Checked:=ReadBool(OPT,'Status1',Status1.Checked);
      SaveCoverAutomatic1.Checked:=ReadBool(OPT,'SaveCoverAutomatic1',SaveCoverAutomatic1.Checked);
      InsertName1.Checked:=ReadBool(OPT,'InsertName1',InsertName1.Checked);
      InsertDateTime1.Checked:=ReadBool(OPT,'InsertDateTime1',InsertDateTime1.Checked);
      Insertcountentry1.Checked:=ReadBool(OPT,'Insertcountentry1',Insertcountentry1.Checked);
      SpinEdit1.Value:=ReadInteger(OPT,'Margin',SpinEdit1.Value);
      SpinEdit2.Value:=ReadInteger(OPT,'Space',SpinEdit2.Value);
      Form1.Caption:=ReadString(OPT,'Caption',Form1.Caption);
      Rating1.Checked:=ReadBool(OPT,'Rating1',Rating1.Checked);
      Free;
    end;
  end;
end;

// Determine the exact path within the TreeView—though this is not the Windows file path.
function GetNodePath(ANode: TTreeNode; ADelimiter: Char = '\'): String;
begin
  Result := '';
  while Assigned(ANode) do
  begin
    // Only insert the separator if the string is already populated.
    if Result <> '' then
      Result := ANode.Text + ADelimiter + Result
    else
      Result := ANode.Text;
    ANode := ANode.Parent;
  end;
end;

// Save the number of stars, That happens automatically.
procedure SaveMyRating;
var
  Rating : string;
begin
  // how many stars
  Rating := IntToStr(stars);
  // Saves the string directly to the file.
  TFile.WriteAllText(ExtractFilePath(Application.ExeName) +
                    'Data\Ratings\' + selected + '.dat', Rating);
end;

// Read the number of stars.
procedure ReadRatings;
var
  ReadStars : string;
  i : integer;
  Bmp: TBitmap;
begin
  ReadStars := '0';
  Bmp := TBitmap.Create;
  try
    // Check if the file exists.
    if TFile.Exists(ExtractFilePath(Application.ExeName) +
                      'Data\Ratings\' + selected + '.dat') then
    begin
      // Reads the entire file into a string variable.
      ReadStars := TFile.ReadAllText(ExtractFilePath(Application.ExeName) +
                      'Data\Ratings\' + selected + '.dat');

      // Check how many stars are registered.
      if ReadStars <> '-1' then
      begin
        // Paint over the stars with shades of gray.
        Form1.ImageList2.GetBitmap(1, Bmp);
        for i := 1 to 5 do
        begin
          // Find all star images.
          TImage(Form1.findcomponent('Image' + inttostr(i))).Picture.Bitmap.Assign(bmp);
        end;

        // if the value is greater than zero
        Form1.ImageList2.GetBitmap(0, Bmp);
        // Then draw the number of stars.
        for i := 1 to (StrToInt(ReadStars)) do
        begin
          // Find all star images.
          TImage(Form1.findcomponent('Image' + inttostr(i))).Picture.Bitmap.Assign(bmp);
        end;
      end;

    end else begin
      // If not, draw the gray stars on all five.
      if ReadStars = '0' then
      begin
        Form1.ImageList2.GetBitmap(1, Bmp);
        for i := 1 to 5 do
        begin
          // Find all star images.
          TImage(Form1.findcomponent('Image' + inttostr(i))).Picture.Bitmap.Assign(bmp);
        end;
      end;
    end;
  finally
    Bmp.Free;
    // count stars to header component
    Form1.HeaderControl3.Sections[1].Text := ReadStars;
  end;
end;

{ This procedure serves to save the entry once it has been created.
  Any changes must be saved manually. }
procedure TForm1.CreateEntry;
var
  jpg: TJPEGImage;
  Node : TTreeNode;       // TreeView Node
  Cover : string;         // Covers
  LStream: TStringStream; // Unicode
begin
    if Assigned(TreeView1.Selected) then
    begin
      Filepath := GetNodePath(TreeView1.Selected, '\');

      // Check if a cover has been loaded.
      if Image9.Picture.Graphic <> nil then
      begin

        // get selected node
        if TreeView1.Selected <> nil then
        begin
          Cover := TreeView1.Selected.Text;
        end;

        // save jpg/jpeg graphic file
        jpg := TJPEGImage.Create;
        try
          // Assign image from TImage
          jpg.Assign(Image9.Picture.Graphic);
          // Adjust quality (optional; the default is often 80 or 90)
          jpg.CompressionQuality := 85;
          jpg.Compress;
          // save file
          jpg.SaveToFile(ExtractFilePath(Application.ExeName) +
                         'Data\Covers\' + Cover + '.jpg');
        finally
          jpg.Free;
        end;
      end;

      // unicode save export
      if Default1.Checked = true then
      LStream := TStringStream.Create(RichEdit1.Lines.Text, TEncoding.Default);

      if UTF81.Checked = true then
      LStream := TStringStream.Create(RichEdit1.Lines.Text, TEncoding.UTF8);

      if UTF8Boom1.Checked = true then
      LStream := TStringStream.Create(RichEdit1.Lines.Text, TEncoding.UTF8);

      if UTF16LE1.Checked = true then
      LStream := TStringStream.Create(RichEdit1.Lines.Text, TEncoding.Unicode);

      if UTF16BE1.Checked = true then
      LStream := TStringStream.Create(RichEdit1.Lines.Text, TEncoding.BigEndianUnicode);

      if ANSI1.Checked = true then
      LStream := TStringStream.Create(RichEdit1.Lines.Text, TEncoding.ANSI);

      if ASCii1.Checked = true then
      LStream := TStringStream.Create(RichEdit1.Lines.Text, TEncoding.ASCII);

      try
        if FileExists(MainPath + Filepath) then
          LStream.SaveToFile(MainPath + Filepath);
      finally
        LStream.Free;
      end;
    end
    else
    begin
      // if no entry was selected
      ShowMessage('Please select a entry first!');
    end;

  SaveMyRating;
end;

{ This procedure is intended only for cases where the "template" folder
  and the "template.ini" file do not exist and need to be created. }
procedure NonTemplate;
var
  non : TStringList;
  i, c : integer;
begin
  non := TStringList.Create;
    try
      non.Add('__________' + #13#10);
      non.Add('Title    : ');
      non.Add('Artist   : ');
      non.Add('Genre    : ');
      non.Add('Director : ');
      non.Add('Company  : ');
      non.Add('Producer : ');
      non.Add('Year     : ');
      non.Add('Playtime : ');
      non.Add('Country  : ');
      non.Add('Composer : ');
      non.Add('Author   : ');
      non.Add('URL      : ');
      non.Add('Comment  : ');
      non.Add('__________' + #13#10);
      non.Add('Plot     : ');

      // Insert from back to front, top
      for i := non.Count - 1 downto 0 do
      begin
        Form1.RichEdit1.Lines.Insert(0, non[i]);
      end;
    finally
      non.Free;
    end;
    Form1.RichEdit1.Lines.SaveToFile(ExtractFilePath(Application.ExeName) +
                                        'Data\Template\Template.ini');
    Form1.RichEdit1.Clear;
end;

// PNG Picutres import & convert to bitmap pixel
procedure LoadPngToBmp(var Dest: TBitmap; AFilename: TFilename);
type
  TRGB32 = packed record  // custom 32-bit color structure
    B, G, R, A : Byte;
  end;
  PRGBArray32 = ^TRGBArray32;
  TRGBArray32 = array[0..0] of TRGB32;
type
  TRG24 = packed record   // custom 24-bit color structure
    rgbtBlue, rgbtGreen, rgbtRed : Byte;
  end;
  PRGBArray24 = ^TPRGBArray24;
  TPRGBArray24 = array[0..0] of TRG24;
type
  TByteArray = Array[Word] of Byte;
  PByteArray = ^TByteArray;
  TPByteArray = array[0..0] of TByteArray;
var
  BMP : TBitmap;
  PNG: TPNGObject;
  x, y: Integer;
  BmpRow: PRGBArray32;
  PngRow : PRGBArray24;
  AlphaRow: PByteArray;
begin
  Bmp := TBitmap.Create;
  PNG := TPNGObject.Create;
  try
    if AFilename <> '' then
    begin
      PNG.LoadFromFile(AFilename);
      BMP.PixelFormat := pf32bit;
      BMP.Height := PNG.Height;
      BMP.Width := PNG.Width;
      if ( PNG.TransparencyMode = ptmPartial ) then
      begin
        for Y := 0 to BMP.Height-1 do
        begin
          BmpRow := PRGBArray32(BMP.ScanLine[Y]);
          PngRow := PRGBArray24(PNG.ScanLine[Y]);
          AlphaRow := PByteArray(PNG.AlphaScanline[Y]);
          for X := 0 to BMP.Width - 1 do
          begin
            with BmpRow[X] do
            begin
              with PngRow[X] do
              begin
                R := rgbtRed; G := rgbtGreen; B := rgbtBlue;
              end;
              A := Byte(AlphaRow[X]);
            end;
          end;
        end;
      end else
      begin
        for Y := 0 to BMP.Height-1 do
        begin
          BmpRow := PRGBArray32(BMP.ScanLine[Y]);
          PngRow := PRGBArray24(PNG.ScanLine[Y]);
          for X := 0 to BMP.Width - 1 do
          begin
            with BmpRow[X] do
            begin
              with PngRow[X] do
              begin
                R := rgbtRed; G := rgbtGreen; B := rgbtBlue;
              end;
              A := 255;
            end;
          end;
        end;
      end;
      Dest.Assign(BMP);
    end;
  finally
    Bmp.Free;
    PNG.Free;
  end;
end;

// set margin to richedit text
procedure SetLeftMargin(RichEdit: TRichEdit; LeftMargin: Integer);
var
  R: TRect;
begin
{$RANGECHECKS OFF}
  // Get current rectangle
  SendMessage(RichEdit.Handle, EM_GETRECT, 0, LPARAM(@R));
  // Set new left margin in pixels (retain or adjust other margins)
  R.Left := LeftMargin;
  // Reassign rectangle
  SendMessage(RichEdit.Handle, EM_SETRECT, 0, LPARAM(@R));
{$RANGECHECKS ON}
end;

// reducing the line spacing in height
procedure SetRichEditLineSpacing(RichEdit: TRichEdit; SpacingValue: Integer);
var
  Para: TParaFormat2;
begin
  ZeroMemory(@Para, SizeOf(Para));
  Para.cbSize := SizeOf(Para);
  Para.dwMask := PFM_LINESPACING;
  // 4 = Exact value in twips (1/20 of a point) or a multiple thereof.
  Para.bLineSpacingRule := 4;
  // e.g., 280 for approx. 1.4x spacing (14 pt)
  Para.dyLineSpacing := SpacingValue;
  // send the information to the richedit
  SendMessage(RichEdit.Handle, EM_SETPARAFORMAT, 0, LPARAM(@Para));
end;

{ To expand a specific node by its text in a Delphi TTreeView,
  you need to traverse the tree's nodes to find the matching text,
  expand it, and recursively expand all of its parent nodes so
  it becomes visible. }
procedure ExpandNodeByText(ATreeView: TTreeView; AText: string);
var
  i: Integer;
  Node: TTreeNode;
begin
  for i := 0 to ATreeView.Items.Count - 1 do
  begin
    Node := ATreeView.Items[i];
    // Ignore case (Case-Insensitive)
    if SameText(Node.Text, AText) then
    begin
      ATreeView.Selected := Node; // Optional: Mark nodes
      // Expand the found node and all its parents.
      while Assigned(Node) do
      begin
        Node.Expanded := True;
        Node := Node.Parent;
      end;
      Break; // Terminate the loop as soon as the node is found.
    end;
  end;
end;

{ In Delphi, there is no built-in GetRootNodeText method. You can
  easily retrieve a root node's text by fetching the first node in the
  tree and reading its .Text property, or by looping through siblings. }
function GetRootNodeText(TreeView: TTreeView; Index: Integer): string;
var
  Node: TTreeNode;
  Count: Integer;
begin
  Result := '';
  Count := 0;
  Node := TreeView.Items.GetFirstNode;
  while Assigned(Node) do
  begin
    if Node.Level = 0 then
    begin
      if Count = Index then
      begin
        Result := Node.Text;
        Break;
      end;
      Inc(Count);
    end;
    Node := Node.GetNextSibling;
  end;
end;

// export html product
function ClipboardToHTML(AParent: TWinControl): WideString;
var
  wb: TWebBrowser;

  function WaitDocumentReady: Boolean;
  var
    StartTime: DWORD;
  begin
    StartTime := GetTickCount;
    while wb.ReadyState <> READYSTATE_COMPLETE do
    begin
      // Interrupts the execution of an application while Windows
      // processes a message from the Windows message queue.
      Application.HandleMessage;
      if GetTickCount >= StartTime + 2000 then // time-out of max 2 sec
      begin
        Result := False; // time-out
        Exit;
      end;
    end;
    Result := True;
  end;
begin
  Result := '';
  wb := TWebBrowser.Create(nil);  // create dynamic web browser
  try
    // suppresses most browser-generated dialogs and error messages.
    wb.Silent := True;
    // ste the dimension to (0x0)
    wb.Width := 0;
    wb.Height := 0;
    // hide the web browser
    wb.Visible := False;
    // Place it on the form.
    TWinControl(wb).Parent := AParent;
    // underlying ActiveX control is not fully created until the
    // browser window handle exists and the control has been initialized.
    wb.HandleNeeded;


    { HandleAllocated for TWebBrowser works the same way as for any
      TWinControl: it tells you whether the VCL window handle (HWND) for
      the control has been created. }
    if wb.HandleAllocated then
    begin
      // open blank site in web browser
      wb.Navigate('about:blank');
      (wb.Document as IHTMLDocument2).designMode := 'on';
      if WaitDocumentReady then
      begin
        // exposed through the MSHTML document
        // interfaces (IHTMLDocument2, IHTMLDocument4, etc.) used by TWebBrowser
        (wb.Document as IHTMLDocument2).execCommand('Paste', False, 0);
        Result := (wb.Document as IHTMLDocument2).body.innerHTML;
      end;
    end;
  finally
    wb.Free;
  end;
end;

// configure TRichEdit to support clicks on hyperlinks
procedure TForm1.SetRichEditMasks;
var
  mask: Longint;
begin
  // retrieves the current event mask
  mask := SendMessage(RichEdit1.Handle, EM_GETEVENTMASK, 0, 0);
  // sets the event mask of a Rich Edit control
  SendMessage(RichEdit1.Handle, EM_SETEVENTMASK, 0, mask or ENM_LINK);
  // message that enables or disables automatic URL detection.
  SendMessage(RichEdit1.Handle, EM_AUTOURLDETECT, 1, 0);
end;

// displaying or resizing JPEG images with high-quality interpolation (no jagged edges).
procedure TForm1.Smooth1Click(Sender: TObject);
var
  Jpg: TJPEGImage;
begin
  // Exit if it's not checked.
  if Smooth1.Checked = false then Exit;

  // Note to the user that no cover exists.
  if Image9.Picture.Graphic = nil then
  begin
    MessageDlg('Please upload a picture first!',mtInformation, [mbOK], 0);
    Smooth1.Checked := false;
    Exit;
  end;

  Jpg := TJPEGImage.Create;
  try
    Jpg.Assign(Image9.Picture.Graphic);
    Jpg.Smoothing := true;
    Image9.Picture.Assign(jpg);
  finally
    Jpg.Free;
    CreateEntry;
  end;
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
  TreeView1.OnClick(sender);
end;

procedure TForm1.SpinEdit2Change(Sender: TObject);
begin
  TreeView1.OnClick(sender);
end;

// To intercept Windows messages in a Delphi TRichEdit
procedure TForm1.RichEditWndProc(var Message: TMessage);
begin
  // Storing the original WindowProc of a TRichEdit control when it is subclassed.
  PrevRichEditWndProc(Message);
  case Message.Msg of
    CN_NOTIFY:
      begin
        // is the data structure used to handle Windows WM_NOTIFY messages.
        // It allows applications to intercept and process complex event
        // notifications sent by Windows controls (such as ListViews or TreeViews)
        // to their parent window.
        if (TWMNotify(Message).NMHdr^.code = EN_LINK) then
        begin
          // It passes data to let your application know if a user clicked a URL
          with PENLink(Message.LParam)^ do
          begin
            if (msg = WM_LBUTTONDOWN) then
            begin
              // Pass the information to RichEdit
              SendMessage(RichEdit1.Handle, EM_EXSETSEL, 0, LongInt(@chrg));
              ShellExecute(Handle, 'open', PChar(RichEdit1.SelText), 0, 0, SW_SHOWNORMAL);
            end;
          end;
        end;
      end;
    CM_RECREATEWND:
      begin
        SetRichEditMasks;
      end;
  end;
end;

// All entries are completely deleted here.
function ClearFolder(const OrdnerPfad: string): Boolean;
var
  sh: TSHFileOpStruct;
  QuellPfad: string;
begin
  // Ensure that the path ends with a backslash and append *.*
  QuellPfad := IncludeTrailingPathDelimiter(OrdnerPfad) + '*.*';
  FillChar(sh, SizeOf(sh), 0);
  with sh do
  begin
    Wnd   := 0;
    wFunc := FO_DELETE;
    // Double null-termination required!
    pFrom := PChar(QuellPfad + #0#0);
    fFlags := FOF_SILENT or FOF_NOCONFIRMATION or FOF_NOERRORUI;
  end;
  { SHFileOperation (in the ShellApi unit) is a powerful Windows
    API for performing file operations (copying, moving, deleting,
    or renaming). It offers the advantage of using Windows Explorer's
    native progress dialogs and confirmation windows. }
  Result := (SHFileOperation(sh) = 0);
end;

// count treeview node counts
function GetRootNodeCount(ATreeView: TTreeView): Integer;
var
  Node: TTreeNode;
begin
  Result := 0;
  // Get the very first node in the TreeView.
  Node := ATreeView.Items.GetFirstNode;
  // Move horizontally through all sibling nodes on level 0.
  while Assigned(Node) do
  begin
    Inc(Result);
    Node := Node.GetNextSibling;
  end;
end;

// search node and select him
function GetNodeByText(ATree : TTreeView; AValue:String; AVisible: Boolean): TTreeNode;
var
    Node: TTreeNode;
begin
  Result := nil;
  if ATree.Items.Count = 0 then Exit;   // out when no entry found
  Node := ATree.Items[0];
  while Node <> nil do
  begin
    if UpperCase(Node.Text) = UpperCase(AValue) then
    begin
      Result := Node;
      if AVisible then
        // select node in treeview when found
        Result.MakeVisible;
      Break;
    end;
    Node := Node.GetNext;
  end;
end;

// richedit color highlighter
procedure CodeColors(Form : TForm; Style : String; RichE : TRichedit;InVisible : Boolean);
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
    SelAttributes.Size := Form1.FontDialog1.Font.Size;  // font size
    SelAttributes.Name := Form1.FontDialog1.Font.Name;  // font name
    SelAttributes.color := clBlack;                     // font color
    SelAttributes.Style := [fsBold];                    // font style
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
  strC1 := clBlack;   // insert color (is not needed here)

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

    "CodeC1: array[0..20] of String"

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

    "CodeC2: array[0..13] of String"

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

// This function renames folders and is only required for older Delphi versions.
// The specifications are accurate but not compatible with the new VCL.
{
procedure RenameDir(DirFrom, DirTo: string);
var
  shellinfo: TSHFileOpStruct;
begin
  with shellinfo do
  begin
    Wnd    := 0;
    wFunc  := FO_RENAME;
    pFrom  := PChar(DirFrom);
    pTo    := PChar(DirTo);
    fFlags := FOF_FILESONLY or FOF_ALLOWUNDO or
              FOF_SILENT or FOF_NOCONFIRMATION;
  end;
  SHFileOperation(shellinfo);
end;
 }

 // The files are deleted here.
function DeleteFile(const AFile: string): boolean;
var
 sh: SHFileOpStruct;
begin
 ZeroMemory(@sh, sizeof(sh));
 with sh do
   begin
   Wnd := Application.Handle;
   wFunc := fo_Delete;
   pFrom := PChar(AFile +#0);
   fFlags := fof_Silent or fof_NoConfirmation;
   end;
 result := SHFileOperation(sh) = 0;
end;

// Determine whether a folder or a file was clicked in the TreeView.
function IsFolder(Node: TTreeNode): Boolean;
begin
  Result := Assigned(Node) and (Node.Data = Ptr(1));
end;

// Folders are added to the tree view here.
procedure AddFolderToTree(ATreeView: TTreeView; AParentNode: TTreeNode;
          const APath: string; const AName: string);
var
  FileInfo: TSHFileInfo;
  NormalIndex, SelectedIndex: Integer;
  NewNode: TTreeNode;
begin
  // 1. Get the icon for the normal state (e.g., closed folder)
  SHGetFileInfo(PChar(APath), 0, FileInfo, SizeOf(FileInfo),
    SHGFI_SYSICONINDEX or SHGFI_SMALLICON);
  NormalIndex := FileInfo.iIcon;
  // 2. Get the icon for the open/selected state (e.g., open folder)
  SHGetFileInfo(PChar(APath), 0, FileInfo, SizeOf(FileInfo),
    SHGFI_SYSICONINDEX or SHGFI_SMALLICON or SHGFI_OPENICON);
  SelectedIndex := FileInfo.iIcon;
  // 3. Create nodes in the TreeView
  NewNode := ATreeView.Items.AddChild(AParentNode, AName);
  // Assign image indices
  NewNode.ImageIndex := NormalIndex;       // Icon in standard state
  NewNode.SelectedIndex := SelectedIndex;  // Icon when selected
end;

// This function can be used to load specific icons or shell icons into the tree view.
{
procedure AddFileNodeWithIcon(TreeView: TTreeView; ParentNode: TTreeNode;
          const FileName, DisplayText: string; IsFolder: boolean);
var
  SFileInfo: TSHFileInfo;
  IconIndex: Integer;
  NewNode: TTreeNode;
begin
  // 1. Retrieve the icon index for the corresponding file/directory from the Windows system.
  if IsFolder then
    SHGetFileInfo(PChar(FileName),
                  FILE_ATTRIBUTE_DIRECTORY,
                  SFileInfo,
                  SizeOf(SFileInfo),
                  SHGFI_SYSICONINDEX or SHGFI_SMALLICON or SHGFI_SELECTED)
  else
    SHGetFileInfo(PChar(FileName),
                  0,
                  SFileInfo,
                  SizeOf(SFileInfo),
                  SHGFI_SYSICONINDEX or SHGFI_SMALLICON or SHGFI_USEFILEATTRIBUTES);
  // 2. Assign the system image list to the TreeView (Windows Shell system image list)
  TreeView.Images.Handle := SFileInfo.hIcon;  // Assignment via handle
  // 3. Read the icon index from the file information.
  IconIndex := SFileInfo.iIcon;
  // 4. Create nodes in the TreeView and assign icon indices.
  NewNode := TreeView.Items.AddChild(ParentNode, DisplayText);
  NewNode.ImageIndex := IconIndex;      // Standard-Icon
  NewNode.SelectedIndex := IconIndex;   // Icon when the node is selected
end;
}

{ Here, the entire contents of the folder—including all files located
  within it—are loaded into the TreeView. }
procedure LoadFolderToTree(const APath: string; ATree: TTreeView; ParentNode: TTreeNode);
var
  SearchRec: TSearchRec;
  Node: TTreeNode;
  FullPath: string;
begin
  ATree.Items.BeginUpdate;
  try
    // Search for folders (faDirectory)
    if FindFirst(IncludeTrailingPathDelimiter(APath) + '*.*', faAnyFile, SearchRec) = 0 then
    try
      repeat
        // Ignore the standard references '.' and '..'.
        if (SearchRec.Name = '.') or (SearchRec.Name = '..') then
          Continue;
        FullPath := IncludeTrailingPathDelimiter(APath) + SearchRec.Name;
        if (SearchRec.Attr and faDirectory) <> 0 then
        begin
          // Add node for the folder
          Node := ATree.Items.AddChild(ParentNode, SearchRec.Name);

          // Optional: Insert an empty child element so that the folder is expandable.
          // (Useful when dynamic reloading is used)
          // ATree.Items.AddChild(Node, '');

          // Recursive call for subdirectories
          LoadFolderToTree(FullPath, ATree, Node);
        end
        else
        begin
          // Add node for the file
          ATree.Items.AddChild(ParentNode, SearchRec.Name);
        end;
      until FindNext(SearchRec) <> 0;
    finally
      FindClose(SearchRec);
    end;
  finally
    ATree.Items.EndUpdate;
  end;
end;

procedure TForm1.ToolButton10Click(Sender: TObject);
begin
  Save1.OnClick(self);
end;

procedure TForm1.ToolButton12Click(Sender: TObject);
begin
  RichEdit1.SetFocus;
  Cut1.OnClick(self);
end;

procedure TForm1.ToolButton13Click(Sender: TObject);
begin
  RichEdit1.SetFocus;
  Copy1.OnClick(self);
end;

procedure TForm1.ToolButton14Click(Sender: TObject);
begin
  RichEdit1.SetFocus;
  Paste1.OnClick(self);
end;

procedure TForm1.ToolButton16Click(Sender: TObject);
begin
  RichEdit1.SetFocus;
  RichEdit1.SelectAll;
end;

// print the entry
procedure TForm1.ToolButton17Click(Sender: TObject);
var
  PrinterMarginsX, PrinterMarginsY: Integer;
  PageRectangle: TRect;
begin
  // Determine the resolution of the default printer
  PrinterMarginsX := GetDeviceCaps(Printer.Handle, LOGPIXELSX);
  PrinterMarginsY := GetDeviceCaps(Printer.Handle, LOGPIXELSY);
  with PageRectangle do
  begin
    Left   := PrinterMarginsX;           // 1-inch left margin
    Top    := 3 * PrinterMarginsY div 2; // 1.5-inch top margin
    Right  := Printer.PageWidth - PrinterMarginsX;
    Bottom := Printer.PageHeight - PrinterMarginsY;
  end;
  RichEdit1.PageRect := PageRectangle;
  RichEdit1.Print('Document with Margin');
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
  NewGenre1.OnClick(self);
end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin
  AddEntry1.OnClick(self);
end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin
  Rename1.OnClick(self);
end;

// Since the entry is subject to a highlight, only the font name can be specified.
procedure TForm1.ToolButton5Click(Sender: TObject);
begin
  if FontDialog1.Execute then
  begin
    RichEdit1.Font := FontDialog1.Font;
    CodeColors(Form1,'normal', Richedit1, true);
  end;
end;

procedure TForm1.ToolButton7Click(Sender: TObject);
begin
  RichEdit1.SelectAll;
  RichEdit1.Paragraph.Alignment := taLeftJustify;
  ToolButton7.Down := true;
  ToolButton8.Down := false;
  ToolButton9.Down := false;
end;

procedure TForm1.ToolButton8Click(Sender: TObject);
begin
  RichEdit1.SelectAll;
  RichEdit1.Paragraph.Alignment := taCenter;
  ToolButton7.Down := false;
  ToolButton8.Down := true;
  ToolButton9.Down := false;
end;

procedure TForm1.ToolButton9Click(Sender: TObject);
begin
  RichEdit1.SelectAll;
  RichEdit1.Paragraph.Alignment := taRightJustify;
  ToolButton7.Down := false;
  ToolButton8.Down := false;
  ToolButton9.Down := true;
end;

procedure TForm1.TreeView1Change(Sender: TObject; Node: TTreeNode);
var
  Cover : string;
begin
  Screen.Cursor := crHourGlass;
  Cover := '';
  Image9.Picture.Graphic := nil;
  StatusBar1.Panels[7].Text := 'none';
  RichEdit1.Clear;

  ReadRatings;

  // Check whether a node has been selected at all.
  if Assigned(Node) then
  begin
    if Node.Level = 0 then
    begin
      // when a folder is selected
      AddEntry1.Enabled := true;
      Rename1.Enabled := true;
      NewGenre1.Enabled := true;
      ToolButton1.Enabled := true;
      ToolButton3.Enabled := true;
      Open2.Enabled := false;
      Remove2.Enabled := false;
      Grayscale2.Enabled := false;
      Smooth1.Enabled := false;
      Displaysize1.Enabled := false;
      ToolButton2.Enabled := true;
      Print1.Enabled := true;
      ToolButton17.Enabled := false;
      Button1.Enabled := false;
      Button2.Enabled := false;
    end
    else
    begin
      // when a file is selected
      AddEntry1.Enabled := false;
      NewGenre1.Enabled := false;
      ToolButton2.Enabled := true;
      ToolButton1.Enabled := false;
      Open2.Enabled := true;
      Remove2.Enabled := true;
      Grayscale2.Enabled := true;
      Smooth1.Enabled := true;
      Displaysize1.Enabled := true;
      ToolButton2.Enabled := false;
      Print1.Enabled := true;
      ToolButton17.Enabled := true;
      Button1.Enabled := true;
      Button2.Enabled := true;
    end;
  end;

  // load cover for selected entry when exists
  if TreeView1.Selected <> nil then
  begin
    Cover := TreeView1.Selected.Text;
    if FileExists(ExtractFilePath(Application.ExeName) + 'Data\Covers\' + Cover + '.jpg') then
      begin
        try
          Image9.Picture.LoadFromFile(ExtractFilePath(Application.ExeName) +
                                    'Data\Covers\' + Cover + '.jpg');
          StatusBar1.Panels[7].Text := IntToStr(Image9.Picture.Width) + 'x' +
                                       IntToStr(Image9.Picture.Height);

        except
          on E: Exception do
            // show error messgae by failed cover
            ShowMessage(E.Message);
        end;
    end;
  end;

  Screen.Cursor := crDefault;
end;

procedure TForm1.TreeView1Click(Sender: TObject);
var
  Node, MainNode : TTreeNode;
  TotalNodes, ChildCount, i: Integer;
  SelectedNode: TTreeNode;
  Bmp : TBitmap;
begin
  Node := TreeView1.Selected;
  Screen.Cursor := crHourGlass;

  if Node <> nil then
  begin
    // Check whether the node has a parent node.
    if Node.Parent = nil then
    begin
      SelectedGenre := GetRootNodeText(TreeView1, TreeView1.Selected.Index);
    end;
  end;

  if Assigned(TreeView1.Selected) then
  begin
    Filepath := GetNodePath(TreeView1.Selected, '\');
    if FileExists(MainPath + Filepath) then
    begin
      // unicode load entry
      if Default1.Checked = true then
      RichEdit1.Lines.LoadFromFile(MainPath + Filepath, TEncoding.Default);

      if UTF81.Checked = true then
      RichEdit1.Lines.LoadFromFile(MainPath + Filepath, TEncoding.UTF8);

      if UTF8Boom1.Checked = true then
      RichEdit1.Lines.LoadFromFile(MainPath + Filepath, TEncoding.UTF8);

      if UTF16LE1.Checked = true then
      RichEdit1.Lines.LoadFromFile(MainPath + Filepath, TEncoding.Unicode);

      if UTF16BE1.Checked = true then
      RichEdit1.Lines.LoadFromFile(MainPath + Filepath, TEncoding.BigEndianUnicode);

      if ANSI1.Checked = true then
      RichEdit1.Lines.LoadFromFile(MainPath + Filepath, TEncoding.ANSI);

      if ASCii1.Checked = true then
      RichEdit1.Lines.LoadFromFile(MainPath + Filepath, TEncoding.ASCII);
    end;
  end;

  // count all entrys in genre
  SelectedNode := TreeView1.Selected;
  if Assigned(SelectedNode) then
  begin
    ChildCount := SelectedNode.Count;
    StatusBar1.Panels[3].Text :=  IntToStr(ChildCount);
  end;

  // Reduce line spacing
  RichEdit1.SelectAll;
  SetRichEditLineSpacing(RichEdit1, SpinEdit2.Value);

  // Pixel spacing on the left
  SetLeftMargin(RichEdit1, SpinEdit1.Value);

  // highlight enties
  CodeColors(Form1,'normal', Richedit1, true);
  RichEdit1.Update;

  // count total
  TotalNodes := TreeView1.Items.Count;
  StatusBar1.Panels[5].Text := IntToStr(TotalNodes);

  // check if treeview item selected
  if Assigned(Node) then
  begin
    // Receive the selected node.
    Node := TreeView1.Selected;
    // get subitem string name
    selected := TreeView1.Selected.Text;
    // read rating stars status
    ReadRatings;
    // report data base path
    HeaderControl1.Sections[1].Text := MainPath + FilePath;

    // The loop iterates upwards until no higher-level node remains.
    while Node.Parent <> nil do
    begin
      Node := Node.Parent;
    end;
    // AktivNode is now the main node (Level 0).
    HeaderControl2.Sections[1].Text := Node.Text;
  end;

  // if no item is selected or a folder has been clicked
  if not Assigned(Node) then
  begin
    Bmp := TBitmap.Create;
    try
      // Get the image from the image list.
      ImageList2.GetBitmap(1, Bmp);

      // find the star images
      for i := 1 to 5 do
       begin
          TImage(findcomponent('Image' + inttostr(i))).Picture.Assign(bmp);
       end;
    finally
      Bmp.Free;
      Form1.HeaderControl3.Sections[1].Text := '0';
      Form1.HeaderControl1.Sections[1].Text := '..';
      Form1.HeaderControl2.Sections[1].Text := '..';
    end;
  end;

  // count genres
  StatusBar1.Panels[1].Text := IntToStr(GetRootNodeCount(TreeView1));
  Screen.Cursor := crDefault;
end;

// close all open nodes in treeview
procedure TForm1.TreeView1Collapsing(Sender: TObject; Node: TTreeNode;
  var AllowCollapse: Boolean);
begin
  if TreeView1.Selected <> nil then
  // Sets the default and selected image to index 0 of the ImageList.
  TreeView1.Selected.ImageIndex := 0;
  TreeView1.Selected.SelectedIndex := 0;
end;

// Assign the icons from the ImageList to the nodes in the TreeView.
procedure TForm1.TreeView1CustomDrawItem(Sender: TCustomTreeView;
  Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
var
  MainNode : TTreeNode;
begin
  MainNode := TreeView1.Items.GetFirstNode;

  // when selected a node change color & style
  if Node = Sender.Selected then
    with Sender.Canvas do
    begin
      Font.Color := clNavy;
      Font.Style := [fsBold];
    end;

  DefaultDraw := True;

  while MainNode <> nil do
  begin
    // Check whether it is a child node (optional)
    if MainNode.Level > 0 then
    begin
      MainNode.ImageIndex := 2;
      MainNode.SelectedIndex := 2; // Icon for the selected state
    end;
    MainNode := MainNode.GetNext;
  end;
end;

// open all closed nodes in treeview
procedure TForm1.TreeView1Expanded(Sender: TObject; Node: TTreeNode);
begin
  if TreeView1.Selected <> nil then
  // Sets the default and selected image to index 1 of the ImageList.
  TreeView1.Selected.ImageIndex := 1;
  TreeView1.Selected.SelectedIndex := 1;
end;

procedure TForm1.TreeView1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   // Check whether no element exists at the clicked coordinates.
  if TreeView1.GetNodeAt(X, Y) = nil then
  begin
    if TreeView1.MultiSelect then
      TreeView1.ClearSelection(True)
    else
      TreeView1.Selected := nil;
  end;
end;

procedure TForm1.UTF16BE1Click(Sender: TObject);
begin
  StatusBar1.Panels[9].Text := 'UTF-16 BE';
end;

procedure TForm1.UTF16LE1Click(Sender: TObject);
begin
  StatusBar1.Panels[9].Text := 'UTF-16 LE';
end;

procedure TForm1.UTF81Click(Sender: TObject);
begin
  StatusBar1.Panels[9].Text := 'UTF-8';
end;

procedure TForm1.UTF8Boom1Click(Sender: TObject);
begin
  StatusBar1.Panels[9].Text := 'UTF-8 Boom';
end;

procedure TForm1.About1Click(Sender: TObject);
begin
  MessageDlg('MovieBase v1.0' + Chr(10) +
             'Archive your movies or whatever you want.' + Chr(10) +
             'Copyright © 2026 hackbard' + Chr(10) +
             'github.com | Public Release',mtInformation, [mbOK], 0);
end;

// add entry when a folder is clicked
procedure TForm1.AddEntry1Click(Sender: TObject);
var
  ParentNode, ChildNode: TTreeNode;
  str : string;
  tn : TTreeNode;
  c, i : integer;
  Sl: TStringList;
  Node: TTreeNode;
begin
  // Exit if there are no items.
  if TreeView1.Items.Count = 0 then
  begin
    Beep;
    MessageDlg('There are no genres available to create an entry..',mtInformation, [mbOK], 0);
    Exit;
  end;

  // Name of the new entry
  InputQuery('New entry', 'Name:', Str);
  if str = '' then Exit;    // no name go out

  RichEdit1.Clear;

  // prevents flickering during bulk changes.
  TreeView1.Items.BeginUpdate;

  // get the currently highlighted node
  ParentNode := TreeView1.Selected;
  // safety check: make sure a node is actually selected
  if Assigned(ParentNode) then
  begin
    // add the subnode to the selected parent
    if DirectoryExists(MainPath + FilePath + '\') then
    ChildNode := TreeView1.Items.AddChild(ParentNode, str);

    // select the created entry in the tree view.
    tn := GetNodeByText(TreeView1, str, true);
    if tn = nil then
      ShowMessage('Not found!')
     else
      begin
        tn.Selected := True;
      end;

    // optional: Automatically expand the parent to reveal the new child
    ParentNode.Expand(False);

    // create file
    FileClose(FileCreate(MainPath + FilePath + '\' + str));

    // count entries
    c := StrToInt(StatusBar1.Panels[3].Text ) + 1;

    // load "template.ini"
    RichEdit1.Lines.LoadFromFile(ExtractFilePath(Application.ExeName) +
                                  'Data\Template\Template.ini');

    // move the cursor to top
    RichEdit1.SelStart := 0;
    RichEdit1.SelLength := 0;
    RichEdit1.Perform(EM_SCROLLCARET, 0, 0); // Scroll the view to the cursor.

    { Specific entries—such as numbers or date/time—are selected here.
      The list can be extended as desired to include all necessary entries.
      The variable..

      "Sl"

      ..represents the entire list. }
    Sl := TStringList.Create;
    try
      // Define the new lines
      if InsertName1.Checked = true then
        Sl.Add('< New entry > ' + str);   // add entry name
      if InsertDateTime1.Checked = true then
        Sl.Add('< Date/Time > ' + DateTimeToStr(Now)); // add current date time
      if Insertcountentry1.Checked = true then
        Sl.Add('< ' + FilePath + ' Entry Nr. > ' + IntToStr(c));  // add count & category
      // Insert from back to front, top
      for i := Sl.Count - 1 downto 0 do
      begin
        // Insert the list into the upper section of the RichEdit control.
        RichEdit1.Lines.Insert(0, Sl[i]);
      end;
    finally
      // make the list free
      Sl.Free;
    end;
  end
    else
  begin
    // folder must be selected to create entry
    ShowMessage('Please select a Genre first!');
  end;

  // hightlight entry strings
  CodeColors(Form1,'normal', Richedit1, true);

  try
    // save new entry automatic when created the file
    if Assigned(TreeView1.Selected) then
      begin
        // pass path
        Filepath := GetNodePath(TreeView1.Selected, '\');
        if FileExists(MainPath + Filepath) then
            RichEdit1.Lines.SaveToFile(MainPath + Filepath);
      end
      else
      begin
        // entry must be selected
        ShowMessage('Please select a entry first!');
      end;
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;

  TreeView1.Items.EndUpdate;
  // update treeview settings
  TreevIew1.OnClick(sender);

  CreateEntry;
end;

procedure TForm1.ANSI1Click(Sender: TObject);
begin
  StatusBar1.Panels[9].Text := 'ANSI';
end;

procedure TForm1.ASCii1Click(Sender: TObject);
begin
  StatusBar1.Panels[9].Text := 'ASCII';
end;

procedure TForm1.Both1Click(Sender: TObject);
begin
  TreeView1.SortType := stBoth;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Open2.OnClick(self);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Remove2.OnClick(self);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  Bmp : TBitmap;
  i : integer;
  Node: TTreeNode;
begin
  // pass the subnode name
  selected := TreeView1.Selected.Text;

  // Check whether the main node or the sub-node is selected.
  Node := TreeView1.Selected;

  if Assigned(Node) then
  BEGIN
    if Node.Parent = nil then Exit;

    Bmp := TBitmap.Create;
    try
      // Get the image from the image list.
      ImageList2.GetBitmap(1, Bmp);

      // find the star images
      for i := 1 to 5 do
       begin
          TImage(findcomponent('Image' + inttostr(i))).Picture.Assign(bmp);
       end;

      TFile.WriteAllText(ExtractFilePath(Application.ExeName) +
                    'Data\Ratings\' + selected + '.dat', '0');

      // report data base path
      HeaderControl3.Sections[1].Text := '0';
    finally
      Bmp.Free;
    end;

    // variable for the function to count stars
    stars := 0;
    // save the *.dat file
    SaveMyRating;
  END;
  StatusBar1.SetFocus;
end;

procedure TForm1.Clear1Click(Sender: TObject);
begin
  RichEdit1.Clear;
end;

// close all open nodes in treeview
procedure TForm1.Colllaps1Click(Sender: TObject);
begin
  // Exit if there are no items.
  if TreeView1.Items.Count = 0 then Exit;

  TreeView1.Items.BeginUpdate;
  Treeview1.Select(Treeview1.Items[0]);
  try
    TreeView1.FullCollapse;
  finally
    TreeView1.Items.EndUpdate;
  end;
end;

procedure TForm1.Copy1Click(Sender: TObject);
begin
  RichEdit1.Perform(WM_COPY,0,0); // copy selected strings
end;

procedure TForm1.Cover1Click(Sender: TObject);
begin
  // disable rating panel
  if Rating1.Checked = true then Panel4.Visible := false;
  Panel3.Visible := Cover1.Checked;  // show covers
  // Place the rating panel back over the cover panel.
  if Rating1.Checked = true then Panel4.Visible := true;
end;

// create backup tree
// this applies only to the TreeView node, not to the files contained within it.
procedure TForm1.Create1Click(Sender: TObject);
var
  F: TFileStream;
begin
  if SaveDialog1.Execute then
  begin
    F := TFileStream.Create(SaveDialog1.FileName + '.ini', fmCreate or fmShareCompat);
    try
      F.WriteComponent(TreeView1);
    finally
      F.Free;
    end;
  end;
end;

// ciut string to clipboard
procedure TForm1.Cut1Click(Sender: TObject);
begin
  RichEdit1.CutToClipboard;
end;

procedure TForm1.Data1Click(Sender: TObject);
begin
  TreeView1.SortType := stData;
end;

procedure TForm1.Default1Click(Sender: TObject);
begin
  StatusBar1.Panels[9].Text := 'Default';
end;

{ resize cover to display
  This reduces the file size and the time it takes to load the image
  when an entry is selected. }
procedure TForm1.Displaysize1Click(Sender: TObject);
var
  jpg: TJPEGImage;
  bmp: TBitmap;
begin
  // Exit if it's not checked.
  if Displaysize1.Checked = false then Exit;

  // Note to the user that no cover exists.
  if Image9.Picture.Graphic = nil then
  begin
    MessageDlg('Please upload a picture first!',mtInformation, [mbOK], 0);
    Displaysize1.Checked := false;
    Exit;
  end;

  Screen.Cursor := crHourGlass;
  // create memory access
  jpg := TJPEGImage.Create;
  bmp := TBitmap.Create;
  try
    // copy image pixel to memory
    jpg.Assign(Image9.Picture.Graphic);
    bmp.Width := 136;   // new width
    bmp.Height := 206;  // new height
    // draw jpg to bitmap
    bmp.Canvas.StretchDraw(Rect(0, 0, 136, 206), jpg);
    // copy bitmap to memory
    jpg.Assign(bmp);
    // copy pixel from memory back to image
    Image9.Picture.Assign(jpg);
  finally
    bmp.Free;
    jpg.Free;
    StatusBar1.Panels[7].Text := IntToStr(Image9.Picture.Width) + 'x' +
                                       IntToStr(Image9.Picture.Height);
    CreateEntry;
    Screen.Cursor := crDefault;
  end;
end;

// search Nodes & entrys in the treeview
procedure TForm1.Edit1Change(Sender: TObject);
var
  tn : TTreeNode;
begin
  // search string
  tn := GetNodeByText(TreeView1,Edit1.Text, true);
  if tn = nil then
   else
    begin
      TreeView1.SetFocus;
      // Select if the name is found.
      tn.Selected := True;
      TreeView1.OnClick(self);
    end;
end;

procedure TForm1.Edit1Click(Sender: TObject);
begin
  Edit1.Font.Color := clBlack;
end;

procedure TForm1.Edit1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Edit1.SelectAll;
end;

procedure TForm1.emplate1Click(Sender: TObject);
begin
  Form2.Show; // template form
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close();
end;

// expand all treeview nodes
procedure TForm1.Expand1Click(Sender: TObject);
begin
  // Exit if there are no items.
  if TreeView1.Items.Count = 0 then Exit;

  TreeView1.Items.BeginUpdate;
  Treeview1.Select(Treeview1.Items[0]);
  try
    TreeView1.FullExpand;
  finally
    TreeView1.Items.EndUpdate;
  end;
end;

// create windows document (*.doc) file
procedure TForm1.ExportDOC1Click(Sender: TObject);
begin
  if SaveDialog3.Execute then
  begin
    RichEdit1.PlainText := False; // Ensure formatting is saved
    RichEdit1.Lines.SaveToFile(SaveDialog3.FileName + '.doc');
  end;
end;

// create (*.html) product file
procedure TForm1.ExportHTML1Click(Sender: TObject);
var
  html : TStringList;
  RE : TRichEdit;
  ms: TStream;
begin
  if SaveDialog4.Execute then
  begin
    RE := TRichEdit.Create(Self); // dynamic richedit
    try
      RE.Parent := Self;          // Associates it with the Form
      RE.Align := alClient;       // Fits the window
      RE.Visible := false;        // hide dynamic RE(RichEdit)
      ms:=TMemoryStream.Create;   // create memora stream
      try
        RichEdit1.Lines.SaveToStream(ms); // copy RichEdit to stream
        ms.Position:=0;                   // jump to first sel position
        RE.Lines.LoadFromStream(ms);      // load RE(RichEdit) from memory
      finally
        ms.Free;                          // destry stream in memory
      end;
      RE.SelectAll;                       // select strings in RE(RichEdit)
      RE.PlainText := false;              // be sure copy format
      RE.CopyToClipboard;                 // create html code to clipboard
      html := TStringList.Create;         // create string list in memory
      html.Add('<!DOCTYPE html>');
      html.Add('<html lang="en">');
      html.Add('<head>');
      html.Add('<meta charset="UTF-8">');
      html.Add('<title>MovieBase Product v1.0</title>');
      html.Add('</head>');
      html.Add('<body>');
      html.Add(ClipboardToHTML(Self));    // copy html code to stringlist
      html.Add('</body>');
      html.Add('</html>');

      html.SaveToFile(SaveDialog4.FileName + '.html');     // save it
    except
      RE.Free;
      html.Free;
    end;
  end;
end;

procedure TForm1.ExportRTF1Click(Sender: TObject);
begin
  if SaveDialog2.Execute then
  begin
    RichEdit1.PlainText := False; // Ensure formatting is saved
    RichEdit1.Lines.SaveToFile(SaveDialog2.FileName + '.rtf');
  end;
end;

// sort all folders and entrys in treeview as text alphabetic
procedure TForm1.ext1Click(Sender: TObject);
begin
  TreeView1.SortType := stText;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WriteOptions;  // save options by end
end;

procedure TForm1.FormCreate(Sender: TObject);
const
  ScrollBarA: array[0..3] of TScrollStyle = (
    ssBoth,ssHorizontal,ssNone,ssVertical);
var
  FileInfo: TSHFileInfo;
  SysImageListHandle: THandle;
  TotalNodes: Integer;
  FS: TFileStream;
  template : string;
begin
  // check if data base folder exists
  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Data\Base\')
   then ForceDirectories(ExtractFilePath(Application.ExeName) + 'Data\Base\');

  // check if cover folder exists
  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Data\Covers\')
   then ForceDirectories(ExtractFilePath(Application.ExeName) + 'Data\Covers\');

  // check if unicode folder exists, that is important for the save function
  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Data\Unicode\')
   then ForceDirectories(ExtractFilePath(Application.ExeName) + 'Data\Unicode\');

  // check if options folder & options file exists
  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Data\Options\')
   then ForceDirectories(ExtractFilePath(Application.ExeName) + 'Data\Options\');

  if not FileExists(ExtractFilePath(Application.ExeName) + 'Data\Options\Options.ini')
   then Default1.Checked := true;

  // check if template folder & template ini file exists
  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Data\Template\')
   then
   begin
    ForceDirectories(ExtractFilePath(Application.ExeName) + 'Data\Template\');
    template := ExtractFilePath(Application.ExeName) + 'Data\Template\Template.ini';
    try
      // The file is created here at 0 bytes
      FS := TFileStream.Create(template, fmCreate);
    finally
      FS.Free; // Closes the file handle safely
      NonTemplate;
    end;
   end;

  // check if options folder & options file exists
  if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Data\Ratings\')
   then ForceDirectories(ExtractFilePath(Application.ExeName) + 'Data\Ratings\');

  Panel1.DoubleBuffered := true;

  // Increase the RichEdit capacity.
  RichEdit1.MaxLength := $7FFFFFF0;

  // Determine the font name for the RichEdit.
  FontDialog1.Font.Name := 'Courier new';

  { hightlight the entry text
    is only necessary if there is text in the RichEdit at startup. }
  //CodeColors(Form1,'normal', Richedit1, true);

  // determines the main path for all saved files
  MainPath := ExtractFilePath(Application.ExeName) + 'Data\Base\';

  // load all genres & entrys in treeview
  LoadFolderToTree(MainPath, TreeView1, nil);

  // create scrollbars for RichEdit
  RichEdit1.ScrollBars := ScrollBarA[0];
  RichEdit1.WordWrap := False;

  // count total entrys
  TotalNodes := TreeView1.Items.Count;
  StatusBar1.Panels[5].Text := IntToStr(TotalNodes);

  // count genres folders
  StatusBar1.Panels[1].Text := IntToStr(GetRootNodeCount(TreeView1));

  // highlight URL(s)
  // is used to intercept or replace the default window procedure of
  // a TRichEdit component (subclassing).
  PrevRichEditWndProc := RichEdit1.WindowProc;
  RichEdit1.WindowProc := RichEditWndProc;
  SetRichEditMasks;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  ReadOptions;
  oolBar1.OnClick(sender);
  Cover1.OnClick(sender);
  Status1.OnClick(sender);
  Default1.OnClick(sender);
  Rating1.OnClick(sender);

  // check unicode settings
  if UTF81.Checked then UTF81.OnClick(sender);
  if UTF8Boom1.Checked then UTF8Boom1.OnClick(sender);
  if UTF16LE1.Checked then UTF16LE1.OnClick(sender);
  if UTF16BE1.Checked then UTF16BE1.OnClick(sender);
  if ANSI1.Checked then ANSI1.OnClick(sender);
  if ASCii1.Checked then ASCii1.OnClick(sender);
end;

// draw cover grayscale
procedure TForm1.Grayscale2Click(Sender: TObject);
var
  Jpg: TJPEGImage;
begin
  // Exit if it's not checked.
  if Grayscale2.Checked = false then Exit;

  // Note to the user that no cover exists.
  if Image9.Picture.Graphic = nil then
  begin
    MessageDlg('Please upload a picture first!',mtInformation, [mbOK], 0);
    Grayscale2.Checked := false;
    Exit;
  end;

  Jpg := TJPEGImage.Create;
  try
    Jpg.Assign(Image9.Picture.Graphic);
    Jpg.Grayscale := true;
    Image9.Picture.Assign(jpg);
  finally
    Jpg.Free;
    CreateEntry;
  end;
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Bmp : TBitmap;
  i : integer;
  Node: TTreeNode;
begin
  // pass the subnode name
  selected := TreeView1.Selected.Text;

  // Check whether the main node or the sub-node is selected.
  Node := TreeView1.Selected;

  if Assigned(Node) then
  BEGIN
    if Node.Parent = nil then Exit;

    Bmp := TBitmap.Create;
    try
      // Get the image from the image list.
      ImageList2.GetBitmap(1, Bmp);

      // find the star images
      for i := 1 to 5 do
       begin
          TImage(findcomponent('Image' + inttostr(i))).Picture.Assign(bmp);
       end;

      // Index 0 is the first image in the ImageList.
      ImageList2.GetBitmap(0, Bmp);
      Image1.Picture.Assign(Bmp); // or Image1.Picture.Bitmap := Bmp;

      // report data base path
      HeaderControl3.Sections[1].Text := '1';
    finally
      Bmp.Free;
    end;

    // variable for the function to count stars
    stars := 1;
    // save the *.dat file
    SaveMyRating;
  END;
end;

procedure TForm1.Image2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Bmp : TBitmap;
  i : integer;
  Node: TTreeNode;
begin
  // pass the subnode name
  selected := TreeView1.Selected.Text;

  // Check whether the main node or the sub-node is selected.
  Node := TreeView1.Selected;
  if Assigned(Node) then
  begin
    if Node.Parent = nil then Exit;
  end;

  Bmp := TBitmap.Create;
  try
    ImageList2.GetBitmap(1, Bmp);

    // find the star images
    for i := 1 to 5 do
     begin
        TImage(findcomponent('Image' + inttostr(i))).Picture.Assign(bmp);
     end;

    // Index 0 is the first image in the ImageList.
    ImageList2.GetBitmap(0, Bmp);
    Image1.Picture.Assign(Bmp); // star 1
    Image2.Picture.Assign(Bmp); // star 2

    // report data base path
    HeaderControl3.Sections[1].Text := '2';
  finally
    Bmp.Free;
  end;

  // variable for the function to count stars
  stars := 2;
  // save the *.dat file
  SaveMyRating;
end;

procedure TForm1.Image3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Bmp : TBitmap;
  i : integer;
  Node: TTreeNode;
begin
  // pass the subnode name
  selected := TreeView1.Selected.Text;

  // Check whether the main node or the sub-node is selected.
  Node := TreeView1.Selected;
  if Assigned(Node) then
  begin
    if Node.Parent = nil then Exit;
  end;

  Bmp := TBitmap.Create;
  try
    ImageList2.GetBitmap(1, Bmp);

    // find the star images
    for i := 1 to 5 do
     begin
        TImage(findcomponent('Image' + inttostr(i))).Picture.Assign(bmp);
     end;

    // Index 0 is the first image in the ImageList.
    ImageList2.GetBitmap(0, Bmp);
    Image1.Picture.Assign(Bmp); // star 1
    Image2.Picture.Assign(Bmp); // star 2
    Image3.Picture.Assign(Bmp); // star 3

    // report data base path
    HeaderControl3.Sections[1].Text := '3';
  finally
    Bmp.Free;
  end;

  // variable for the function to count stars
  stars := 3;
  // save the *.dat file
  SaveMyRating;
end;

procedure TForm1.Image4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Bmp : TBitmap;
  i : integer;
  Node: TTreeNode;
begin
  // pass the subnode name
  selected := TreeView1.Selected.Text;

  // Check whether the main node or the sub-node is selected.
  Node := TreeView1.Selected;
  if Assigned(Node) then
  begin
    if Node.Parent = nil then Exit;
  end;

  Bmp := TBitmap.Create;
  try
    ImageList2.GetBitmap(1, Bmp);

    // find the star images
    for i := 1 to 5 do
     begin
        TImage(findcomponent('Image' + inttostr(i))).Picture.Assign(bmp);
     end;

    // Index 0 is the first image in the ImageList.
    ImageList2.GetBitmap(0, Bmp);
    Image1.Picture.Assign(Bmp); // star 1
    Image2.Picture.Assign(Bmp); // star 2
    Image3.Picture.Assign(Bmp); // star 3
    Image4.Picture.Assign(Bmp); // star 4

    // report data base path
    HeaderControl3.Sections[1].Text := '4';
  finally
    Bmp.Free;
  end;

  // variable for the function to count stars
  stars := 4;
  // save the *.dat file
  SaveMyRating;
end;


procedure TForm1.Image5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  Bmp : TBitmap;
  i : integer;
  Node: TTreeNode;
begin
  // pass the subnode name
  selected := TreeView1.Selected.Text;

  // Check whether the main node or the sub-node is selected.
  Node := TreeView1.Selected;
  if Assigned(Node) then
  begin
    if Node.Parent = nil then Exit;
  end;

  Bmp := TBitmap.Create;
  try
    ImageList2.GetBitmap(1, Bmp);

    // find the star images
    for i := 1 to 5 do
     begin
        TImage(findcomponent('Image' + inttostr(i))).Picture.Assign(bmp);
     end;

    // Index 0 is the first image in the ImageList.
    ImageList2.GetBitmap(0, Bmp);
    Image1.Picture.Assign(Bmp); // star 1
    Image2.Picture.Assign(Bmp); // star 2
    Image3.Picture.Assign(Bmp); // star 3
    Image4.Picture.Assign(Bmp); // star 4
    Image5.Picture.Assign(Bmp); // star 5

    // report data base path
    HeaderControl3.Sections[1].Text := '5';
  finally
    Bmp.Free;
  end;

  // variable for the function to count stars
  stars := 5;
  // save the *.dat file
  SaveMyRating;
end;

procedure TForm1.Image9DblClick(Sender: TObject);
begin
  if Image9.Picture.Graphic = nil then Exit;
  Form3.Show;
end;

// load backup
// Here, the folders are loaded back into the tree view.
procedure TForm1.Load1Click(Sender: TObject);
var
  F: TFileStream;
begin
  if OpenDialog2.Execute then
  begin
    F := TFileStream.Create(OpenDialog2.FileName, fmOpenRead or fmShareDenyWrite);
    try
      F.ReadComponent(TreeView1);
    finally
      F.Free;
    end;
  end;
end;

// create new genre folder
procedure TForm1.NewGenre1Click(Sender: TObject);
var
  dir : string;
begin
  // Write the name of the new genre
  InputQuery('New Genre entry', 'Genre name:', dir);
  if dir = '' then Exit;

  {$I-} // Disables automatic runtime checks for input and output operations (I/O) in Delphi.
  MkDir(MainPath + dir);  // create genre folder in base
  {$I+}

  // Error creating genre
  if IOResult <> 0 then
    MessageDlg('Cannot Create Directory!',
      mtWarning, [mbOK], 0)
  else
    MessageDlg('Directory Created', mtInformation, [mbOK], 0);

  // Prevents flickering during bulk changes.
  TreeView1.Items.BeginUpdate;
  TreeView1.Items.Clear;  // is necessary to reload the treeview
  // Reload all folders
  LoadFolderToTree(MainPath, TreeView1, nil);
  TreeView1.Items.EndUpdate;
end;

procedure TForm1.None1Click(Sender: TObject);
begin
  TreeView1.SortType := stNone;
end;

procedure TForm1.oolBar1Click(Sender: TObject);
begin
  ToolBar1.Visible := oolBar1.Checked;
end;

// load covers (bmp, jpg, png, gif)
// All images that are not in JPG format will be converted to this format.
procedure TForm1.Open2Click(Sender: TObject);
var
  Bmp : TBitmap;
  Jpg : TJPEGImage;
  Image : TImage;
  GIF : TGIFImage;
  Cover : string;
begin
  if OpenDialog1.Execute then
  BEGIN

    if OpenDialog1.FilterIndex = 1 then  // load bitmap
    begin
      Bmp := TBitmap.Create;
      Jpg := TJPEGImage.Create;
      try
        Bmp.LoadFromFile(OpenDialog1.FileName);
        // copy bitmap pixels to jpg
        Jpg.Assign(Bmp);
        Image9.Picture.Assign(jpg);
      finally
        Jpg.Free;
        Bmp.Free;
      end;
    end;

    if OpenDialog1.FilterIndex = 2 then   // load jpg
    begin
      Image9.Picture.LoadFromFile(OpenDialog1.FileName);
    end;

    if OpenDialog1.FilterIndex = 3 then   // load png
    begin
      Bmp := TBitmap.Create;
      Jpg := TJPEGImage.Create;
      try
        // convert png to bimtap
        LoadPngToBmp(bmp, OpenDialog1.FileName);
        // copy pixels to jpg format
        Jpg.Assign(Bmp);
        Image9.Picture.Assign(jpg);
      finally
        Jpg.Free;
        Bmp.Free;
      end;
    end;

    if OpenDialog1.FilterIndex = 4 then   // load gif
    begin
      GIF := TGIFImage.Create;
      Bmp := TBitmap.Create;
      Jpg := TJPEGImage.Create;
      try
        // load gif graphic from file
        GIF.LoadFromFile(OpenDialog1.FileName);
        // Set bitmap dimensions and format
        Bmp.Width := Gif.Width;
        Bmp.Height := Gif.Height;
        Bmp.PixelFormat := pf24bit;
        // Draw the first frame of the GIF onto the bitmap
        Bmp.Canvas.Draw(0, 0, Gif);
        // Assign bitmap to JPEG and save
        Jpg.Assign(Bmp);
        Jpg.CompressionQuality := 85; // Adjust quality (0-100)
        //Jpg.SaveToFile(JpgFileName);
        Image9.Picture.Assign(jpg);
      finally
        Jpg.Free;
        Bmp.Free;
        GIF.Free;
      end;
    end;

    // save jpg/jpeg graphic file automatic
    if SaveCoverAutomatic1.Checked = true then
    begin
      if Grayscale2.Checked = true then Grayscale2.OnClick(self);
      if Smooth1.Checked = true then Smooth1.OnClick(self);
      if Displaysize1.Checked = true then Displaysize1.OnClick(self);
      Save1.OnClick(self);
    end;


  END;

  Displaysize1.Checked := false;
  Smooth1.Checked := false;
  GrayScale2.Checked := false;
  CreateEntry;
end;

// Always place the cover in the middle.
procedure TForm1.Panel2Resize(Sender: TObject);
begin
  Image9.Left := (Panel3.ClientWidth - Image9.Width) div 2;
  Label3.Left := (Panel3.ClientWidth - Label3.Width) div 2;
  // Only necessary if that is also supposed to apply to the height.
  //Image1.Top := (Panel1.ClientHeight - Image1.Height);
end;

procedure TForm1.Paste1Click(Sender: TObject);
begin
  RichEdit1.PasteFromClipboard;
end;

procedure TForm1.Print1Click(Sender: TObject);
begin
  ToolButton17.OnClick(self);
end;

// Removing the cover also applies to the file in the "Cover" folder.
procedure TForm1.Remove1Click(Sender: TObject);
var
  remove, Node : TTreeNode;
  Cover : string;
begin
  // Exit if there are no items.
  if TreeView1.Items.Count = 0 then Exit;

  // pass the current node
  remove := TreeView1.Selected;

  if remove <> nil then
  begin
    // Check whether the node has a parent node.
    if remove.Parent = nil then
    begin
      // Here, a genre folder is completely deleted, along with all the files contained within it.
      IF MessageDlg(PChar('Are you sure that this genre, including all its entries, should be deleted?'),
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
      BEGIN
        if Assigned(TreeView1.Selected) then
        begin
          // pass selected path
          Filepath := GetNodePath(TreeView1.Selected, '\');
          // Determine if the folder exists; if so, delete it and all files within it.
          if DirectoryExists(MainPath + Filepath) then
          begin
            DeleteFile(MainPath + Filepath);
          end;

          // Determine the current path of the treeview
          Node := TreeView1.Selected;
          // Remove the folder from the treeview
          TreeView1.Items.Delete(Node);
        end
        else
        begin
          // if the folder is not accessible or cannot be deleted
          ShowMessage('Genre removed not possible');
        end;
      END;

    END ELSE BEGIN

      // Remove an entry and its associated files.
      IF MessageDlg(PChar('Are you sure you want to remove the entry?'),
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
      BEGIN
        Cover := '';
        if Assigned(TreeView1.Selected) then
        begin
          // Determine current cover
          Cover := TreeView1.Selected.Text;
          // Determine the current path of the treeview
          Filepath := GetNodePath(TreeView1.Selected, '\');
          try
            // Check if the file exists and delete them
            if FileExists(MainPath + Filepath) then
            begin
              DeleteFile(MainPath + Filepath);
              DeleteFile(ExtractFilePath(Application.ExeName) + 'Data\Ratings\'+ TreeView1.Selected.Text + '.dat');
            end;

            Node := TreeView1.Selected;
            TreeView1.Items.Delete(Node);
            // If an entry is deleted, the cover image must also be deleted;
            // otherwise, it will eventually be full of images.
            if FileExists(ExtractFilePath(Application.ExeName) + 'Data\Covers\' + Cover + '.jpg') then
            begin
              DeleteFile(ExtractFilePath(Application.ExeName) + 'Data\Covers\' + Cover + '.jpg');
            end;
          except
            on E: Exception do
              ShowMessage(E.Message);
          end;

          RichEdit1.Clear;
        end
        else
        begin
          // if no entry was clicked
          ShowMessage('Please select a entry first!');
        end;

      END;
    end;
  end;
end;

procedure TForm1.Remove2Click(Sender: TObject);
var
  Cover : string;
begin
  Cover := '';
  IF MessageDlg(PChar('Are you sure you want to remove the cover?'),
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
  BEGIN
    Cover := TreeView1.Selected.Text;
    try
      // check whether a cover exists at all
      if FileExists(ExtractFilePath(Application.ExeName) + 'Data\Covers\' + Cover + '.jpg') then
      begin
        // delete cover
        DeleteFile(ExtractFilePath(Application.ExeName) + 'Data\Covers\' + Cover + '.jpg');
      end;
      // clear image pixel graphic
      Image9.Picture.Graphic := nil;
    except
      on E: Exception do
        ShowMessage(E.Message); // give error message by fail
    end;
    Displaysize1.Checked := false;
    Smooth1.Checked := false;
    GrayScale2.Checked := false;
  end;
end;

// This removes all folders and entries in the tree view as well as in the
// "Base" and "Cover" folder.
procedure TForm1.RemoveallGenres1Click(Sender: TObject);
begin
  IF MessageDlg(PChar('Warning: This deletes all entries and covers, are you sure?'),
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
  BEGIN
    ClearFolder(ExtractFilePath(Application.ExeName) + 'Data\Base');
    ClearFolder(ExtractFilePath(Application.ExeName) + 'Data\Covers');
    ClearFolder(ExtractFilePath(Application.ExeName) + 'Data\Ratings');

    { -- If you wish to empty further folders, they must be entered here. -- }

    TreeView1.Items.Clear;
    RichEdit1.Clear;
    NewGenre1.Enabled := true;
    Application.ProcessMessages; // update treeview
  END;
end;


{ This function renames both folders and files (entries).
  This ensures the "Cover" is also renamed so that it can be found
  during loading. }
procedure TForm1.Rename1Click(Sender: TObject);
var
  rename : string;
  Cover : string;
begin
  // Exit if there are no items.
  if TreeView1.Items.Count = 0 then Exit;

  // Prevents flickering during bulk changes.
  TreeView1.Items.BeginUpdate;
  Cover := TreeView1.Selected.Text;

  try
    if Assigned(TreeView1.Selected) then
    begin
      // get entry name
      //Filepath := GetNodePath(TreeView1.Selected, '\');

      // rename genre
      if DirectoryExists(MainPath + Filepath) then
      begin
        rename := InputBox('Rename Genre','Rename : ',Filepath);
        if rename = '' then Exit;    // if no name is provided.
        // rename entrie
        RenameFile(MainPath + Filepath, MainPath + rename);
      end;

      // rename entry
      if FileExists(MainPath + Filepath) then
      begin
        rename := InputBox('Rename Entry','Rename : ',Cover);
        if rename = '' then Exit;    // if no name is provided.
        RenameFile(MainPath + Filepath,
                    ExtractFileDir(MainPath + Filepath) + '\' + rename);
        // get image
        if Image9.Picture.Graphic <> nil then
        begin
          // rename cover when exists
          RenameFile(ExtractFilePath(Application.ExeName) + 'Data\Covers\' +
                                                            Cover + '.jpg',
                     ExtractFilePath(Application.ExeName) + 'Data\Covers\' +
                                                            rename + '.jpg');
        end;
      end;

      // rename stars file when exists
      if FileExists(ExtractFilePath(Application.ExeName) + 'Data\Ratings\' + Cover + '.dat') then
      begin
        RenameFile(ExtractFilePath(Application.ExeName) + 'Data\Ratings\' +
                                                            Cover + '.dat',
                     ExtractFilePath(Application.ExeName) + 'Data\Ratings\' +
                                                            rename + '.dat');

      end;

      // clear treeview
      TreeView1.Items.Clear;
      // update treeview list
      LoadFolderToTree(MainPath, TreeView1, nil);
    end
    else
    begin
      // if the file cannot be renamed
      ShowMessage('Error : cant renamed');
    end;
  finally
    TreeView1.Items.EndUpdate;
    // Expand root node
    ExpandNodeByText(TreeView1, SelectedGenre);
  end;
end;

procedure TForm1.RichEdit1Change(Sender: TObject);
begin
  if RichEdit1.Text <> '' then
  begin
    // when entry is clicked
    Save1.Enabled := true;
    Save2.Enabled := true;
    Copy1.Enabled := true;
    Paste1.Enabled := true;
    Cut1.Enabled := true;
    Selectall1.Enabled := true;
    Clear1.Enabled := true;
    Print1.Enabled := true;
  end else begin
    // when folder is clicked
    Save1.Enabled := false;
    Save2.Enabled := false;
    Copy1.Enabled := false;
    Paste1.Enabled := false;
    Cut1.Enabled := false;
    Selectall1.Enabled := false;
    Clear1.Enabled := false;
    Print1.Enabled := false;
  end;
end;

// save the entry
procedure TForm1.Save1Click(Sender: TObject);
var
  jpg: TJPEGImage;
  Node : TTreeNode;       // TreeView Node
  Cover : string;         // Covers
  LStream: TStringStream; // Unicode
begin
  IF MessageDlg(PChar('Are you sure you want to overwrite this entry?'),
                mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
  BEGIN
    if Assigned(TreeView1.Selected) then
    begin
      Filepath := GetNodePath(TreeView1.Selected, '\');

      // Check if a cover has been loaded.
      if Image9.Picture.Graphic <> nil then
      begin

        // get selected node
        if TreeView1.Selected <> nil then
        begin
          Cover := TreeView1.Selected.Text;
        end;

        // save jpg/jpeg graphic file
        jpg := TJPEGImage.Create;
        try
          // Assign image from TImage
          jpg.Assign(Image9.Picture.Graphic);
          // Adjust quality (optional; the default is often 80 or 90)
          jpg.CompressionQuality := 85;
          jpg.Compress;
          // save file
          jpg.SaveToFile(ExtractFilePath(Application.ExeName) +
                         'Data\Covers\' + Cover + '.jpg');
        finally
          jpg.Free;
        end;
      end;

      // unicode save export
      if Default1.Checked = true then
      LStream := TStringStream.Create(RichEdit1.Lines.Text, TEncoding.Default);

      if UTF81.Checked = true then
      LStream := TStringStream.Create(RichEdit1.Lines.Text, TEncoding.UTF8);

      if UTF8Boom1.Checked = true then
      LStream := TStringStream.Create(RichEdit1.Lines.Text, TEncoding.UTF8);

      if UTF16LE1.Checked = true then
      LStream := TStringStream.Create(RichEdit1.Lines.Text, TEncoding.Unicode);

      if UTF16BE1.Checked = true then
      LStream := TStringStream.Create(RichEdit1.Lines.Text, TEncoding.BigEndianUnicode);

      if ANSI1.Checked = true then
      LStream := TStringStream.Create(RichEdit1.Lines.Text, TEncoding.ANSI);

      if ASCii1.Checked = true then
      LStream := TStringStream.Create(RichEdit1.Lines.Text, TEncoding.ASCII);

      try
        if FileExists(MainPath + Filepath) then
          LStream.SaveToFile(MainPath + Filepath);
      finally
        LStream.Free;
      end;
    end
    else
    begin
      // if no entry was selected
      ShowMessage('Please select a entry first!');
    end;

  SaveMyRating;
  END;
end;

procedure TForm1.Save2Click(Sender: TObject);
begin
  Save1.OnClick(self);
end;

procedure TForm1.Selectall1Click(Sender: TObject);
begin
  RichEdit1.Perform(EM_SETSEL,0,-1);
end;

procedure TForm1.Status1Click(Sender: TObject);
begin
  StatusBar1.Visible := Status1.Checked;
end;

procedure TForm1.StayTop1Click(Sender: TObject);
begin
  if StayTop1.Checked = true then
    SetWindowPos(Handle, HWND_TOPMOST, Left,Top, Width,Height,
             SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE)
  else
    SetWindowPos(Handle, HWND_NOTOPMOST, Left,Top, Width,Height,
             SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
end;

end.
