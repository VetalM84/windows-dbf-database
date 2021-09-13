unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xpman, ExtCtrls, DBCtrls, DBGrids, DB, DBTables, bde, Menus,
  Grids, ToolWin, ComCtrls, StdCtrls, ExtDlgs;

type
  TForm1 = class(TForm)
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    DBImage1: TDBImage;
    Pic: TOpenPictureDialog;
    Table1: TTable;
    Open: TOpenDialog;
    DBGrid: TDBGrid;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Label1: TLabel;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton8: TToolButton;
    ToolButton7: TToolButton;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ToolButton9: TToolButton;
    N3: TMenuItem;
    DT1: TDateTimePicker;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure CreateMyTable(NameFile: string);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  namefile, t: string;
  field: tfield;
  i: integer;
  table: ttable;

implementation





{$R *.dfm}  {$A+}

procedure TForm1.CreateMyTable(NameFile: string);
begin
  with TTable.Create(nil) do begin
    try
      Active := False;
      DatabaseName := 'c:\data';
      TableName := namefile;
      TableType := ttDefault;
      FieldDefs.Clear;
      with FieldDefs.AddFieldDef do begin
        Name := 'First';
        DataType := ftString;
        Size := 20;
        Required := False;
      end;
      with FieldDefs.AddFieldDef do begin
        Name := 'Second';
        DataType := ftString;
        Size := 30;
        Required := False;
      end;
      IndexDefs.Clear;
      with IndexDefs.AddIndexDef do begin
        Name := '';
        Fields := 'First';
        Options := [ixPrimary];
      end;
        CreateTable;
    finally
    Free;
    end;
  end;
end;


procedure TForm1.ToolButton1Click(Sender: TObject);

begin
//задаем имя для новой БД
namefile:= inputbox('Новая база данных', 'Имя базы данных', '.db');
if namefile = '' then else CreateMyTable(namefile);

end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin
if table1.Active= true then table1.Active:= false;
open.Execute;
if open.FileName= '' then else begin
table1.TableName:= open.FileName;
table1.Active:= true;
caption:= 'База данных '+ open.FileName;
end;
end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin
pic.Execute;
if pic.FileName= '' then else
DBImage1.Picture.LoadFromFile(pic.FileName);

end;

procedure TForm1.ToolButton4Click(Sender: TObject);
begin
if table1.Active= true then table1.Active:= false else
table1.Active:= true;
end;

procedure TForm1.ToolButton5Click(Sender: TObject);
begin
table1.Active:= false;
try
Table1.DeleteTable;
except
messagebox(handle, 'Неизвестное имя файла', 'Ошибка удаления файла', 16);
end;
end;

procedure TForm1.ToolButton8Click(Sender: TObject);
begin
// очистка БД от всех записей
with table1 do begin
active:= false;
Exclusive:= true;
EmptyTable;
exclusive:= false;
active:= true;

end;
end;

procedure TForm1.ToolButton7Click(Sender: TObject);
var ThisVersion : SYSVersion;
begin
// узнать версию BDE
DbiGetSysVersion(ThisVersion);
label2.Caption:= 'Версия BORLAND DATABASE ENGINE = '+
IntToStr(ThisVersion.iVersion);

end;

procedure TForm1.ToolButton9Click(Sender: TObject);
begin
//DbiSaveChanges(Table1.handle);

end;

procedure TForm1.N1Click(Sender: TObject);
begin
table1.Edit;
table1.FindField(dbgrid.SelectedField.DisplayLabel).AsDateTime:= date;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
table1.Edit;
table1.FindField(dbgrid.SelectedField.DisplayLabel).AsDateTime:= now;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
table1.Edit;
table1.FindField(dbgrid.SelectedField.DisplayLabel).AsDateTime:= now+date;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
table1.Edit;
table1.FindField(dbgrid.SelectedField.DisplayLabel).AsDateTime:= dt1.Date;
end;

procedure TForm1.N5Click(Sender: TObject);
var IconStream : TMemoryStream;
begin
IconStream := TMemoryStream.Create;
iconstream.LoadFromFile('16.bmp');
table1.Insert;
(Table1.fieldbyname('Поле 5') as TblobField).LoadFromStream(IconStream);
IconStream.Free;
end;

end.

