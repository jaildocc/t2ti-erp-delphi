unit UConfiguracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, FMTBcd, Provider, DBClient,
  DB, SqlExpr, StdCtrls, Mask, DBCtrls, Buttons, pngimage, ExtCtrls,
  JvExStdCtrls, JvButton, JvCtrls, JvExButtons, JvBitBtn, ComCtrls, JvCombobox,
  JvColorCombo, JvExExtCtrls, JvExtComponent, JvPanel, JvOfficeColorPanel,
  JvExControls, JvColorBox, JvColorButton, JvBaseDlg, JvBrowseFolder, ACBrECF;

type
  TFConfiguracao = class(TForm)
    QConfiguracao: TSQLQuery;
    DSConfiguracao: TDataSource;
    CDSConfiguracao: TClientDataSet;
    DSPConfiguracao: TDataSetProvider;
    QPosicaoComponentes: TSQLQuery;
    DSPosicaoComponentes: TDataSource;
    CDSPosicaoComponentes: TClientDataSet;
    DSPPosicaoComponentes: TDataSetProvider;
    CDSConfiguracaoID: TIntegerField;
    CDSConfiguracaoID_ECF_IMPRESSORA: TIntegerField;
    CDSConfiguracaoID_ECF_RESOLUCAO: TIntegerField;
    CDSConfiguracaoID_ECF_CAIXA: TIntegerField;
    CDSConfiguracaoID_ECF_EMPRESA: TIntegerField;
    CDSConfiguracaoMENSAGEM_CUPOM: TStringField;
    CDSConfiguracaoPORTA_ECF: TStringField;
    CDSConfiguracaoPORTA_PINPAD: TStringField;
    CDSConfiguracaoPORTA_BALANCA: TStringField;
    CDSConfiguracaoIP_SERVIDOR: TStringField;
    CDSConfiguracaoIP_SITEF: TStringField;
    CDSConfiguracaoTIPO_TEF: TStringField;
    CDSConfiguracaoTITULO_TELA_CAIXA: TStringField;
    CDSConfiguracaoCAMINHO_IMAGENS_PRODUTOS: TStringField;
    CDSConfiguracaoCAMINHO_IMAGENS_MARKETING: TStringField;
    CDSConfiguracaoCAMINHO_IMAGENS_LAYOUT: TStringField;
    CDSConfiguracaoCOR_JANELAS_INTERNAS: TStringField;
    CDSConfiguracaoMARKETING_ATIVO: TStringField;
    CDSConfiguracaoCFOP_ECF: TIntegerField;
    CDSConfiguracaoCFOP_NF2: TIntegerField;
    CDSConfiguracaoTIMEOUT_ECF: TIntegerField;
    CDSConfiguracaoINTERVALO_ECF: TIntegerField;
    CDSConfiguracaoDESCRICAO_SUPRIMENTO: TStringField;
    CDSConfiguracaoDESCRICAO_SANGRIA: TStringField;
    CDSConfiguracaoTEF_TIPO_GP: TIntegerField;
    CDSConfiguracaoTEF_TEMPO_ESPERA: TIntegerField;
    CDSConfiguracaoTEF_ESPERA_STS: TIntegerField;
    CDSConfiguracaoTEF_NUMERO_VIAS: TIntegerField;
    CDSConfiguracaoINDICE_GERENCIAL_DAV: TIntegerField;
    CDSConfiguracaoSINCRONIZADO: TStringField;
    QImpressora: TSQLQuery;
    DSImpressora: TDataSource;
    DSPImpressora: TDataSetProvider;
    CDSImpressora: TClientDataSet;
    botaoConfirma: TJvBitBtn;
    botaoCancela: TJvImgBtn;
    Image1: TImage;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    ScrollBox1: TScrollBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QCaixa: TSQLQuery;
    DSCaixa: TDataSource;
    DSPCaixa: TDataSetProvider;
    CDSCaixa: TClientDataSet;
    DBLookupComboBox4: TDBLookupComboBox;
    Label4: TLabel;
    QEmpresa: TSQLQuery;
    DSEmpresa: TDataSource;
    DSPEmpresa: TDataSetProvider;
    CDSEmpresa: TClientDataSet;
    QResolucao: TSQLQuery;
    DSResolucao: TDataSource;
    DSPResolucao: TDataSetProvider;
    CDSResolucao: TClientDataSet;
    TabSheet2: TTabSheet;
    GridPrincipal: TJvDBGrid;
    Label3: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    PaletaCores: TJvOfficeColorPanel;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Folder: TJvBrowseForFolderDialog;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    QCFOP: TSQLQuery;
    DSCFOP: TDataSource;
    DSPCFOP: TDataSetProvider;
    CDSCFOP: TClientDataSet;
    DBLookupComboBox5: TDBLookupComboBox;
    Label17: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit11: TDBEdit;
    Label21: TLabel;
    DBEdit13: TDBEdit;
    Label22: TLabel;
    DBEdit14: TDBEdit;
    Label27: TLabel;
    DBEdit19: TDBEdit;
    PanelScroll: TPanel;
    GroupBox1: TGroupBox;
    Label24: TLabel;
    DBEdit16: TDBEdit;
    Label25: TLabel;
    DBEdit17: TDBEdit;
    Label26: TLabel;
    DBEdit18: TDBEdit;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label16: TLabel;
    Label20: TLabel;
    DBEdit12: TDBEdit;
    TabSheet3: TTabSheet;
    Label28: TLabel;
    JvDBGrid1: TJvDBGrid;
    QFormasPagamento: TSQLQuery;
    DSPFormasPagamento: TDataSetProvider;
    CDSFormasPagamento: TClientDataSet;
    DSFormasPagamento: TDataSource;
    CDSFormasPagamentoCODIGO: TStringField;
    CDSFormasPagamentoDESCRICAO: TStringField;
    CDSFormasPagamentoTEF: TStringField;
    CDSFormasPagamentoIMPRIME_VINCULADO: TStringField;
    CDSFormasPagamentoPERMITE_TROCO: TStringField;
    CDSFormasPagamentoID: TIntegerField;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    QFormasPagamentoID: TIntegerField;
    QFormasPagamentoCODIGO: TStringField;
    QFormasPagamentoDESCRICAO: TStringField;
    QFormasPagamentoTEF: TStringField;
    QFormasPagamentoIMPRIME_VINCULADO: TStringField;
    QFormasPagamentoPERMITE_TROCO: TStringField;
    TabSheet4: TTabSheet;
    GroupBox2: TGroupBox;
    cmbIdentificadorBalanca: TComboBox;
    Label37: TLabel;
    cmbTipoConfiguracaoBalanca: TComboBox;
    Label38: TLabel;
    GroupBox3: TGroupBox;
    Label29: TLabel;
    cmbBalanca: TComboBox;
    Label30: TLabel;
    cmbPortaSerial: TComboBox;
    Label31: TLabel;
    cmbBaudRate: TComboBox;
    Label32: TLabel;
    cmbDataBits: TComboBox;
    Label33: TLabel;
    cmbParity: TComboBox;
    Label35: TLabel;
    cmbStopBits: TComboBox;
    Label34: TLabel;
    cmbHandShaking: TComboBox;
    Label36: TLabel;
    editTimeOut: TEdit;
    CDSConfiguracaoCONFIGURACAO_BALANCA: TStringField;
    DBEdit20: TDBEdit;
    procedure confirma;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure botaoConfirmaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure PaletaCoresColorChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure editTimeOutKeyPress(Sender: TObject; var Key: Char);
    procedure PreparaConfiguracaoBalancaParaGravacao;
    procedure cmbIdentificadorBalancaChange(Sender: TObject);
    procedure cmbTipoConfiguracaoBalancaChange(Sender: TObject);
    procedure cmbBalancaChange(Sender: TObject);
    procedure cmbPortaSerialChange(Sender: TObject);
    procedure cmbBaudRateChange(Sender: TObject);
    procedure cmbDataBitsChange(Sender: TObject);
    procedure cmbParityChange(Sender: TObject);
    procedure cmbStopBitsChange(Sender: TObject);
    procedure cmbHandShakingChange(Sender: TObject);
    procedure editTimeOutChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CarregaEditsConfiguracaoBalanca;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConfiguracao: TFConfiguracao;

