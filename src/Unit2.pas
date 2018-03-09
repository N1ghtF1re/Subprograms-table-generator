unit Unit2;
interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls,ComObj, pngimage,
  Vcl.ExtCtrls, Vcl.Menus, ShellAPI,SplashScreen, IdHTTP, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, NewVersion;

implementation
procedure magic(str: string; grid:Tstringgrid);
var position,k,j:Integer;
    currvar:string;
begin
   while(str[k] <> ')') do
        begin
          if str[k] = ':' then
          begin
            if Pos(str,';')<>0then
            position:=Pos(str,';')
            else
            position:=Length(str);
            //showmessage('lel');
            currvar := trim(Copy(str,1,k-1));
            Delete(str,1,position);
            grid.Cells[3,j] := grid.Cells[3,j] + currvar;
          end;
          inc(k);
        end;
end;
end.
