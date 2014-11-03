program JazService;

uses
  Vcl.Forms,
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
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'JazService';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