implementation

uses UDataModule, UCaixa, TotalTipoPagamentoController, Biblioteca;

{$R *.dfm}



procedure TFConfiguracao.botaoConfirmaClick(Sender: TObject);
begin
  confirma;
end;



procedure TFConfiguracao.cmbBalancaChange(Sender: TObject);
begin
  PreparaConfiguracaoBalancaParaGravacao;
end;

procedure TFConfiguracao.cmbBaudRateChange(Sender: TObject);
begin
  PreparaConfiguracaoBalancaParaGravacao;
end;

procedure TFConfiguracao.cmbDataBitsChange(Sender: TObject);
begin
  PreparaConfiguracaoBalancaParaGravacao;
end;

procedure TFConfiguracao.cmbHandShakingChange(Sender: TObject);
begin
  PreparaConfiguracaoBalancaParaGravacao;
end;

procedure TFConfiguracao.cmbIdentificadorBalancaChange(Sender: TObject);
begin
  PreparaConfiguracaoBalancaParaGravacao;
end;

procedure TFConfiguracao.cmbParityChange(Sender: TObject);
begin
  PreparaConfiguracaoBalancaParaGravacao;
end;

procedure TFConfiguracao.cmbPortaSerialChange(Sender: TObject);
begin
  PreparaConfiguracaoBalancaParaGravacao;
