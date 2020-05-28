unit FormPrincipal;

interface

uses
  DB,
  ISLib,
  MultiDetailAppearanceU,

  Data.Bind.Components,
  Data.Bind.DBScope,
  Data.Bind.EngExt,

  FGX.ActionSheet,

  FMX.ActnList,
  FMX.Controls,
  FMX.Controls.Presentation,
  FMX.DateTimeCtrls,
  FMX.Dialogs,
  FMX.Edit,
  FMX.Forms,
  FMX.Graphics,
  FMX.ImgList,
  FMX.Layouts,
  FMX.ListBox,
  FMX.ListView,
  FMX.ListView.Adapters.Base,
  FMX.ListView.Appearances,
  FMX.ListView.Types,
  FMX.MediaLibrary.Actions,
  FMX.MultiView,
  FMX.Objects,
  FMX.Platform,
  FMX.StdActns,
  FMX.StdCtrls,
  FMX.TabControl,
  FMX.Types,
  FMX.virtualkeyboard,

  FireDAC.Stan.Param,

  Fmx.Bind.DBEngExt,
  Fmx.Bind.Editors,

  System.Actions,
  System.Bindings.Outputs,
  System.Classes,
  System.DateUtils,
  System.ImageList,
  System.Permissions,
  System.Rtti,
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Variants;

