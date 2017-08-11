unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1Codigo: TIntegerField;
    ClientDataSet1Descricao: TStringField;
    ClientDataSet1Unidade: TStringField;
    ClientDataSet1Fornecedor: TStringField;
    ClientDataSet1Data: TDateField;
    ClientDataSet1Quantidade: TFloatField;
    ClientDataSet1Unitario: TCurrencyField;
    ClientDataSet1EstoqueQtd: TAggregateField;
    ClientDataSet1EstoqueVlr: TAggregateField;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Edit1: TEdit;
    DBComboBox1: TComboBox;
    DBComboBox2: TComboBox;
    Button1: TButton;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    ClientDataSet1Total: TCurrencyField;
    DBEdit10: TDBEdit;
    Label14: TLabel;
    procedure ClientDataSet1CalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.Button1Click(Sender: TObject);
var
  vEncontrou: Boolean;
begin
  if DBComboBoX2.ItemIndex = 1 then
  begin
    if trim(Edit1.Text) <> '' then
    begin
      if ClientDataSet1.Locate(DBComboBox1.Items[DBComboBox1.ItemIndex],
        Edit1.Text, [loCaseInsensitive, loPartialKey]) then
      begin
        ShowMessage('Encontrado e registro posicionado');
      end
      else
        ShowMessage('Não encontrado');
    end
    else
      ShowMessage('Informe um valor');
  end;

  if DBComboBox2.ItemIndex = 2 then
  begin
    if trim(Edit1.Text) <> '' then
    begin
      ClientDataSet1.IndexFieldNames := DBComboBox1.Items[DBComboBox1.ItemIndex];
      if ClientDataSet1.FindKey([Edit1.Text]) then
      begin
        ShowMessage('Encontrado e registro posicionado');
      end
      else
        ShowMessage('Não encontrado');
    end
    else
      ShowMessage('Informe um valor');
  end;

  if DBComboBox2.ItemIndex = 4 then
  begin
    if trim(Edit1.Text) <> '' then
    begin
      if not ClientDataSet1.Active then
        ClientDataSet1.Open;

      vEncontrou := False;
      ClientDataSet1.DisableControls;
      try
        ClientDataSet1.First;
        while not ClientDataSet1.eof do
        begin
          if (ClientDataSet1.FieldByName(DBComboBox1.Items[DBComboBox1.ItemIndex])
            .AsString = Edit1.Text) then
          begin
            vEncontrou := True;
            Break;
          end;
          ClientDataSet1.Next;
        end;

      finally
        ClientDataSet1.EnableControls;
        if vEncontrou = True then
          ShowMessage('Encontrado e registro posicionado')
        else
          ShowMessage('Não encontrado')
      end;
    end
    else
      ShowMessage('Informe um valor');
  end;

  if DBComboBox2.ItemIndex = 6 then
  begin
    ClientDataSet1.Filtered := False;
  end;

  if DBComboBox2.ItemIndex = 5 then
  begin
    if trim(Edit1.Text) <> '' then
    begin
      ClientDataSet1.Filter := DBComboBox1.Items[DBComboBox1.ItemIndex] + ' = ' +
        Edit1.Text;
      ClientDataSet1.Filtered := True;
    end
    else
      ShowMessage('Informe um valor');
  end;

  if DBComboBox2.ItemIndex = 0 then
  begin
    ClientDataSet1.IndexFieldNames := DBComboBox1.Items[DBComboBox1.ItemIndex];
  end;

end;



procedure TForm1.ClientDataSet1CalcFields(DataSet: TDataSet);
begin
  if (Not ClientDataSet1.FieldByName('Unitario').IsNull) and
   (Not ClientDataSet1.FieldByName ('Quantidade').IsNull)  then
begin
  ClientDataSet1.FieldByName('Total').Value :=
  ClientDataSet1.FieldByName ('Unitario').Value * ClientDataSet1.FieldByName ('Quantidade').Value;
  end;
end;




procedure TForm1.FormCreate(Sender: TObject);
Const
CDataFile='dados.xml' ;
begin
DBCombobox1.ItemIndex := 0 ;
DBCombobox2.ItemIndex := 0 ;
  ClientDataSet1.FileName:= ExtractFilePath(Application.ExeName) + CDataFile;
    if FileExists(ClientDataSet1.FileName) then
     ClientDataSet1.Open
    else
     ClientDataSet1.CreateDataSet
end;

end.
