object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Controle de Estoque'
  ClientHeight = 511
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 73
    Align = alTop
    Caption = 'Panel1'
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 376
      Top = 1
      Width = 409
      Height = 71
      DataSource = DataSource1
      Align = alRight
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 786
    Height = 88
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 2
      Width = 33
      Height = 13
      Caption = 'Codigo'
    end
    object Label2: TLabel
      Left = 16
      Top = 43
      Width = 23
      Height = 13
      Caption = 'Data'
    end
    object Label3: TLabel
      Left = 176
      Top = 2
      Width = 46
      Height = 13
      Caption = 'Descricao'
    end
    object Label4: TLabel
      Left = 176
      Top = 48
      Width = 55
      Height = 13
      Caption = 'Fornecedor'
    end
    object Label5: TLabel
      Left = 361
      Top = 46
      Width = 56
      Height = 13
      Caption = 'Quantidade'
    end
    object Label6: TLabel
      Left = 632
      Top = 8
      Width = 39
      Height = 13
      Caption = 'Unidade'
    end
    object Label7: TLabel
      Left = 632
      Top = 48
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object Label14: TLabel
      Left = 503
      Top = 48
      Width = 37
      Height = 13
      Caption = 'Unitario'
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 19
      Width = 121
      Height = 21
      DataField = 'Codigo'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 18
      Top = 61
      Width = 121
      Height = 21
      DataField = 'Data'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 175
      Top = 19
      Width = 451
      Height = 21
      DataField = 'Descricao'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 632
      Top = 61
      Width = 121
      Height = 21
      DataField = 'Total'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 175
      Top = 61
      Width = 162
      Height = 21
      DataField = 'Fornecedor'
      DataSource = DataSource1
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 361
      Top = 61
      Width = 121
      Height = 21
      DataField = 'Quantidade'
      DataSource = DataSource1
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 634
      Top = 19
      Width = 121
      Height = 21
      DataField = 'Unidade'
      DataSource = DataSource1
      TabOrder = 6
    end
    object DBEdit10: TDBEdit
      Left = 505
      Top = 61
      Width = 121
      Height = 21
      DataField = 'Unitario'
      DataSource = DataSource1
      TabOrder = 7
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 161
    Width = 786
    Height = 96
    Align = alTop
    Caption = 'Panel3'
    TabOrder = 2
    object Label8: TLabel
      Left = 16
      Top = 8
      Width = 158
      Height = 13
      Caption = 'Pesquisa, Ordena'#231#227'o e Filtragem'
    end
    object Label9: TLabel
      Left = 24
      Top = 40
      Width = 33
      Height = 13
      Caption = 'Campo'
    end
    object Label10: TLabel
      Left = 192
      Top = 40
      Width = 24
      Height = 13
      Caption = 'A'#231#227'o'
    end
    object Label11: TLabel
      Left = 352
      Top = 40
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object Edit1: TEdit
      Left = 352
      Top = 56
      Width = 153
      Height = 21
      TabOrder = 0
      Text = 'Edit1'
    end
    object DBComboBox1: TComboBox
      Left = 24
      Top = 56
      Width = 145
      Height = 21
      TabOrder = 1
      Items.Strings = (
        'Codigo'
        'Descricao'
        'Unidade'
        'Fornecedor'
        'Data'
        'Quantidade'
        'Unitario'
        'Total')
    end
    object DBComboBox2: TComboBox
      Left = 192
      Top = 56
      Width = 145
      Height = 21
      TabOrder = 2
      Items.Strings = (
        'Indexar'
        'Locate'
        'Findkey'
        'Limpar'
        'Percorrer'
        'Filtrar'
        'Limpar Filtro')
    end
    object Button1: TButton
      Left = 552
      Top = 56
      Width = 177
      Height = 25
      Caption = 'Executar'
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 257
    Width = 786
    Height = 160
    Align = alTop
    DataSource = DataSource1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unitario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fornecedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Unitario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 417
    Width = 786
    Height = 94
    Align = alClient
    Caption = 'Totais'
    TabOrder = 4
    object Label12: TLabel
      Left = 222
      Top = 64
      Width = 115
      Height = 13
      Caption = 'Quantidade em Estoque'
    end
    object Label13: TLabel
      Left = 512
      Top = 64
      Width = 81
      Height = 13
      Caption = 'Valor do Estoque'
    end
    object DBEdit8: TDBEdit
      Left = 361
      Top = 61
      Width = 121
      Height = 21
      DataField = 'EstoqueQtd'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit9: TDBEdit
      Left = 608
      Top = 61
      Width = 121
      Height = 21
      DataField = 'EstoqueVlr'
      DataSource = DataSource1
      TabOrder = 1
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    OnCalcFields = ClientDataSet1CalcFields
    Left = 248
    Top = 16
    object ClientDataSet1Codigo: TIntegerField
      FieldName = 'Codigo'
    end
    object ClientDataSet1Descricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object ClientDataSet1Unidade: TStringField
      FieldName = 'Unidade'
      Size = 2
    end
    object ClientDataSet1Fornecedor: TStringField
      FieldName = 'Fornecedor'
      Size = 50
    end
    object ClientDataSet1Data: TDateField
      FieldName = 'Data'
    end
    object ClientDataSet1Quantidade: TFloatField
      FieldName = 'Quantidade'
    end
    object ClientDataSet1Unitario: TCurrencyField
      FieldName = 'Unitario'
    end
    object ClientDataSet1Total: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object ClientDataSet1EstoqueQtd: TAggregateField
      FieldName = 'EstoqueQtd'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(Quantidade)'
    end
    object ClientDataSet1EstoqueVlr: TAggregateField
      DefaultExpression = 'SUM(Quantidade*Unitario)'
      FieldName = 'EstoqueVlr'
      Visible = True
      Active = True
      DisplayName = ''
      Expression = 'SUM(Quantidade*Unitario)'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 88
    Top = 24
  end
end
