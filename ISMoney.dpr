program ISMoney;

uses
  System.StartUpCopy,
  FMX.Forms,
  FormPrincipal in 'FormPrincipal.pas' {FrmPrincipal},
  Datamodule in 'Datamodule.pas' {dm: TDataModule},
  ISLib in '..\ISLib\ISLib.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;

  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.

