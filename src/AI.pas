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
        StringGrid1.Cells[1,j] := 'Обработка клика';
      if pos('RESIZE', AnsiUpperCase(curr)) > 0 then
        StringGrid1.Cells[1,j] := 'Обработка изменения размера';
      if pos('FORMCREATE', AnsiUpperCase(curr)) > 0 then
        StringGrid1.Cells[1,j] := 'Событие при создании формы';
      if pos('MOUSE', AnsiUpperCase(curr)) > 0 then
        StringGrid1.Cells[1,j] := 'Обработка нажатие мыши';
      if ((pos('FILE', AnsiUpperCase(curr)) > 0)
          and
          (pos('READ', AnsiUpperCase(curr)) > 0)) then
         StringGrid1.Cells[1,j] := 'Чтение файла';

      if ((pos('FILE', AnsiUpperCase(curr)) > 0)
          and
          (pos('SAVE', AnsiUpperCase(curr)) > 0)) then
         StringGrid1.Cells[1,j] := 'Сохранение файла';

      if ((pos('LIST', AnsiUpperCase(curr)) > 0)
          and
          (pos('CREATE', AnsiUpperCase(curr)) > 0)) then
         StringGrid1.Cells[1,j] := 'Создание списка';
      if ((pos('LIST', AnsiUpperCase(curr)) > 0)
          and
          (pos('INSERT', AnsiUpperCase(curr)) > 0)) then
         StringGrid1.Cells[1,j] := 'Вставить элемент в список';
end;

procedure AIVarDesc(var StringGrid1: TStringGrid; var j:integer; var shift:byte; var currvar:string);
begin
if trim(AnsiLowerCase(currvar)) = 'sender' then
              StringGrid1.Cells[4,j + shift] := 'Объект, который сгенерировал событие';
            if trim(AnsiLowerCase(currvar)) = 'name' then
              StringGrid1.Cells[4,j + shift] := 'Имя'
            else if pos('name', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := 'Название';

            if pos('head', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := 'Голова';
            if pos('fio', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := 'ФИО';
            if pos('width', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := 'Ширина';
            if pos('height', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := 'Высота';
            if (pos('temp', AnsiLowerCase(currvar)) > 0) or (pos('tmp', AnsiLowerCase(currvar)) > 0) then
              StringGrid1.Cells[4,j + shift] := 'Временная переменная';
            if pos('curr', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := 'Текущее значение';
            if pos('flag', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := 'Флаг';
            if pos('col', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := 'Колонка';
            if pos('row', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := 'Строка';
            if pos('state', AnsiLowerCase(currvar)) > 0 then
              StringGrid1.Cells[4,j + shift] := 'Статус';
            if pos('action', AnsiLowerCase(currvar)) > 0 then
            StringGrid1.Cells[4,j + shift] := 'событие';
            if (pos('grid', AnsiLowerCase(currvar)) > 0 ) or (pos('stringgrid', AnsiLowerCase(currvar))>0) then
            StringGrid1.Cells[4,j + shift] := 'таблица';

            if pos('rect', AnsiLowerCase(currvar)) > 0 then
            StringGrid1.Cells[4,j + shift] := 'прямоугольник';
            if (pos('inp', AnsiLowerCase(currvar))>0) or (pos('input', AnsiLowerCase(currvar)) > 0 )then
            StringGrid1.Cells[4,j + shift] := 'ввод';
            if (pos('button', AnsiLowerCase(currvar))) or (pos('btn', AnsiLowerCase(currvar)))> 0 then
            StringGrid1.Cells[4,j + shift] := 'кнопка';
            if pos('min', AnsiLowerCase(currvar)) > 0 then
            StringGrid1.Cells[4,j + shift] := 'минимальный';
            if (pos('max', AnsiLowerCase(currvar)) > 0) then
            StringGrid1.Cells[4,j + shift] := 'максимальный';
end;

end.
