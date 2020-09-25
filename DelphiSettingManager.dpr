program DelphiSettingManager;

{$R *.dres}

uses
  Forms,
  DelphiSettingRegistry in 'Source\DelphiSettingRegistry.pas',
  dmGlyphs in 'Source\dmGlyphs.pas' {dm_Glyphs: TDataModule},
  fAbout in 'Source\fAbout.pas' {frmAbout},
  fEditSetting in 'Source\fEditSetting.pas' {frmEditSetting},
  fMain in 'Source\fMain.pas' {frmMain},
  fNewSetting in 'Source\fNewSetting.pas' {frmNewSetting},
  fRenameSetting in 'Source\fRenameSetting.pas' {frmRenameSetting},
  frmSetting in 'Source\frmSetting.pas' {frmSettingList: TFrame},
  IntfObserver in 'Design Patterns\IntfObserver.pas',
  LoadSaveCustomSetting in 'Source\LoadSaveCustomSetting.pas',
  SettingCollection in 'Source\SettingCollection.pas',
  SettingPersistent in 'Source\SettingPersistent.pas',
  SettingTemplate in 'Source\SettingTemplate.pas',
  ShellUtilities in 'Source\ShellUtilities.pas',
  Subject in 'Design Patterns\Subject.pas',
  TreeViewController in 'Source\TreeViewController.pas',
  ValueNamesProvider in 'Source\ValueNamesProvider.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Delphi Setting Manager';
  Application.CreateForm(Tdm_Glyphs, dm_Glyphs);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
