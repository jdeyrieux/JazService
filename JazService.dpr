program JazService;

uses
  Vcl.Forms,
  SysUtils,
  Windows,
  fJzAbout in 'fJzAbout.pas' {AboutDiag},
  fJzHtmlWindow in 'fJzHtmlWindow.pas' {HtmlWindow},
  fJzMain in 'fJzMain.pas' {MainForm},
  uJzCmnFunc in 'uJzCmnFunc.pas',
  uJzConfig in 'uJzConfig.pas',
  uJzMsgs in 'uJzMsgs.pas',
  uJzSrvCtrl in 'uJzSrvCtrl.pas',
  uJzStruct in 'uJzStruct.pas';

{$R *.res}

begin
  { Do some command-line parameter handling first }
  if FindCmdLineSwitch('quit', ['-'], True) then
  begin
    KillInstance(FindCmdSwitch('-id='));
    Exit;
  end;

  { Start it up! }
  Application.Initialize;
  Application.MainFormOnTaskbar := False;
  Application.Title := 'JazService Tray Menu';
  Application.CreateForm(TMainForm, MainForm);
  Application.ShowMainForm := False;
  ShowWindow(Application.Handle, SW_HIDE);
  Application.Run;
end.
