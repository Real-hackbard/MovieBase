unit HighlightLinks;

{ This unit is intended for older versions of Delphi, as some aspects of
  the RichEdit library are no longer compatible.

  The following code can be used in the main unit.}

{ procedure TForm1.Button1Click(Sender: TObject);
  begin
    HighlightURL(RichEdit1);
  end;

  procedure TForm1.RichEdit1Change(Sender: TObject);
  var saveSelStart : Integer;
  begin
    UpdateWordUnderCursor(RichEdit1);
  end;


  procedure TForm1.RichEdit1MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  var s : string;
  begin
    s := GetURLUnderCursor(RichEdit1);
    if s = '' then begin
      s := 'Pas d''URL sous le curseur';
      RichEdit1.Cursor := crDefault;
    end else begin
      RichEdit1.Cursor := crHandPoint;
    end;
    StatusBar1.SimpleText := s;
  end; }

interface

uses ComCtrls, Windows, Messages, RichEdit, Graphics, Controls;

procedure HighlightURL(const RichEdit : TRichEdit);
function GetURLUnderCursor(const RichEdit : TRichEdit) : string;
procedure UpdateWordUnderCursor(const RichEdit : TRichEdit);

implementation

function isValidChar(const c : char) : boolean;
const validChars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789$-_.+!*''(),{}|\^~[]`<>#%|<>;/?:@&=';
begin
  result := Pos(c, validChars) <> 0;
end;

procedure HighlightURL(const RichEdit : TRichEdit);
var sCopy : string;
    memoIndex : integer;
    s : string;
    urlPos : integer;
    j : integer;
    URL : string;

begin
  s := RichEdit.Lines.Text;
  sCopy := Copy(s, 0, length(s));
  memoIndex := 0;

  RichEdit.Tag := 1;
  // Hide the selection marker before processing
  // --> WM_USER + 63 = EM_HIDESELECTION
  RichEdit.Perform(Messages.WM_USER + 63, WPARAM(TRUE), LPARAM(FALSE));
  // Set all text to black / non-underlined.
  RichEdit.SelectAll;
  RichEdit.SelAttributes.Color := clBlack;
  RichEdit.SelAttributes.Style := [];

  // Search for a URL
  urlPos := Pos('https://', sCopy);
  while urlPos <> 0 do begin
    // Copy the text from the beginning of the URL to the end of the text.
    sCopy := Copy(sCopy, urlPos, length(sCopy));
    memoIndex := memoIndex + urlPos;
    // Place the cursor at the beginning of the URL.
    RichEdit.SelStart := memoIndex - 1;
    j := 1;
    URL := '';
    // Look for the end of the URL
    while isValidChar(sCopy[j]) do begin
      URL := URL + sCopy[j];
      j := j + 1;
    end;
    sCopy := copy(sCopy, j, length(sCopy));
    memoIndex := memoIndex + j - 2;
    // Turns the URL blue and underlines it.
    RichEdit.SelLength := memoIndex - RichEdit.SelStart;
    RichEdit.SelAttributes.Color := clBlue;
    RichEdit.SelAttributes.Style := [fsUnderline];
    // Look for the next URL to process
    urlPos := Pos('https://', sCopy);
  end;
  RichEdit.SelStart := 0;
  // --> WM_USER + 63 = EM_HIDESELECTION
  RichEdit.Perform(Messages.WM_USER + 63, WPARAM(FALSE), LPARAM(FALSE));
  RichEdit.Tag := 0;
end;

function GetURLUnderCursor(const RichEdit : TRichEdit) : string;
var
  iWordStart, iWordEnd,
  iCharIndex, iLineIndex, iCharOffset: Integer;
  Pt: TPoint;
  mouse : TMouse;
begin
  Result := '';
  mouse := TMouse.Create();
  Pt := mouse.CursorPos;
  Pt := RichEdit.ScreenToClient(Pt);
  // Retrieves the character under the cursor
  // (The function returns -1 if it fails)
  iCharIndex := SendMessage(RichEdit.Handle, Messages.EM_CHARFROMPOS, 0, Integer(@Pt));
  if iCharIndex >= 0 then begin
    // If the character is valid, we test the adjacent characters for
    // determine whether the word under the cursor is a URL
    if isValidChar(RichEdit.Text[iCharIndex]) then begin
      // Retrieves the row index
      iLineIndex := RichEdit.Perform(EM_EXLINEFROMCHAR, 0, LPARAM(iCharIndex));
      // Retrieves the character's position from the beginning of the line.
      iCharOffset := iCharIndex - RichEdit.Perform(Messages.EM_LINEINDEX, WPARAM(iLineIndex), 0);
      // Retrieves the word under the cursor
      if length(RichEdit.Lines[iLineIndex]) > 0 then begin
        // The left part of the word
        iWordStart := iCharOffset + 1;
        while iWordStart > 0 do begin
          if isValidChar(RichEdit.Lines[iLineIndex][iWordStart]) then
            iWordStart := iWordStart - 1
          else
            break;
        end;
        // The right side
        iWordEnd := iCharOffset + 1;
        while iWordEnd < length(RichEdit.Lines[iLineIndex]) do begin
          if isValidChar(RichEdit.Lines[iLineIndex][iWordEnd]) then
            iWordEnd := iWordEnd + 1
          else
            break;
        end;

        // Copy the word into Result.
        Result := Copy(RichEdit.Lines[iLineIndex], iWordStart + 1, iWordEnd - iWordStart);
      end;

      // If the word is not a URL, an empty string is returned.
      if pos('https://', Result) <> 1 then Result := '';
    end;
  end;
end;

procedure UpdateWordUnderCursor(const RichEdit : TRichEdit);
var
  iWordStart, iWordEnd,
  iCharIndex, iLineIndex, iCharOffset: Integer;
  theWord : string;
  saveSelStart : integer;
begin
  if RichEdit.Cursor <> crNone then RichEdit.Cursor := crNone;

  iCharIndex := RichEdit.SelStart;

  if iCharIndex >= 0 then begin
    // Retrieves the row index
    iLineIndex := RichEdit.Perform(EM_EXLINEFROMCHAR, 0, LPARAM(iCharIndex));
    // Retrieves the position of the character relative to the beginning of the line.
    iCharOffset := iCharIndex - RichEdit.Perform(Messages.EM_LINEINDEX, WPARAM(iLineIndex), 0);

   // Retrieves the word under the cursor
    if length(RichEdit.Lines[iLineIndex]) > 0 then begin
      // The left part of the word
      iWordStart := iCharOffset;
      iCharIndex := iCharIndex;
      while iWordStart > 0 do begin
        if isValidChar(RichEdit.Lines[iLineIndex][iWordStart]) then begin
          iWordStart := iWordStart - 1;
          iCharIndex := iCharIndex - 1;
        end else begin
          break;
        end;
      end;

      // The right side
      iWordEnd := iCharOffset + 1;
      while iWordEnd < length(RichEdit.Lines[iLineIndex]) do begin
        if isValidChar(RichEdit.Lines[iLineIndex][iWordEnd]) then
          iWordEnd := iWordEnd + 1
        else
          break;
      end;

      theWord := Copy(RichEdit.Lines[iLineIndex], iWordStart + 1, iWordEnd - iWordStart);
    end;

    // We save the current cursor position.
    SaveSelStart := RichEdit.SelStart;
    // The selection marker is hidden.
    RichEdit.Perform(Messages.WM_USER + 63, WPARAM(TRUE), LPARAM(FALSE));
    // Position the cursor at the beginning of the word
    RichEdit.SelStart := iCharIndex;
    // Expand the selection to select the entire word
    RichEdit.SelLength := length(theWord);
    // If the word is a URL
    if pos('https://', theWord) = 1 then begin // We'll put it in blue and underline it.
      RichEdit.SelAttributes.Color := clBlue;
      RichEdit.SelAttributes.Style := [fsUnderline];
    end else begin // otherwise, the default color (black, in this case) is restored
      RichEdit.SelAttributes.Color := clBlack;
      RichEdit.SelAttributes.Style := [];
    end;
    // We return the slider to its initial position.
    RichEdit.SelStart := SaveSelStart;
    // The cursor is made visible again.
    RichEdit.Perform(Messages.WM_USER + 63, WPARAM(FALSE), LPARAM(FALSE));
  end;
end;

end.
 