end;

procedure TFConfiguracao.cmbStopBitsChange(Sender: TObject);
begin
  PreparaConfiguracaoBalancaParaGravacao;
end;

procedure TFConfiguracao.cmbTipoConfiguracaoBalancaChange(Sender: TObject);
begin
  PreparaConfiguracaoBalancaParaGravacao;
end;

procedure TFConfiguracao.confirma;
begin
  if CDSConfiguracao.State in [dsEdit] then
  begin
    CDSConfiguracao.Post;
    CDSConfiguracao.ApplyUpdates(0);
  end;
  if CDSPosicaoComponentes.State in [dsEdit] then
  begin
    CDSPosicaoComponentes.Post;
    CDSPosicaoComponentes.ApplyUpdates(0);
  end;
  Close;
end;

procedure TFConfiguracao.editTimeOutChange(Sender: TObject);
begin
  PreparaConfiguracaoBalancaParaGravacao;
end;

procedure TFConfiguracao.editTimeOutKeyPress(Sender: TObject; var Key: Char);
begin
 // if not key in['0..9'] then
  //key:=#0;
end;

procedure TFConfiguracao.FormActivate(Sender: TObject);
begin
  Color := StringToColor(UCaixa.Configuracao.CorJanelasInternas);
end;

procedure TFConfiguracao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFConfiguracao.FormCreate(Sender: TObject);
begin
  CDSCaixa.Active := True;
  CDSCFOP.Active := True;
  CDSConfiguracao.Active := True;
  CDSEmpresa.Active := True;
  CDSImpressora.Active := True;
  CDSPosicaoComponentes.Active := True;
  CDSResolucao.Active := True;
  CDSFormasPagamento.Active := True;
  //
  CDSPosicaoComponentes.MasterSource := DSResolucao;
  CDSPosicaoComponentes.MasterFields := 'ID';
  CDSPosicaoComponentes.IndexFieldNames := 'ID_ECF_RESOLUCAO';

  CarregaEditsConfiguracaoBalanca;

end;

procedure TFConfiguracao.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 123 then
    confirma;
end;

