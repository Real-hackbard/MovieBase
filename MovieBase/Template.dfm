object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Edit template'
  ClientHeight = 434
  ClientWidth = 431
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 431
    Height = 97
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 427
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 263
      Height = 15
      Caption = 'Edit the template that is displayed for a new entry.'
    end
    object Label2: TLabel
      Left = 16
      Top = 37
      Width = 268
      Height = 15
      Caption = 'The highlighted text is the same as in the database.'
    end
    object Label3: TLabel
      Left = 16
      Top = 61
      Width = 85
      Height = 15
      Caption = 'Programname :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 112
      Top = 58
      Width = 121
      Height = 23
      TabStop = False
      TabOrder = 0
      Text = 'MovieBase'
    end
  end
  object RichEdit1: TRichEdit
    Left = 17
    Top = 97
    Width = 414
    Height = 287
    TabStop = False
    Align = alClient
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    ScrollBars = ssBoth
    TabOrder = 1
    ExplicitWidth = 410
    ExplicitHeight = 286
  end
  object Panel2: TPanel
    Left = 0
    Top = 384
    Width = 431
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitTop = 383
    ExplicitWidth = 427
    DesignSize = (
      431
      50)
    object Button1: TButton
      Left = 8
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Reload'
      TabOrder = 0
      TabStop = False
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 258
      Top = 13
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Save'
      TabOrder = 1
      TabStop = False
      OnClick = Button2Click
      ExplicitLeft = 254
    end
    object Button3: TButton
      Left = 339
      Top = 13
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancel'
      TabOrder = 2
      TabStop = False
      OnClick = Button3Click
      ExplicitLeft = 335
    end
    object Button4: TButton
      Left = 89
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Highlight'
      TabOrder = 3
      TabStop = False
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 177
      Top = 13
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Open'
      TabOrder = 4
      TabStop = False
      OnClick = Button5Click
      ExplicitLeft = 173
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 97
    Width = 17
    Height = 287
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitHeight = 286
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Ini files (*.ini)|*.ini|All files (*.*)|*.*'
    Left = 384
    Top = 120
  end
  object PopupMenu1: TPopupMenu
    Left = 376
    Top = 200
    object Copy1: TMenuItem
      Caption = 'Copy'
      ShortCut = 16451
      OnClick = Copy1Click
    end
    object Past1: TMenuItem
      Caption = 'Paste'
      ShortCut = 16470
      OnClick = Past1Click
    end
    object Cut1: TMenuItem
      Caption = 'Cut'
      ShortCut = 16472
      OnClick = Cut1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Selectall1: TMenuItem
      Caption = 'Select all'
      ShortCut = 16449
      OnClick = Selectall1Click
    end
    object Clear1: TMenuItem
      Caption = 'Clear'
      OnClick = Clear1Click
    end
  end
end