type
  TFrmPrincipal = class(TForm)
    TabControl: TTabControl;
    TabLogin: TTabItem;
    TabMain: TTabItem;
    TabLancamentos: TTabItem;
    RectLogin: TRectangle;
    Image1: TImage;
    Layout1: TLayout;
    Label1: TLabel;
    EdtEmail: TEdit;
    Label2: TLabel;
    EdtSenha: TEdit;
    btnAcessar: TButton;
    StyleBook1: TStyleBook;
    ActionList: TActionList;
    ActMain: TChangeTabAction;
    tlbMain: TToolBar;
    BtnMenu: TSpeedButton;
    Rectangle2: TRectangle;
    lbl_painel_saldo: TLabel;
    lbl_painel_saldogeral: TLabel;
    Layout2: TLayout;
    Layout3: TLayout;
    lbl_painel_rec: TLabel;
    lbl_painel_receitas: TLabel;
    Layout4: TLayout;
    lbl_painel_desp: TLabel;
    lbl_painel_despesas: TLabel;
    Layout5: TLayout;
    ImgReceita: TImage;
    ImgDespesa: TImage;
    MultiView: TMultiView;
    rctMtvLogo: TRectangle;
    imgMtvLogo: TImage;
    lstMenu: TListBox;
    item_menu_painel: TListBoxItem;
    item_menu_lanc: TListBoxItem;
    item_menu_cat: TListBoxItem;
    item_menu_perfil: TListBoxItem;
    item_menu_banco: TListBoxItem;
    lblSoftEVersao: TLabel;
    ToolBar2: TToolBar;
    SpeedButton1: TSpeedButton;
    Label10: TLabel;
    RectLancMes: TRectangle;
    lblData: TLabel;
    btn_voltar_mes: TSpeedButton;
    btn_prox_mes: TSpeedButton;
    RctLancBotton: TRectangle;
    Layout6: TLayout;
    lbl_tot_rec: TLabel;
    Label13: TLabel;
    Layout7: TLayout;
    lbl_tot_desp: TLabel;
    Label15: TLabel;
    ActLancamentos: TChangeTabAction;
    TabCategoria: TTabItem;
    tlbCategorias: TToolBar;
    Label16: TLabel;
    btnCategoriasVoltar: TSpeedButton;
    btnCategoriaAdicionar: TSpeedButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    TabCategoriaCad: TTabItem;
    ActCategoriaCad: TChangeTabAction;
    TlbCategoriaCad: TToolBar;
    lblCategoriaCadtitulo: TLabel;
    btn_CategoriaCad_Voltar: TSpeedButton;
    btn_CategoriaCad_Salvar: TSpeedButton;
    Label18: TLabel;
    EdtCategoria: TEdit;
    ActCategoria: TChangeTabAction;
    LinkControlToField1: TLinkControlToField;
    ListCategorias: TListView;
    LinkListControlToField1: TLinkListControlToField;
    Label17: TLabel;
    edtTipo: TEdit;
    LinkControlToField2: TLinkControlToField;
    Imglst: TImageList;
    imglst_btn: TImageList;
    ListLancamentos: TListView;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField4: TLinkListControlToField;
    btnExcluirCat: TSpeedButton;
    TabPerfil: TTabItem;
    ToolBar1: TToolBar;
    btn_perfil_voltar: TSpeedButton;
    Rectangle4: TRectangle;
    rect_foto: TRectangle;
    Label19: TLabel;
    ListBox2: TListBox;
    Item_IdiomaMoeda: TListBoxItem;
    item_senha: TListBoxItem;
    btn_senha: TButton;
    btn_Logout: TSpeedButton;
    ActPerfil: TChangeTabAction;
    TabIdioma: TTabItem;
    ToolBar4: TToolBar;
    Label20: TLabel;
    btnIdiomaVoltar: TSpeedButton;
    LstMoeda: TListBox;
    item_real: TListBoxItem;
    item_dolar: TListBoxItem;
    ToolBar5: TToolBar;
    Label21: TLabel;
    LstIdioma: TListBox;
    item_portugues: TListBoxItem;
    item_ingles: TListBoxItem;
    btnIdiomaSalvar: TSpeedButton;
    LancamentoCad: TTabItem;
    ToolBar6: TToolBar;
    Label22: TLabel;
    btn_cad_lanc_voltar: TSpeedButton;
    btn_cad_lanc_salvar: TSpeedButton;
    ListBox3: TListBox;
    ListBoxItem12: TListBoxItem;
    ListBoxItem13: TListBoxItem;
    ListBoxItem14: TListBoxItem;
    ListBoxItem15: TListBoxItem;
    ListBoxItem16: TListBoxItem;
    btn_cad_hoje: TButton;
    btn_cad_ontem: TButton;
    btn_cad_personalizar: TButton;
    edt_cad_valor: TEdit;
    cmb_cad_categoria: TComboBox;
    cmb_cad_banco: TComboBox;
    edt_cad_descricao: TEdit;
    ActIdioma: TChangeTabAction;
    ActLancamentoCad: TChangeTabAction;
    RectCadConta: TRectangle;
    btn_criar_conta: TButton;
    edt_nome_cad: TEdit;
    edt_senha_cad: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    edt_email_cad: TEdit;
    ToolBar7: TToolBar;
    Label3: TLabel;
    btn_canc_conta: TSpeedButton;
    Layout8: TLayout;
    ActLogin: TChangeTabAction;
    fgAction: TfgActionSheet;
    ActFoto: TTakePhotoFromCameraAction;
    ActFotoLib: TTakePhotoFromLibraryAction;
    Item_nome: TListBoxItem;
    btn_nome: TButton;
    edt_perfil_nome: TEdit;
    edt_perfil_senha: TEdit;
    rect_data: TRectangle;
    edt_cad_data: TDateEdit;
    LinkListControlToField2: TLinkListControlToField;
    BindSourceDB3: TBindSourceDB;
    LinkListControlToField3: TLinkListControlToField;
    btn_lanc_cad: TSpeedButton;
    fgActionCad: TfgActionSheet;
    fgActionSheet1: TfgActionSheet;
    btnCadExcluir: TSpeedButton;
    TabSplash: TTabItem;
    lytSplash: TLayout;
    rctSplash: TRectangle;
    Image3: TImage;
    tmrSplash: TTimer;
    ActBanco: TChangeTabAction;
    TabBanco: TTabItem;
    TabBancoCad: TTabItem;
    ActBancoCad: TChangeTabAction;
    ListBancos: TListView;
    tbrBancos: TToolBar;
    lblBancos: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    LinkListControlToField5: TLinkListControlToField;
    btnExcluirBanco: TSpeedButton;
    edtBanco: TEdit;
    edtAgencia: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    tlbBancoCad: TToolBar;
    Label6: TLabel;
    SpeedButton5: TSpeedButton;
    btnBancoCad_Salvar: TSpeedButton;
    Label7: TLabel;
    edtConta: TEdit;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    lblAppName: TLabel;
    procedure btnAcessarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure item_menu_lancClick(Sender: TObject);
    procedure ListCategoriaItemClick(const Sender: TCustomListBox;
      const Item: TListBoxItem);
    procedure btn_CategoriaCad_VoltarClick(Sender: TObject);
    procedure item_menu_catClick(Sender: TObject);
    procedure ListCategoriasItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btn_CategoriaCad_SalvarClick(Sender: TObject);
    procedure btnCategoriasVoltarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure btnCategoriaAdicionarClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure item_menu_bancoClick(Sender: TObject);
    procedure btnExcluirCatClick(Sender: TObject);
    procedure item_menu_perfilClick(Sender: TObject);
    procedure btn_voltar_mesClick(Sender: TObject);
    procedure btn_prox_mesClick(Sender: TObject);
    procedure btn_perfil_voltarClick(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure btn_criar_contaClick(Sender: TObject);
    procedure btn_canc_contaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_LogoutClick(Sender: TObject);
    procedure ActFotoDidFinishTaking(Image: TBitmap);
    procedure ActFotoLibDidFinishTaking(Image: TBitmap);
    procedure btn_nomeClick(Sender: TObject);
    procedure btn_senhaClick(Sender: TObject);
    procedure rect_fotoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure fgActionActions0Click(Sender: TObject);
    procedure fgActionActions1Click(Sender: TObject);
    procedure Item_IdiomaMoedaClick(Sender: TObject);
    procedure btnIdiomaVoltarClick(Sender: TObject);
    procedure item_portuguesClick(Sender: TObject);
    procedure item_inglesClick(Sender: TObject);
    procedure item_realClick(Sender: TObject);
    procedure item_dolarClick(Sender: TObject);
    procedure btnIdiomaSalvarClick(Sender: TObject);
    procedure btn_cad_hojeClick(Sender: TObject);
    procedure btn_cad_ontemClick(Sender: TObject);
    procedure btn_cad_personalizarClick(Sender: TObject);
    procedure ListLancamentosItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btn_cad_lanc_voltarClick(Sender: TObject);
    procedure btn_cad_lanc_salvarClick(Sender: TObject);
    procedure edt_cad_valorKeyDown(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure ImgReceitaClick(Sender: TObject);
    procedure ImgDespesaClick(Sender: TObject);
    procedure btn_lanc_cadClick(Sender: TObject);
    procedure btnCadExcluirClick(Sender: TObject);
    procedure tmrSplashTimer(Sender: TObject);
    procedure ListBancosItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure btnBancoCad_SalvarClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnExcluirBancoClick(Sender: TObject);

  private
//    procedure Lista_Lancementos(imes,iano : Integer);
    { Private declarations }
    {$IFDEF ANDROID}
    PermissaoCamera, PermissaoReadStorage, PermissaoWriteStorarage : String;
    procedure TakePicturePermissionRequestResult(
        Sender: TObject; const APermissions: TArray<string>;
        const AGrantResults: TArray<TPermissionStatus>);
    procedure DisplayMessageCamera(Sender: TObject;
                const APermissions: TArray<string>;
                const APostProc: TProc);
    procedure DisplayMessageLibrary(Sender: TObject;
                const APermissions: TArray<string>;
                const APostProc: TProc);
    procedure LibraryPermissionRequestResult(
        Sender: TObject; const APermissions: TArray<string>;
        const AGrantResults: TArray<TPermissionStatus>);

    {$ENDIF}
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;
  mes, ano : integer;
  Simb_moeda,moeda, idioma : String;
  Operacao : String;
const
  Versao : String='0.00.000';

implementation

{$R *.fmx}

uses Datamodule,
     FMX.DialogService
     {$IFDEF ANDROID}
     , Androidapi.Helpers, Androidapi.JNI.JavaTypes, Androidapi.JNI.Os
     {$ENDIF}
     ;



Procedure FormatarMoeda( Componente : TObject; var Key: Char );
var
   valor_str  : String;
   valor  : double;
begin

        if Componente is TEdit then
        begin
                // Se tecla pressionada é um numero, backspace ou delete...
                if  CharInSet(Key,['0'..'9', #8, #9] ) then
                begin
                         // Salva valor do edit...
                         valor_str := TEdit( Componente ).Text;

                         // Valida vazio...
                         if valor_str = EmptyStr then
                                valor_str := '0,00';

                         // Se valor numerico, insere na string...
                         if CharInSet(Key,['0'..'9']) then
                                valor_str := Concat( valor_str, Key ) ;

                         // Retira pontos e virgulas...
                         valor_str := Trim( StringReplace( valor_str, '.', '', [rfReplaceAll, rfIgnoreCase] ) ) ;
                         valor_str := Trim( StringReplace( valor_str, ',', '', [rfReplaceAll, rfIgnoreCase] ) ) ;

                         // Inserindo 2 casas decimais...
                         valor := StrToFloat( valor_str ) ;
                         valor := ( valor / 100 ) ;

                         // Retornando valor tratado ao edit...
                         TEdit( Componente ).Text := FormatFloat( '###,##0.00', valor ) ;

                         // Reposiciona cursor...
                         TEdit( Componente ).SelStart := Length( TEdit( Componente ).Text );
                end;

                // Se nao é key importante, reseta...
                if Not( CharInSet(Key,[#8, #9]) ) then
                        key := #0;
        end;

end;

procedure Calcula_Painel;
var
  saldo : Double;
begin

      // Soma as receitas e despesas
      dm.qry_geral.Active := false;
      dm.qry_geral.SQL.Clear;
      dm.qry_geral.SQL.Add('SELECT IFNULL(SUM(CASE WHEN TIPO_LANCAMENTO = ''C'' THEN VALOR ELSE 0 END), 0) AS VALOR_REC , ');
      dm.qry_geral.SQL.Add('       IFNULL(SUM(CASE WHEN TIPO_LANCAMENTO = ''D'' THEN VALOR ELSE 0 END), 0) AS VALOR_DESP ');
      dm.qry_geral.SQL.Add('FROM TAB_LANCAMENTO L');
      dm.qry_geral.SQL.Add('JOIN TAB_CATEGORIA C ON (C.ID_CATEGORIA = L.ID_CATEGORIA)');
      dm.qry_geral.SQL.Add('JOIN TAB_BANCO B ON ( B.ID_BANCO = L.ID_BANCO)');

      dm.qry_geral.SQL.Add('WHERE strftime(''%m'', L.DATA) = :MES');
      dm.qry_geral.SQL.Add('AND   strftime(''%Y'', L.DATA) = :ANO');

      dm.qry_geral.SQL.Add('ORDER BY L.ID_LANCAMENTO');

      dm.qry_geral.ParamByName('MES').Value := FormatFloat('00',MonthOf(now));
      dm.qry_geral.ParamByName('ANO').Value := FormatFloat('0000',YearOf(now));

      dm.qry_geral.Active := true;


      FrmPrincipal.lbl_painel_rec.Text   := Simb_moeda + FormatFloat('#,##0.00',dm.qry_geral.FieldByName('VALOR_REC').AsFloat);
      FrmPrincipal.lbl_painel_desp.Text  := Simb_moeda + FormatFloat('#,##0.00',dm.qry_geral.FieldByName('VALOR_DESP').AsFloat);

      Saldo := dm.qry_geral.FieldByName('VALOR_REC').AsFloat - dm.qry_geral.FieldByName('VALOR_DESP').AsFloat ;
      FrmPrincipal.lbl_painel_saldo.Text := Simb_moeda + FormatFloat('#,##0.00',Saldo);

      if saldo <0  then
          FrmPrincipal.lbl_painel_saldo.Text := '- ' + FrmPrincipal.lbl_painel_saldo.Text;

       dm.qry_geral.Active := false;


end;

procedure  Lista_Lancamentos(imes, iano : Integer);
var
  Smes, Sano : String;
begin

      //Converte o Mês e ano
      Smes := FormatFloat('00',imes);
      Sano := FormatFloat('0000',iano);
      try
          //Lista os Lançamentos
          dm.qry_lancamento.Active := false;
          dm.qry_lancamento.SQL.Clear;
          dm.qry_lancamento.SQL.Add('SELECT L.*, C.DESCRICAO AS CATEGORIA, B.NOME AS BANCO,');
          dm.qry_lancamento.SQL.Add('CASE WHEN L.TIPO_LANCAMENTO = ''C'' THEN 0 ELSE 1 END "ICONE::BIGINT" ');
          dm.qry_lancamento.SQL.Add('FROM TAB_LANCAMENTO L');
          dm.qry_lancamento.SQL.Add('JOIN TAB_CATEGORIA C ON (C.ID_CATEGORIA = L.ID_CATEGORIA)');
          dm.qry_lancamento.SQL.Add('JOIN TAB_BANCO B ON ( B.ID_BANCO = L.ID_BANCO)');

          dm.qry_lancamento.SQL.Add('WHERE strftime(''%m'', L.DATA) = :MES');
          dm.qry_lancamento.SQL.Add('AND   strftime(''%Y'', L.DATA) = :ANO');

          dm.qry_lancamento.SQL.Add('ORDER BY L.ID_LANCAMENTO');

          dm.qry_lancamento.ParamByName('MES').Value := Smes;
          dm.qry_lancamento.ParamByName('ANO').Value := Sano;

          dm.qry_lancamento.Active := true;

          //Acerta texto do Mês / Ano
           FrmPrincipal.lblData.Text := Nome_Mes(imes) + ' '+ Sano;
          // TODO: Idioma com problema.
          if IDIOMA='PORTUGUES' then FrmPrincipal.lblData.Text := Nome_Mes(imes) + ' '+ Sano;
          if IDIOMA='INGLES'    then FrmPrincipal.lblData.Text := Nome_Mes(imes,'ENG') + ' '+ Sano;
          if IDIOMA='ESPANHOL'  then FrmPrincipal.lblData.Text := Nome_Mes(imes,'ESP') + ' '+ Sano;

          // Soma as receitas e despesas
          dm.qry_geral.Active := false;
          dm.qry_geral.SQL.Clear;
          dm.qry_geral.SQL.Add('SELECT IFNULL(SUM(CASE WHEN TIPO_LANCAMENTO = ''C'' THEN VALOR ELSE 0 END), 0) AS VALOR_REC, ');
          dm.qry_geral.SQL.Add('       IFNULL(SUM(CASE WHEN TIPO_LANCAMENTO = ''D'' THEN VALOR ELSE 0 END), 0) AS VALOR_DESP ');
          dm.qry_geral.SQL.Add('FROM TAB_LANCAMENTO L');
          dm.qry_geral.SQL.Add('JOIN TAB_CATEGORIA C ON (C.ID_CATEGORIA = L.ID_CATEGORIA)');
          dm.qry_geral.SQL.Add('JOIN TAB_BANCO B ON ( B.ID_BANCO = L.ID_BANCO)');

          dm.qry_geral.SQL.Add('WHERE strftime(''%m'', L.DATA) = :MES');
          dm.qry_geral.SQL.Add('AND   strftime(''%Y'', L.DATA) = :ANO');

          dm.qry_geral.SQL.Add('ORDER BY L.ID_LANCAMENTO');

          dm.qry_geral.ParamByName('MES').Value := Smes;
          dm.qry_geral.ParamByName('ANO').Value := Sano;

          dm.qry_geral.Active := true;

          FrmPrincipal.lbl_tot_rec.Text  := Simb_moeda + FormatFloat('#,##0.00',dm.qry_geral.FieldByName('VALOR_REC').AsFloat);
          FrmPrincipal.lbl_tot_desp.Text := Simb_moeda + FormatFloat('#,##0.00',dm.qry_geral.FieldByName('VALOR_DESP').AsFloat);

           dm.qry_geral.Active := false;
      except
          FrmPrincipal.lbl_tot_rec.Text  := Simb_moeda + FormatFloat('#,##0.00',0);
          FrmPrincipal.lbl_tot_desp.Text := Simb_moeda + FormatFloat('#,##0.00',0);
      end;

end;

procedure TFrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
var
  FService : IFMXVirtualKeyboardService;
begin
  if (Key = vkHardwareBack) then
  begin
    TPlatformServices.Current.SupportsPlatformService(IFMXVirtualKeyboardService, IInterface(FService));
    if (FService <> nil) and (TVirtualKeyboardState.Visible in FService.VirtualKeyBoardState) then
    begin
      // Back button pressed, keyboard visible, so do nothing...;
    end
    else
      begin
        if MultiView.Visible = true  then
        begin
          // Se o Multview estiver visível, esconder.
          MultiView.Visible := false;
          Key := 0;

        end;

        if TabControl.ActiveTab = TabMain then
        begin
          // Saindo
          MessageDlg('Deseja realmente sair ?', System.UITypes.TMsgDlgType.mtConfirmation,
          [
            System.UITypes.TMsgDlgBtn.mbYes,
            System.UITypes.TMsgDlgBtn.mbNo
          ], 0,
          procedure(const AResult: System.UITypes.TModalResult)
          begin
            case AResult of
              mrYES:
                begin
                  Application.Terminate;
                end;
            end;
          end);


        end;

        if (TabControl.ActiveTab = TabCategoria)  or
           (TabControl.ActiveTab = TabLancamentos) or
           (TabControl.ActiveTab = TabPerfil)
         then
        begin
          // Voltando para a tab principal
          Calcula_painel;
          ActMain.ExecuteTarget(self);
          Key := 0;

        end;
        if TabControl.ActiveTab = TabCategoriaCad then
        begin
          // Voltando para a tab categoria
          btn_CategoriaCad_VoltarClick(self);
          Key := 0;

        end;
        if TabControl.ActiveTab = TabIdioma then
        begin
          // Voltando para a tab Perfil
          btnIdiomaVoltarClick(self);
          Key := 0;
        end;
        // Ignore(Cancel) button pressed


    end;
  end;
end;


procedure TFrmPrincipal.ActFotoDidFinishTaking(Image: TBitmap);
begin
      // Atualizar perfil do usuário
      rect_foto.Fill.Bitmap.Bitmap := Image;

      if not (dm.qry_perfil.State in dsEditModes) then
          dm.qry_perfil.Edit;
      dm.qry_perfil.FieldByName('FOTO').Assign(Image);
      dm.qry_perfil.Post;

end;

procedure TFrmPrincipal.ActFotoLibDidFinishTaking(Image: TBitmap);
begin
      // Atualizar perfil do usuário
      rect_foto.Fill.Bitmap.Bitmap := Image;
      if not (dm.qry_perfil.State in dsEditModes) then
          dm.qry_perfil.Edit;
      dm.qry_perfil.FieldByName('FOTO').Assign(Image);
      dm.qry_perfil.Post;

end;

procedure Trata_Moeda_Idioma();
begin
      dm.qry_perfil.Active := false;
      dm.qry_perfil.Active := true;

      moeda  := dm.qry_perfil.FieldByName('MOEDA').AsString;
      idioma := dm.qry_perfil.FieldByName('IDIOMA').AsString;

      if idioma = 'PORTUGUES' then
      begin
            FrmPrincipal.lbl_painel_despesas.Text   := 'DESPESAS';
            FrmPrincipal.lbl_painel_receitas.Text   := 'RECEITAS';
            FrmPrincipal.lbl_painel_saldogeral.Text := 'Saldo Geral';

            FrmPrincipal.item_menu_painel.Text      := 'PAINEL GERENCIAL';
            FrmPrincipal.item_menu_lanc.Text        := 'LANÇAMENTOS';
            FrmPrincipal.item_menu_cat.Text         := 'CATEGORIAS';
            FrmPrincipal.item_menu_banco.Text       := 'BANCOS';
            FrmPrincipal.item_menu_perfil.Text      := 'PERFIL';
      end;

      if idioma = 'INGLES' then
      begin
            FrmPrincipal.lbl_painel_despesas.Text   := 'PAYABLE';
            FrmPrincipal.lbl_painel_receitas.Text   := 'RECEIVABLE';
            FrmPrincipal.lbl_painel_saldogeral.Text := 'Balance';

            FrmPrincipal.item_menu_painel.Text      := 'DASHBOARD';
            FrmPrincipal.item_menu_lanc.Text        := 'FINANCIAL POSTINGS';
            FrmPrincipal.item_menu_cat.Text         := 'CATEGORIES';
            FrmPrincipal.item_menu_banco.Text       := 'ACCOUNTS';
            FrmPrincipal.item_menu_perfil.Text      := 'PROFILE';
      end;

      if moeda = 'REAL'  then simb_moeda :='R$ ';
      if moeda = 'DOLAR' then simb_moeda :='US$ ';

end;

procedure TFrmPrincipal.btnAcessarClick(Sender: TObject);
begin
      //Trata Login
      dm.qry_geral.Active := false;
      dm.qry_geral.SQL.Clear;
      dm.qry_geral.SQL.Add('select * from tab_config where email = :email and senha = :senha');

      dm.qry_geral.ParamByName('email').Value := EdtEmail.Text;
      dm.qry_geral.ParamByName('senha').Value := EdtSenha.Text;

      dm.qry_geral.Active := true;

      if dm.qry_geral.RecordCount = 0  then
      begin
            Showmessage ('Email ou senha inválidos !!');
            exit;
      end;

      //Atualiza informações de login
      dm.qry_geral.Active := false;
      dm.qry_geral.SQL.Clear;
      dm.qry_geral.SQL.Add('update tab_config set ind_login = ''S'' ');
      dm.qry_geral.ExecSQL;

      Trata_moeda_idioma();

      Calcula_Painel;
      ActMain.ExecuteTarget(self);
end;

procedure TFrmPrincipal.btnBancoCad_SalvarClick(Sender: TObject);
begin

      if EdtBanco.Text='' then
        begin
              ShowMessage('Informe o nome do Banco!');
              exit;
        end;

      if dm.qry_banco.State in dsEditModes then
      begin
          //Se for novo registro, calcular chave
          if operacao = 'I' then
          begin
              dm.qry_geral.Active := False;
              dm.qry_geral.SQL.Clear;
              dm.qry_geral.SQL.Add('SELECT IFNULL(MAX(ID_BANCO), 0) AS ID_BANCO FROM TAB_BANCO');
              dm.qry_geral.Active := True;

              dm.qry_Banco.FieldByName('ID_BANCO').Value := dm.qry_geral.FieldByName('ID_BANCO').AsInteger + 1;

          end;


          dm.qry_banco.Post;

      end;

      ActBanco.ExecuteTarget(sender);


end;

procedure TFrmPrincipal.btn_cad_hojeClick(Sender: TObject);
begin
         rect_data.Visible := false;
         btn_cad_hoje.TextSettings.FontColor         := $FF0C61A7;
         btn_cad_ontem.TextSettings.FontColor        := $FF060606;
         btn_cad_personalizar.TextSettings.FontColor := $FF060606;
         edt_cad_data.Date := date();
end;

procedure TFrmPrincipal.btn_cad_lanc_voltarClick(Sender: TObject);
begin
      if dm.qry_lancamento.State in dsEditModes then
          dm.qry_lancamento.Cancel;

      ActLancamentos.ExecuteTarget(sender);
end;

procedure TFrmPrincipal.btn_cad_ontemClick(Sender: TObject);
begin
         rect_data.Visible := false;
         btn_cad_ontem.TextSettings.FontColor        := $FF0C61A7;
         btn_cad_hoje.TextSettings.FontColor         := $FF060606;
         btn_cad_personalizar.TextSettings.FontColor := $FF060606;
         edt_cad_data.Date := date()-1;
end;

procedure TFrmPrincipal.btn_cad_personalizarClick(Sender: TObject);
begin
         rect_data.Visible := true;
//         edt_cad_data.Date := Date();
         btn_cad_personalizar.TextSettings.FontColor := $FF0C61A7;
         btn_cad_ontem.TextSettings.FontColor        := $FF060606;
         btn_cad_hoje.TextSettings.FontColor         := $FF060606;
end;

procedure TFrmPrincipal.btn_canc_contaClick(Sender: TObject);
begin
      RectCadConta.Visible := false ;
end;

procedure TFrmPrincipal.btn_CategoriaCad_SalvarClick(Sender: TObject);
begin

      if EdtCategoria.Text='' then
        begin
              ShowMessage('Informe o nome da categoria!');
              exit;
        end;
      if edtTipo.Text='' then
        begin
              ShowMessage('Informe o tipo da categoria!');
              exit;
        end else
      if (edtTipo.Text<>'D')and(edtTipo.Text<>'R') then
        begin
              ShowMessage('O tipo da categoria deve ser R ou D!');
              exit;
        end;

      if dm.qry_categoria.State in dsEditModes then
      begin
          //Se for novo registro, calcular chave
          if operacao = 'I' then
          begin
              dm.qry_geral.Active := False;
              dm.qry_geral.SQL.Clear;
              dm.qry_geral.SQL.Add('SELECT IFNULL(MAX(ID_CATEGORIA), 0) AS ID_CATEGORIA FROM TAB_CATEGORIA');
              dm.qry_geral.Active := True;

              dm.qry_categoria.FieldByName('ID_CATEGORIA').Value := dm.qry_geral.FieldByName('ID_CATEGORIA').AsInteger + 1;

          end;


          dm.qry_categoria.Post;

      end;

      ActCategoria.ExecuteTarget(sender);

end;

procedure TFrmPrincipal.btn_CategoriaCad_VoltarClick(Sender: TObject);
begin

      if dm.qry_categoria.State in dsEditModes then
          dm.qry_categoria.Cancel;

      ActCategoria.ExecuteTarget(Sender);

end;

procedure TFrmPrincipal.btn_criar_contaClick(Sender: TObject);
begin
      if edt_nome_cad.Text = '' then
      begin
            ShowMessage('Informe o nome !');
            exit;
      end;

      if edt_email_cad.Text = '' then
      begin
            ShowMessage('Informe o E-mail !');
            exit;
      end;

      if edt_senha_cad.Text = '' then
      begin
            ShowMessage('Informe a senha !');
            exit;
      end;

     // exclui o usuário se existir
     dm.qry_geral.Active := false;
     dm.qry_geral.SQL.Clear;
     dm.qry_geral.SQL.Add('delete from tab_config');
     dm.qry_geral.ExecSQL;

     // Insere novo usuário
     dm.qry_geral.Active := false;
     dm.qry_geral.SQL.Clear;
     dm.qry_geral.SQL.Add('insert into tab_config(email, senha, ind_login, nome, idioma, moeda)');
     dm.qry_geral.SQL.Add('values(:email, :senha, :ind_login, :nome, :idioma, :moeda)');
     dm.qry_geral.ParamByName('email').Value := edt_email_cad.Text;
     dm.qry_geral.ParamByName('senha').Value := edt_senha_cad.Text;
     dm.qry_geral.ParamByName('ind_login').Value := 'S';
     dm.qry_geral.ParamByName('nome').Value := edt_nome_cad.Text;
     dm.qry_geral.ParamByName('idioma').Value := 'PORTUGUES';
     dm.qry_geral.ParamByName('moeda').Value := 'REAL';
     dm.qry_geral.ExecSQL;

     Trata_moeda_Idioma();

{ TODO : Criar rotina para excluir lançamentos }
     Calcula_painel;
     ActMain.ExecuteTarget(sender);

end;

procedure TFrmPrincipal.btn_lanc_cadClick(Sender: TObject);
begin
      btnCadExcluir.Visible := False;
      fgActionCad.Show;
end;

procedure TFrmPrincipal.btn_LogoutClick(Sender: TObject);
begin
      // Faz logout do sistema
      dm.qry_geral.Active := false;
      dm.qry_geral.SQL.Clear;
      dm.qry_geral.SQL.Add('update tab_config set ind_login = ''N'' ');
      dm.qry_geral.ExecSQL;

      ActLogin.ExecuteTarget(sender);

end;

procedure TFrmPrincipal.btn_nomeClick(Sender: TObject);
begin
      if btn_nome.Text = 'Alterar'  then
      begin
            edt_perfil_nome.Visible := true;
            edt_perfil_nome.Text := item_nome.Text;
            btn_nome.Text := 'Salvar';
            item_nome.Text := '';
            edt_perfil_nome.SetFocus;
      end else
      begin
            edt_perfil_nome.Visible := false;
            btn_nome.Text := 'Alterar';
            item_nome.Text := edt_perfil_nome.Text;

            //Salva Nome na base
            if not (dm.qry_perfil.State in dsEditModes) then
                dm.qry_perfil.Edit;
            dm.qry_perfil.FieldByName('NOME').Value := edt_perfil_nome.Text;
            dm.qry_perfil.Post;

      end;
end;

procedure TFrmPrincipal.btn_prox_mesClick(Sender: TObject);
begin
     //Atualiza lista de lançamentos
      mes := mes + 1;
      if mes > 12 then
      begin
            mes := 1;
            ano := ano + 1;
      end;

      Lista_Lancamentos(mes,ano);
end;

procedure TFrmPrincipal.btn_senhaClick(Sender: TObject);
begin
      if btn_senha.Text = 'Alterar'  then
      begin
            edt_perfil_senha.Visible := true;
            edt_perfil_senha.Text := '';
            btn_senha.Text := 'Salvar';
            item_senha.Text := '';
            edt_perfil_senha.SetFocus;
      end else
      begin
            edt_perfil_senha.Visible := false;
            btn_senha.Text := 'Alterar';
            item_senha.Text := edt_perfil_senha.Text;

            //Salva Nome na base
            if not (dm.qry_perfil.State in dsEditModes) then
                dm.qry_perfil.Edit;
            dm.qry_perfil.FieldByName('SENHA').Value := edt_perfil_senha.Text;
            dm.qry_perfil.Post;

      end;
end;

procedure TFrmPrincipal.btn_voltar_mesClick(Sender: TObject);
begin
      //Atualiza lista de lançamentos
      mes := mes - 1;
      if mes = 0 then
      begin
            mes := 12;
            ano := ano - 1;
      end;

      Lista_Lancamentos(mes,ano);
end;

{$IFDEF ANDROID}

procedure TFrmPrincipal.DisplayMessageCamera(Sender: TObject;
                const APermissions: TArray<string>;
                const APostProc: TProc);
begin
        TDialogService.ShowMessage('O app precisa acessar a câmera e as fotos do seu dispositivo',
                procedure(const AResult: TModalResult)
                begin
                        APostProc;
                end);
end;

procedure TFrmPrincipal.DisplayMessageLibrary(Sender: TObject;
                const APermissions: TArray<string>;
                const APostProc: TProc);
begin
        TDialogService.ShowMessage('O app precisa acessar as fotos do seu dispositivo',
                procedure(const AResult: TModalResult)
                begin
                        APostProc;
                end);
end;
procedure TFrmPrincipal.edt_cad_valorKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
        FormatarMoeda(edt_cad_valor,KeyChar);
end;

procedure TFrmPrincipal.TakePicturePermissionRequestResult(
        Sender: TObject; const APermissions: TArray<string>;
        const AGrantResults: TArray<TPermissionStatus>);
begin
        // 3 Permissoes: CAMERA, READ_EXTERNAL_STORAGE e WRITE_EXTERNAL_STORAGE

        if (Length(AGrantResults) = 3) and
           (AGrantResults[0] = TPermissionStatus.Granted) and
           (AGrantResults[1] = TPermissionStatus.Granted) and
           (AGrantResults[2] = TPermissionStatus.Granted)
        then
             FrmPrincipal.ActFoto.Execute

        else
             TDialogService.ShowMessage('Você não tem permissão para tirar fotos');
end;
procedure TFrmPrincipal.tmrSplashTimer(Sender: TObject);
begin
      tmrSplash.Enabled := false;
      //Trata Login
      dm.qry_geral.Active := false;
      dm.qry_geral.SQL.Clear;
      dm.qry_geral.SQL.Add('select * from tab_config where ind_login = ''S'' ');
      dm.qry_geral.Active := true;

      if dm.qry_geral.RecordCount > 0  then
      begin
           Calcula_Painel;
           ActMain.ExecuteTarget(sender);
      end else
      begin
           TabControl.ActiveTab := TabLogin;
      end;
      // Abre Query Lançamentos
      Calcula_Painel();
      Lista_Lancamentos(mes,ano);

end;

procedure TFrmPrincipal.LibraryPermissionRequestResult(
        Sender: TObject; const APermissions: TArray<string>;
        const AGrantResults: TArray<TPermissionStatus>);
begin
        // 2 Permissoes: READ_EXTERNAL_STORAGE e WRITE_EXTERNAL_STORAGE

        if (Length(AGrantResults) = 2) and
           (AGrantResults[0] = TPermissionStatus.Granted) and
           (AGrantResults[1] = TPermissionStatus.Granted) then
                 FrmPrincipal.ActFotoLib.Execute
        else
                TDialogService.ShowMessage('Você não tem permissão para acessar as fotos');
end;


{$ENDIF}

procedure TFrmPrincipal.fgActionActions0Click(Sender: TObject);
begin
      {$IFDEF ANDROID}
      PermissionsService.RequestPermissions([PermissaoCamera,
                                             PermissaoReadStorage,
                                             PermissaoWriteStorarage ],
                                            TakePicturePermissionRequestResult,
                                            DisplayMessageCamera
                                           );
      {$ENDIF}

      {$IFDEF IOS}
        FrmPrincipal.ActFoto.Execute
      {$ENDIF}
end;

procedure TFrmPrincipal.fgActionActions1Click(Sender: TObject);
begin
      {$IFDEF ANDROID}
      PermissionsService.RequestPermissions([PermissaoReadStorage,
                                             PermissaoWriteStorarage ],
                                            LibraryPermissionRequestResult,
                                            DisplayMessageLibrary
                                           );
      {$ENDIF}

      {$IFDEF IOS}
        FrmPrincipal.ActFotoLib.Execute ;
      {$ENDIF}

end;

procedure TFrmPrincipal.FormActivate(Sender: TObject);
begin
    {$IFDEF ANDROID}
    PermissaoCamera          := JStringToString(TJManifest_permission.JavaClass.CAMERA);
    //PermissaoCamera := 'android.permission.CAMERA' ;  -Mesma coisa
    PermissaoReadStorage     := JStringToString(TJManifest_permission.JavaClass.READ_EXTERNAL_STORAGE);
    PermissaoWriteStorarage  := JStringToString(TJManifest_permission.JavaClass.WRITE_EXTERNAL_STORAGE);
    {$ENDIF}
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
      TabControl.ActiveTab   := TabSplash;
      TabControl.TabPosition := TTabPosition.None;

      //Seta Mes e ano corrente
      mes := MonthOf(now);
      ano := YearOf(now);

      //Mostra versão
      lblSoftEVersao.Text :='ISMoney by InnerSoft        Versão: '+Versao;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
{
      //Trata Login
      dm.qry_geral.Active := false;
      dm.qry_geral.SQL.Clear;
      dm.qry_geral.SQL.Add('select * from tab_config where ind_login = ''S'' ');
      dm.qry_geral.Active := true;

      if dm.qry_geral.RecordCount > 0  then
      begin
           Calcula_Painel;
           ActMain.ExecuteTarget(sender);
      end;
      // Abre Query Lançamentos
      Calcula_Painel();
      Lista_Lancamentos(mes,ano);
 }
end;

procedure TFrmPrincipal.ImgDespesaClick(Sender: TObject);
begin
      dm.qry_categoria.Active := false;
      dm.qry_banco.Active     := false;
      dm.qry_lancamento.Active:= false;

      dm.qry_banco.Active     := true;
      dm.qry_lancamento.Active:= true;

      //Limpa campos
      edt_cad_valor.Text := '';
      edt_cad_descricao.Text := '';
      edt_cad_data.Date := date();

      rect_data.Visible := false;
      btn_cad_personalizar.TextSettings.FontColor := $FF060606;
      btn_cad_ontem.TextSettings.FontColor        := $FF060606;
      btn_cad_hoje.TextSettings.FontColor         := $FF0C61A7;

      //Colocar em modo de edição
      dm.qry_lancamento.Append;
      operacao := 'I';
      btnCadExcluir.Visible := False;

      //TODO : Fazer filtro de categorias somente de débito
      dm.qry_categoria.SQL.Clear;
      dm.qry_categoria.SQL.Add('SELECT * FROM TAB_CATEGORIA C WHERE C.TIPO_CATEGORIA=''D''');
      dm.qry_categoria.Active := true;

      ActLancamentoCad.ExecuteTarget(Sender);
end;

procedure TFrmPrincipal.ImgReceitaClick(Sender: TObject);
begin
      dm.qry_categoria.Active := false;
      dm.qry_banco.Active     := false;
      dm.qry_lancamento.Active:= false;
      dm.qry_banco.Active     := true;
      dm.qry_lancamento.Active:= true;

      //Limpa campos
      edt_cad_valor.Text := '';
      edt_cad_descricao.Text := '';

      edt_cad_data.Date := date();
      rect_data.Visible := false;
      btn_cad_personalizar.TextSettings.FontColor := $FF060606;
      btn_cad_ontem.TextSettings.FontColor        := $FF060606;
      btn_cad_hoje.TextSettings.FontColor         := $FF0C61A7;

      //Colocar em modo de edição
      dm.qry_lancamento.Append;
      operacao := 'I';
      btnCadExcluir.Visible := False;

      //TODO : Fazer filtro de categorias somente de crédito
      dm.qry_categoria.SQL.Clear;
      dm.qry_categoria.SQL.Add('SELECT * FROM TAB_CATEGORIA C WHERE C.TIPO_CATEGORIA=''C''');
      dm.qry_categoria.Active := true;

      ActLancamentoCad.ExecuteTarget(Sender);

end;

procedure TFrmPrincipal.item_dolarClick(Sender: TObject);
begin
       item_Real.ItemData.Accessory   := Tlistboxitemdata.TAccessory.aNone;
       item_Dolar.ItemData.Accessory  := Tlistboxitemdata.TAccessory.aCheckmark;

end;

procedure TFrmPrincipal.item_inglesClick(Sender: TObject);
begin
       item_portugues.ItemData.Accessory := Tlistboxitemdata.TAccessory.aNone;
       item_ingles.ItemData.Accessory    := Tlistboxitemdata.TAccessory.aCheckmark;

end;

procedure TFrmPrincipal.item_portuguesClick(Sender: TObject);
begin
       item_portugues.ItemData.Accessory := Tlistboxitemdata.TAccessory.aCheckmark;
       item_ingles.ItemData.Accessory    := Tlistboxitemdata.TAccessory.aNone;

end;

procedure TFrmPrincipal.item_realClick(Sender: TObject);
begin
       item_Real.ItemData.Accessory   := Tlistboxitemdata.TAccessory.aCheckmark;
       item_Dolar.ItemData.Accessory  := Tlistboxitemdata.TAccessory.aNone;

end;

procedure TFrmPrincipal.Label9Click(Sender: TObject);
begin
       RectCadConta.Visible := true;
       edt_nome_cad.SetFocus;
end;

procedure TFrmPrincipal.item_menu_lancClick(Sender: TObject);
begin

      // Atualiza a lista de lançamentos
      Lista_Lancamentos(mes,ano);

      //Esconde o  Menu Multiview
      MultiView.HideMaster;

      //Abre a Tab de lançamentos
      ActLancamentos.ExecuteTarget(self);
end;


procedure TFrmPrincipal.item_menu_catClick(Sender: TObject);
begin

      // Atualiza a lista de categorias
      dm.qry_categoria.Active := false;
      dm.qry_categoria.SQL.Clear;
      dm.qry_categoria.SQL.Add('SELECT * FROM TAB_CATEGORIA');
      dm.qry_categoria.Active := true;

      //Esconde o  Menu Multiview
      MultiView.HideMaster;

      //Abre a tab de categorias
      ActCategoria.ExecuteTarget(sender);
end;

procedure TFrmPrincipal.item_menu_perfilClick(Sender: TObject);
Var
    img : TStream;
begin

      //Esconde o  Menu Multiview
      MultiView.HideMaster;

      // Busca dados do usuário
      dm.qry_perfil.Active := false;
      dm.qry_perfil.Active := true;

      if dm.qry_perfil.FieldValues['FOTO'] <> null  then
      begin
           img := dm.qry_perfil.CreateBlobStream(dm.qry_perfil.FieldByName('FOTO'),TblobStreamMode.bmRead);
           rect_foto.Fill.Bitmap.Bitmap.LoadFromStream(img);
      end;

      //Tratamento de nome e senha
      btn_nome.Text   := 'Alterar';
      btn_senha.Text  := 'Alterar';
      item_nome.Text  := dm.qry_perfil.FieldByName('NOME').AsString;
      item_senha.Text := 'Alterar Senha';
      edt_perfil_nome.Visible  := false;
      edt_perfil_senha.Visible := false;

      //Abre a tab de Perfil
      ActPerfil.ExecuteTarget(Sender);

end;

procedure TFrmPrincipal.Item_IdiomaMoedaClick(Sender: TObject);
begin
       //Tratar idioma
       item_portugues.ItemData.Accessory := Tlistboxitemdata.TAccessory.aNone;
       item_ingles.ItemData.Accessory    := Tlistboxitemdata.TAccessory.aNone;
       if dm.qry_perfil.FieldByName('IDIOMA').AsString = 'INGLES' then
            item_ingles.ItemData.Accessory    := Tlistboxitemdata.TAccessory.aCheckmark
       else
            item_portugues.ItemData.Accessory := Tlistboxitemdata.TAccessory.aCheckmark;

       //Tratar moeda
       item_Real.ItemData.Accessory   := Tlistboxitemdata.TAccessory.aNone;
       item_Dolar.ItemData.Accessory  := Tlistboxitemdata.TAccessory.aNone;
       if dm.qry_perfil.FieldByName('MOEDA').AsString = 'DOLAR' then
            item_Dolar.ItemData.Accessory    := Tlistboxitemdata.TAccessory.aCheckmark
       else
            item_Real.ItemData.Accessory := Tlistboxitemdata.TAccessory.aCheckmark;


       ActIdioma.ExecuteTarget(Sender);
end;

procedure TFrmPrincipal.item_menu_bancoClick(Sender: TObject);
begin
     // Atualiza a lista de lançamentos
      dm.qry_banco.Active := false;
      dm.qry_banco.Active := true;

      //Esconde o  Menu Multiview
      MultiView.HideMaster;

      //Abre a Tab de lançamentos
      ActBanco.ExecuteTarget(self);
end;

procedure TFrmPrincipal.rect_fotoClick(Sender: TObject);
begin
      fgAction.Show;
end;

procedure TFrmPrincipal.ListBancosItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
      dm.qry_Banco.Edit;
      operacao := 'A';

      FrmPrincipal.btnExcluirBanco.Visible := True;

      ActBancoCad.ExecuteTarget(sender);
      EdtBanco.SetFocus;

end;

procedure TFrmPrincipal.ListCategoriaItemClick(const Sender: TCustomListBox;
  const Item: TListBoxItem);
begin
      dm.qry_categoria.Edit;

      FrmPrincipal.btnExcluirCat.Visible := True;
      ActCategoriaCad.ExecuteTarget(sender);
      EdtCategoria.SetFocus;
end;

procedure TFrmPrincipal.ListCategoriasItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
      dm.qry_categoria.Edit;
      operacao := 'A';

      FrmPrincipal.btnExcluirCat.Visible := True;

      ActCategoriaCad.ExecuteTarget(sender);
      EdtCategoria.SetFocus;
end;

procedure TFrmPrincipal.ListLancamentosItemClick(const Sender: TObject;
  const AItem: TListViewItem);

  var
      x : Integer;
begin
      dm.qry_categoria.Active := false;
      dm.qry_banco.Active     := false;
      dm.qry_categoria.Active := true;
      dm.qry_banco.Active     := true;

      //Preenche o valor
      edt_cad_valor.Text := FormatFloat('#,##0.00', dm.qry_lancamento.FieldByName('VALOR').AsFloat);

      //Preenche a categoria
      for x := 1 to dm.qry_categoria.RecordCount do
      begin
        if dm.qry_categoria.FieldByName('DESCRICAO').AsString = dm.qry_lancamento.FieldByName('CATEGORIA').AsString then
            break;

        dm.qry_categoria.Next
      end;

      //Preenche o banco
      for x := 1 to dm.qry_banco.RecordCount do
      begin
        if dm.qry_banco.FieldByName('NOME').AsString = dm.qry_lancamento.FieldByName('BANCO').AsString then
            break;

        dm.qry_banco.Next
      end;

      //Preenche a descrição
      edt_cad_descricao.Text := dm.qry_lancamento.FieldByName('DESCRICAO').AsString;

      //Preenche a data
      edt_cad_data.Date := dm.qry_lancamento.FieldByName('DATA').AsDateTime;

      rect_data.Visible := true;
      btn_cad_personalizar.TextSettings.FontColor := $FF0C61A7;
      btn_cad_ontem.TextSettings.FontColor        := $FF060606;
      btn_cad_hoje.TextSettings.FontColor         := $FF060606;

      //Colocar em modo de edição
      btnCadExcluir.Visible := True;
      operacao := 'A';
      dm.qry_lancamento.Edit;
      ActLancamentoCad.ExecuteTarget(Sender);

end;

procedure TFrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
    Calcula_Painel ;
    ActMain.ExecuteTarget(sender);
end;

procedure TFrmPrincipal.SpeedButton3Click(Sender: TObject);
begin
      dm.qry_Banco.Append;
      operacao := 'I';

      FrmPrincipal.btnExcluirBanco.Visible := False;
      ActBancoCad.ExecuteTarget(sender);
      EdtBanco.SetFocus;

end;

procedure TFrmPrincipal.btn_cad_lanc_salvarClick(Sender: TObject);
begin

      if edt_cad_valor.Text = '' then
      begin
          ShowMessage ('O campo VALOR deve estar preenchido!');
          exit;
      end;

      //salva dados na base
      if dm.qry_lancamento.State in dsEditModes then
      begin

                //Se for novo registro, calcular chave
          if operacao = 'I' then
          begin
              dm.qry_geral.Active := False;
              dm.qry_geral.SQL.Clear;
              dm.qry_geral.SQL.Add('SELECT IFNULL(MAX(ID_LANCAMENTO), 0) AS ID_LANCAMENTO FROM TAB_LANCAMENTO');
              dm.qry_geral.Active := True;

              dm.qry_lancamento.FieldByName('ID_LANCAMENTO').Value := dm.qry_geral.FieldByName('ID_LANCAMENTO').AsInteger + 1;

          end;

          dm.qry_lancamento.FieldByName('VALOR').Value           :=  StringReplace(edt_cad_valor.Text,'.','',[rfReplaceAll]);
          dm.qry_lancamento.FieldByName('ID_CATEGORIA').Value    :=  dm.qry_categoria.FieldByName('ID_CATEGORIA').AsInteger ;
          dm.qry_lancamento.FieldByName('ID_BANCO').Value        :=  dm.qry_banco.FieldByName('ID_BANCO').AsInteger ;
          dm.qry_lancamento.FieldByName('DESCRICAO').Value       :=  edt_cad_descricao.Text;
          dm.qry_lancamento.FieldByName('DATA').Value            :=  edt_cad_data.Date;
          dm.qry_lancamento.FieldByName('TIPO_LANCAMENTO').Value :=  dm.qry_categoria.FieldByName('TIPO_CATEGORIA').AsString ;
          dm.qry_lancamento.Post;
      end;

      Lista_Lancamentos(mes,ano);
      Calcula_Painel();

      ActLancamentos.ExecuteTarget(sender);

end;

procedure TFrmPrincipal.btn_perfil_voltarClick(Sender: TObject);
begin
      Calcula_Painel;
      ActMain.ExecuteTarget(sender);
end;

procedure TFrmPrincipal.btnCadExcluirClick(Sender: TObject);
begin
    MessageDlg('Confirma exclusão?', System.UITypes.TMsgDlgType.mtConfirmation,
    [
      System.UITypes.TMsgDlgBtn.mbYes,
      System.UITypes.TMsgDlgBtn.mbNo
    ], 0,
    procedure(const AResult: System.UITypes.TModalResult)
    begin
      case AResult of
        mrYES:
          begin
                dm.qry_Lancamento.Delete;

                Lista_Lancamentos(mes,ano);
                Calcula_Painel();

                ActLancamentos.ExecuteTarget(sender);
          end;
      end;
    end);

end;

procedure TFrmPrincipal.btnCategoriaAdicionarClick(Sender: TObject);
begin
      dm.qry_categoria.Append;
      operacao := 'I';

      FrmPrincipal.btnExcluirCat.Visible := False;
      ActCategoriaCad.ExecuteTarget(sender);
      EdtCategoria.SetFocus;

end;

procedure TFrmPrincipal.btnCategoriasVoltarClick(Sender: TObject);
begin

      ActMain.ExecuteTarget(sender);
end;

procedure TFrmPrincipal.btnExcluirBancoClick(Sender: TObject);
begin
    MessageDlg('Confirma exclusão?', System.UITypes.TMsgDlgType.mtConfirmation,
    [
      System.UITypes.TMsgDlgBtn.mbYes,
      System.UITypes.TMsgDlgBtn.mbNo
    ], 0,
    procedure(const AResult: System.UITypes.TModalResult)
    begin
      case AResult of
        mrYES:
          begin
                dm.qry_banco.Delete;
                ActBanco.ExecuteTarget(sender);
          end;
      end;
    end);

end;

procedure TFrmPrincipal.btnExcluirCatClick(Sender: TObject);
begin
        MessageDlg('Confirma exclusão?', System.UITypes.TMsgDlgType.mtConfirmation,
    [
      System.UITypes.TMsgDlgBtn.mbYes,
      System.UITypes.TMsgDlgBtn.mbNo
    ], 0,
    procedure(const AResult: System.UITypes.TModalResult)
    begin
      case AResult of
        mrYES:
          begin
                dm.qry_categoria.Delete;
                ActCategoria.ExecuteTarget(sender);
          end;
      end;
    end);
end;

procedure TFrmPrincipal.btnIdiomaSalvarClick(Sender: TObject);
begin
      //Salva Idioma e moeda na base
      if not (dm.qry_perfil.State in dsEditModes) then
             dm.qry_perfil.Edit;

      if item_portugues.ItemData.Accessory = TListBoxitemdata.TAccessory.aCheckmark then
         dm.qry_perfil.FieldByName('IDIOMA').Value := 'PORTUGUES'
      else
         dm.qry_perfil.FieldByName('IDIOMA').Value := 'INGLES';

      if item_Real.ItemData.Accessory = TListBoxitemdata.TAccessory.aCheckmark then
         dm.qry_perfil.FieldByName('MOEDA').Value := 'REAL'
      else
         dm.qry_perfil.FieldByName('MOEDA').Value := 'DOLAR';

     dm.qry_perfil.Post;

     //Trata lingua e moeda do aplicativo

     Trata_Moeda_Idioma();
     ActPerfil.ExecuteTarget(sender);

end;

procedure TFrmPrincipal.btnIdiomaVoltarClick(Sender: TObject);
begin
      ActPerfil.ExecuteTarget(Sender);
end;

end.