procedure TFConfiguracao.FormShow(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
end;

procedure TFConfiguracao.PaletaCoresColorChange(Sender: TObject);
begin
  CDSConfiguracao.Edit;
  CDSConfiguracao.FieldByName('COR_JANELAS_INTERNAS').AsString := ColorToString(PaletaCores.SelectedColor);
end;


procedure TFConfiguracao.SpeedButton1Click(Sender: TObject);
begin
  Folder.Execute;
  DBEdit6.Text := Folder.Directory + '\';
end;

procedure TFConfiguracao.SpeedButton2Click(Sender: TObject);
begin
  Folder.Execute;
  DBEdit7.Text := Folder.Directory + '\';
end;

procedure TFConfiguracao.SpeedButton3Click(Sender: TObject);
begin
  Folder.Execute;
  DBEdit8.Text := Folder.Directory + '\';
end;

procedure TFConfiguracao.SpeedButton4Click(Sender: TObject);
var
  i: integer;
begin
  if TTotalTipoPagamentoController.QuantidadeRegistroTabela > 0 then
  begin
    Application.MessageBox('J� foram efetuadas vendas com as formas de pagamento cadastradas no sistema'
    +#13+#13+'OU ocorreu algum erro ao tentar efetuar a opera��o.', 'Informa��o do Sistema', Mb_OK + MB_ICONINFORMATION);
  end
  else
  begin
    //limpa a tabela
    CDSFormasPagamento.First;
    while not CDSFormasPagamento.Eof do
      CDSFormasPagamento.Delete;

    //Bematech e NaoFiscal permitem cadastrar formas de Pagamento dinamicamente
    if (FDataModule.ACBrECF.Modelo in [ecfBematech, ecfNaoFiscal])then
      FDataModule.ACBrECF.CarregaFormasPagamento
    else
      FDataModule.ACBrECF.AchaFPGIndice('') ;  { for�a carregar, se ainda nao o fez }

    for i := 0 to FDataModule.ACBrECF.FormasPagamento.Count - 1 do
    begin
      CDSFormasPagamento.Append;
      //CDSFormasPagamento.FieldByName('ID').AsInteger := i+1;
      CDSFormasPagamento.FieldByName('CODIGO').AsString := FDataModule.ACBrECF.FormasPagamento[i].Indice;
      CDSFormasPagamento.FieldByName('DESCRICAO').AsString := FDataModule.ACBrECF.FormasPagamento[i].Descricao;
      if FDataModule.ACBrECF.FormasPagamento[i].PermiteVinculado then
        CDSFormasPagamento.FieldByName('IMPRIME_VINCULADO').AsString := 'S'
      else
        CDSFormasPagamento.FieldByName('IMPRIME_VINCULADO').AsString := 'N';
      CDSFormasPagamento.Post;
    end;
  end;
end;

procedure TFConfiguracao.SpeedButton5Click(Sender: TObject);
begin
  if CDSFormasPagamento.State in [DsEdit,DsInsert] then
    CDSFormasPagamento.Post;
  CDSFormasPagamento.ApplyUpdates(0);
  CDSFormasPagamento.Close;
  CDSFormasPagamento.Open;
end;

// como este form n�o tem um padr�o definido fiz outro padr�o...
procedure TFConfiguracao.PreparaConfiguracaoBalancaParaGravacao;   // Acrecentar
var ConfiguracaoBalanca,  DigitosUsadosCodigoBalanca, DigitosUsadosPrecoQtde, PesoOuValor  :string;
    TipoConfiguracao: integer;
begin

  TipoConfiguracao:=cmbTipoConfiguracaoBalanca.ItemIndex;

  case TipoConfiguracao of
    0: begin
      DigitosUsadosCodigoBalanca:='4';
      DigitosUsadosPrecoQtde:='6';
      PesoOuValor:='VALOR';
    end;
    1: begin
      DigitosUsadosCodigoBalanca:='4';
      DigitosUsadosPrecoQtde:='5';
      PesoOuValor:='PESO';
    end;
    2: begin
      DigitosUsadosCodigoBalanca:='5';
      DigitosUsadosPrecoQtde:='6';
      PesoOuValor:='VALOR';
    end;
    3: begin
      DigitosUsadosCodigoBalanca:='5';
      DigitosUsadosPrecoQtde:='5';
      PesoOuValor:='PESO';
    end;
    4: begin
      DigitosUsadosCodigoBalanca:='6';
      DigitosUsadosPrecoQtde:='5';
      PesoOuValor:='PESO';
    end;
  end;

  ConfiguracaoBalanca := IntToStr(cmbBalanca.ItemIndex)+'|'+
                         trim(cmbIdentificadorBalanca.Text)+'|'+
                         DigitosUsadosCodigoBalanca+'|'+
                         DigitosUsadosPrecoQtde+'|'+
                         PesoOuValor+'|'+
                         IntToStr(cmbHandShaking.ItemIndex)+'|'+
                         IntToStr(cmbParity.ItemIndex)+'|'+
                         IntToStr(cmbStopBits.ItemIndex)+'|'+
                         trim(cmbDataBits.Text)+'|'+
                         trim(cmbBaudRate.Text)+'|'+
                         trim(cmbPortaSerial.Text)+'|'+
                         trim(editTimeOut.Text)+'|'+
                         IntToStr(cmbTipoConfiguracaoBalanca.ItemIndex)+'|';


   CDSConfiguracao.Edit;
   DBEdit20.Text:=ConfiguracaoBalanca;

end;

procedure TFConfiguracao.CarregaEditsConfiguracaoBalanca;    // Acrecentar
var
  Linha:string;
  PosBarra: integer;

begin
  Linha:= DBEdit20.Text;

  if Length(linha)>10 then
  begin
    try
      cmbBalanca.ItemIndex := StrToInt(DevolveConteudoDelimitado('|',Linha));
      cmbIdentificadorBalanca.Text := DevolveConteudoDelimitado('|',Linha);
      DevolveConteudoDelimitado('|',Linha);
      DevolveConteudoDelimitado('|',Linha);
      DevolveConteudoDelimitado('|',Linha);
      cmbHandShaking.ItemIndex := StrToInt(DevolveConteudoDelimitado('|',Linha));
      cmbParity.ItemIndex := StrToInt(DevolveConteudoDelimitado('|',Linha));
      cmbStopBits.ItemIndex := StrToInt(DevolveConteudoDelimitado('|',Linha));
      cmbDataBits.ItemIndex := StrToInt(DevolveConteudoDelimitado('|',Linha));
      cmbBaudRate.ItemIndex := StrToInt(DevolveConteudoDelimitado('|',Linha));
      cmbPortaSerial.Text := DevolveConteudoDelimitado('|',Linha);
      editTimeOut.Text := DevolveConteudoDelimitado('|',Linha);
      cmbTipoConfiguracaoBalanca.ItemIndex := StrToInt(DevolveConteudoDelimitado('|',Linha));
    except
      cmbBalanca.ItemIndex := 0;
      exit;
    end;
  end else
  begin
    cmbBalanca.ItemIndex := 0;
  end;

end;

end.
