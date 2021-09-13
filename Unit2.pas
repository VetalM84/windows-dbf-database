unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, db, dbtables;

type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    LEdit1: TLabeledEdit;
    LEdit2: TLabeledEdit;
    LEdit3: TLabeledEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  f: TField;


implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  form1.Table1.Close;
  f := TStringField.Create(form1.Table1);
  f.Name := 'Table1CalcField';
  f.FieldName := 'CalcField';
  f.DisplayLabel := 'Calc';
  f.Calculated := True;
  f.DataSet := form1.Table1;
  form1.Table1.Open;
close;
end;

end.



