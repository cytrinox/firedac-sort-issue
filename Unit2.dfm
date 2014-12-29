object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 461
  ClientWidth = 723
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 224
    Width = 624
    Height = 182
    Caption = 
      'Requirements:'#13#10#13#10'You need a local Firebird 2.5 server running an' +
      'd the DEMO.FDB database.'#13#10#13#10'Copy the database to any folder on y' +
      'our system and set the path to the database'#13#10'in the "database" c' +
      'omponent under "Params" (old value is F:\DEMO.FDB).'#13#10#13#10'!!!!! IMP' +
      'ORTANT !!!!!'#13#10'The sort issue only happens when using the LDW fea' +
      'ture. When changing the'#13#10'requirements for LDW, for example chang' +
      'ing CursorKind to ckDefault, LDW gets disabled.'#13#10#13#10'But in my cas' +
      'e, I need LDW, so disabling LDW is not an option!'#13#10#13#10'For LDW, se' +
      'e http://docwiki.embarcadero.com/RADStudio/XE7/en/Browsing_Table' +
      's_%28FireDAC%29#Live_Data_Window_Mode'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 393
    Height = 201
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 407
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Sort ASC'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 407
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Sort DESC'
    TabOrder = 2
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 48
    Top = 136
  end
  object FDTable1: TFDTable
    Active = True
    Connection = database
    FetchOptions.AssignedValues = [evLiveWindowParanoic, evLiveWindowFastFirst]
    FetchOptions.LiveWindowParanoic = True
    FetchOptions.LiveWindowFastFirst = True
    UpdateOptions.UpdateTableName = 'DEMO_VIEW'
    UpdateOptions.KeyFields = 'ID'
    TableName = 'DEMO_VIEW'
    Left = 128
    Top = 136
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 432
    Top = 152
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 432
    Top = 88
  end
  object database: TFDConnection
    Params.Strings = (
      'Database=F:\DEMO.FDB'
      'Server=localhost'
      'CharacterSet=UTF8'
      'PageSize=16384'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'ExtendedMetadata=True'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 192
    Top = 136
  end
end
