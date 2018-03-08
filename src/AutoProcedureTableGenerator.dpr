program AutoProcedureTableGenerator;

uses
  Vcl.Forms,
  genTable in 'genTable.pas' {TableGenForm};
{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TTableGenForm, TableGenForm);
  Application.Run;
end.
