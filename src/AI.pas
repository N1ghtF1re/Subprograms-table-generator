unit AI;


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls;

  procedure AIVarDesc(var StringGrid1: TStringGrid; var j:integer; var shift:byte; var currvar:string);
  procedure AIProcDesc(var StringGrid1: TStringGrid;var j: integer; var curr:string);
implementation

procedure AIProcDesc(var StringGrid1: TStringGrid;var j: integer; var curr:string);
begin
if pos('CLICK', AnsiUpperCase(curr)) > 0 then
        StringGrid1.Cells[1,j] := '��������� �����';
      if pos('RESIZE', AnsiUpperCase(curr)) > 0 then
        StringGrid1.Cells[1,j] := '��������� ��������� �������';
      if pos('FORMCREATE', AnsiUpperCase(curr)) > 0 then
        StringGrid1.Cells[1,j] := '������� ��� �������� �����';
      if pos('MOUSE', AnsiUpperCase(curr)) > 0 then
        StringGrid1.Cells[1,j] := '��������� ������� ����';
      if ((pos('FILE', AnsiUpperCase(curr)) > 0)
          and
          (pos('READ', AnsiUpperCase(curr)) > 0)) then
         StringGrid1.Cells[1,j] := '������ �����';

      if ((pos('FILE', AnsiUpperCase(curr)) > 0)
          and
          (pos('SAVE', AnsiUpperCase(curr)) > 0)) then
         StringGrid1.Cells[1,j] := '���������� �����';

      if ((pos('LIST', AnsiUpperCase(curr)) > 0)
          and
          (pos('CREATE', AnsiUpperCase(curr)) > 0)) then
         StringGrid1.Cells[1,j] := '�������� ������';
      if ((pos('LIST', AnsiUpperCase(curr)) > 0)
          and
          (pos('INSERT', AnsiUpperCase(curr)) > 0)) then
         StringGrid1.Cells[1,j] := '�������� ������� � ������';
end;

procedure AIVarDesc(var StringGrid1: TStringGrid; var j:integer; var shift:byte; var currvar:string);
begin
if trim(AnsiLowerCase(currvar)) = 'sender' then
              StringGrid1.Cells[4,j + shift] := '������, ������� ������������ �������';
            if trim(AnsiLowerCase(currvar)) = 'name' then
              StringGrid1.Cells[4,j + shift] := '���'
            else if pos('name', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := '��������';

            if pos('head', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := '������';
            if pos('fio', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := '���';
            if pos('width', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := '������';
            if pos('height', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := '������';
            if (pos('temp', AnsiLowerCase(currvar)) > 0) or (pos('tmp', AnsiLowerCase(currvar)) > 0) then
              StringGrid1.Cells[4,j + shift] := '��������� ����������';
            if pos('curr', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := '������� ��������';
            if pos('flag', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := '����';
            if pos('col', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := '�������';
            if pos('row', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := '������';
            if pos('state', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := '������';
            if pos('action', AnsiLowerCase(currvar)) > 0 then
            StringGrid1.Cells[4,j + shift] := '�������';
            if (pos('grid', AnsiLowerCase(currvar)) > 0 ) or (pos('stringgrid', AnsiLowerCase(currvar))>0) then
            StringGrid1.Cells[4,j + shift] := '�������';

            if pos('rect', AnsiLowerCase(currvar)) > 0 then
            StringGrid1.Cells[4,j + shift] := '�������������';
            if (pos('inp', AnsiLowerCase(currvar))>0) or (pos('input', AnsiLowerCase(currvar)) > 0 )then
            StringGrid1.Cells[4,j + shift] := '����';
            if (pos('button', AnsiLowerCase(currvar))) or (pos('btn', AnsiLowerCase(currvar)))> 0 then
            StringGrid1.Cells[4,j + shift] := '������';
            if pos('min', AnsiLowerCase(currvar)) > 0 then
            StringGrid1.Cells[4,j + shift] := '�����������';
            if (pos('max', AnsiLowerCase(currvar)) > 0) then
            StringGrid1.Cells[4,j + shift] := '������������';
end;

end.
