unit NewVersion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,Winapi.ShellAPI,IdHTTP,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient;

type
  TFormVers = class(TForm)
    pnl1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btnDL: TButton;
    lbCurrVersion: TLabel;
    lbNewVersion: TLabel;
    mmoChangelog: TMemo;
    IdHTTP1: TIdHTTP;
    procedure FormCreate(Sender: TObject);
    procedure btnDLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVers: TFormVers;
  Changelog:string;

implementation

{$R *.dfm}
uses genTable;

procedure TFormVers.btnDLClick(Sender: TObject);
begin
  ShellExecute(Application.Handle, nil, 'https://brakhmen.info/download.php?file=subprogtablegen', nil, nil,SW_SHOWNOACTIVATE);
end;

procedure TFormVers.FormCreate(Sender: TObject);
begin
  Changelog := IDHttp1.Get('http://pankratiew.info/TPG_changelog.brakh');
  lbCurrVersion.Caption := TableGenForm.version;
  lbNewVersion.Caption := TableGenForm.HTMLtext;
  mmoChangelog.Lines.Add('Изменения: ');
  mmoChangelog.Lines.Add(Changelog);
end;

end.
