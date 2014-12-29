unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.VCLUI.Wait, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, Vcl.StdCtrls,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Comp.UI, FireDAC.Comp.DataSet, Vcl.Grids, Vcl.DBGrids;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    database: TFDConnection;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  FDTable1.IndexFieldNames := 'NAME1:A';
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  FDTable1.IndexFieldNames := 'NAME1:D';
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  database.Connected := True;
  FDTable1.Active := True;
end;

end.
